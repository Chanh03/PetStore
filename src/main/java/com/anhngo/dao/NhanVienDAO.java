package com.anhngo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anhngo.entity.NhanVienEntity;

public interface NhanVienDAO extends JpaRepository<NhanVienEntity, Integer> {

}
