package com.anhngo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.anhngo.entity.GioHangEntity;

public interface GioHangDAO extends JpaRepository<GioHangEntity, Integer> {

}
