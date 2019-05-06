package com.skb.dummy.service;

import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;
import com.skb.dummy.entity.UserPost;
import com.skb.dummy.repository.UserPostRepository;

@Repository
@Transactional
public class UserPostDAOService {
	
	@Autowired
	UserPostRepository repository;

	public List<UserPost> getUserPosts() {
		List<UserPost> userPostList = repository.findAll();
		return userPostList;
	}

	public void addUserPost(UserPost ub) {
		ub.setUsername(getLoggedInUserName());
		repository.save(ub);

	}

	public void deleteUserPost(int id) {
		repository.deleteById(id);
	}

	public Optional<UserPost> retrievePostById(int id) {
		Optional<UserPost> up = repository.findById(id);
		return up;
	}

	public void editPost(UserPost ub) {
		ub.setUsername(getLoggedInUserName());
		repository.save(ub);

	}
	
	public String getLoggedInUserName() {
		String name = "", password = "";
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			name = ((UserDetails)principal).getUsername();
			password = ((UserDetails)principal).getPassword();

		}
		return name;

	}

}
