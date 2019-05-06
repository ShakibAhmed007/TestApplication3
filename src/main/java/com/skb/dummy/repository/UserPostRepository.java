package com.skb.dummy.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.skb.dummy.entity.UserPost;

public interface UserPostRepository extends JpaRepository<UserPost, Integer> {

	@Query(value = "SELECT u.date,COUNT(*) AS number FROM user_post_details u GROUP BY u.date", nativeQuery = true)
	List<String> getReportByDate();
	
	@Query(value = "SELECT u.location,COUNT(*) FROM `user_post_details` u GROUP BY u.location;", nativeQuery = true)
	List<String> getReportByDivision();

}
