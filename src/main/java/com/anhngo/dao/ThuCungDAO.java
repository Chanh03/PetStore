package com.anhngo.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.anhngo.entity.ThuCungEntity;

public interface ThuCungDAO extends JpaRepository<ThuCungEntity, Integer> {
	Page<ThuCungEntity> findAll(Pageable pageable);
}
