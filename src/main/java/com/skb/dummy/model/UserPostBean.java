package com.skb.dummy.model;

import java.time.LocalDate;

import javax.validation.constraints.Size;

public class UserPostBean {

	private int id;
	
	@Size(min=10 , message="Please enter at least 10 character")
	private String description;
	private String userName;
	private LocalDate postedDate;

	public UserPostBean() {
		super();
	}

	public UserPostBean(int id, String description, String userName, LocalDate postedDate) {
		super();
		this.id = id;
		this.description = description;
		this.userName = userName;
		this.postedDate = postedDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public LocalDate getPostedDate() {
		return postedDate;
	}

	public void setPostedDate(LocalDate postedDate) {
		this.postedDate = postedDate;
	}

	@Override
	public String toString() {
		return "UserPostBean [id=" + id + ", description=" + description + ", userName=" + userName + ", postedDate="
				+ postedDate + "]";
	}

}
