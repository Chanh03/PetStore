package com.anhngo.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.anhngo.entity.ThuCungEntity;

public interface ThuCungDAO extends JpaRepository<ThuCungEntity, Integer> {
	Page<ThuCungEntity> findAll(Pageable pageable);

	@Query("SELECT t FROM ThuCungEntity t WHERE " + "(:ten IS NULL OR t.tenThuCung LIKE %:ten%) AND "
			+ "(:loai IS NULL OR t.loai LIKE %:loai%)")
	Page<ThuCungEntity> findWithFilters(@Param("ten") String ten, @Param("loai") String loai, Pageable pageable);

	@Query(value = "SELECT DISTINCT loai FROM thucung", nativeQuery = true)
	List<String> loaiList();
}
