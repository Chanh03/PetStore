package com.anhngo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anhngo.entity.KhachHangEntity;

public interface KhachHangDAO extends JpaRepository<KhachHangEntity, Integer> {

}
