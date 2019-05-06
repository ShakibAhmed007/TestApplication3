package com.skb.dummy.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name="user_post_details")
public class UserPost {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="post_details")
	private String postDetails;
	
	@Column(name="location")
	private String location;
	
	@Column(name="date")
	private String date;
	
	@Column(name="username")
	private String username;
	
	@Column(name="category")
	private String category;
	
	@Column(name="experience")
	private String experience;
	
	@Column(name="contact_number")
	private String contactNumber;
	
	public UserPost() {
		super();
	}

	public UserPost(int id, String postDetails, String location, String date, String username, String category,
			String experience, String contactNumber) {
		super();
		this.id = id;
		this.postDetails = postDetails;
		this.location = location;
		this.date = date;
		this.username = username;
		this.category = category;
		this.experience = experience;
		this.contactNumber = contactNumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPostDetails() {
		return postDetails;
	}

	public void setPostDetails(String postDetails) {
		this.postDetails = postDetails;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	@Override
	public String toString() {
		return "UserPost [id=" + id + ", postDetails=" + postDetails + ", location=" + location + ", date=" + date
				+ ", username=" + username + ", category=" + category + ", experience=" + experience
				+ ", contactNumber=" + contactNumber + "]";
	}

	

}
