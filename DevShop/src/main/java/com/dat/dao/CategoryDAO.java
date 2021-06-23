package com.dat.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import com.dat.entity.*;

public interface CategoryDAO extends JpaRepository<Category, String>{
}
