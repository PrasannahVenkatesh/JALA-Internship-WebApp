package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entity.StudentEntity;

public interface StudentDAO extends JpaRepository<StudentEntity,Integer>{
	
	@Query("select s from StudentEntity s where UPPER(s.firstName)=UPPER(?1) or UPPER(s.lastName)=UPPER(?1) or UPPER(s.mobileNumber)=UPPER(?1)")
	public List<StudentEntity> findBySearch(String value);

}
