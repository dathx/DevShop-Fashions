package com.dat.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dat.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String>{
}
