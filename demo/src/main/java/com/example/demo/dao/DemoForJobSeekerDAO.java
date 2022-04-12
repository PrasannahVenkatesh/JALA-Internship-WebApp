package com.example.demo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.DemoForJobSeekerEntity;


/*
 * DAO Interface is for performing various operation and mandatory function like save,delete are done by extending JpaRepository.
 * We can also add our user specific operation as shown below using Query. 
 */

@Repository
@Transactional
public interface DemoForJobSeekerDAO extends JpaRepository<DemoForJobSeekerEntity,Integer>{
	
	@Query("select s from DemoForJobSeekerEntity s where s.jobseekerId=?2 and (UPPER(s.firstName)=UPPER(?1) or UPPER(s.lastName)=UPPER(?1) or UPPER(s.mobileNumber)=UPPER(?1))")
	public List<DemoForJobSeekerEntity> findBySearch(String value,int id);
	
	@Query("select s from DemoForJobSeekerEntity s where s.mobileNumber=?1")
	public DemoForJobSeekerEntity checkJobSeeker(String phonenumber);
	
	@Query("select s from DemoForJobSeekerEntity s where s.jobseekerId=?1")
	public List<DemoForJobSeekerEntity> findallrecords(int id);
	
	@Query("select s from DemoForJobSeekerEntity s where s.jobseekerId=?1")
	public Page<DemoForJobSeekerEntity> findallpage(int id,Pageable page);
	
	@Query("select max(s.rollNo) from DemoForJobSeekerEntity s where s.jobseekerId=?1")
	public int findmaxrollno(int id);

}
