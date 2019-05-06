package com.skb.dummy.controller;

import java.time.LocalDate;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.skb.dummy.entity.UserPost;
import com.skb.dummy.service.UserPostDAOService;

@Controller
@SessionAttributes("name")
public class UserPostController {

	@Autowired
	UserPostDAOService userPostService;

//	This section is added by nz------//
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String getIndexPage(ModelMap model) {
		model.put("name", getLoggedInUserName(model));

		return "index";
	}
	
	@RequestMapping(value = "//user-home-page", method = RequestMethod.GET)
	public String getUserHomePage(ModelMap model) {
		model.put("name", getLoggedInUserName(model));

		return "userhomepage";
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String getRegisterPage(ModelMap model) {
		model.put("name", getLoggedInUserName(model));

		return "registration";
	}
	
	@RequestMapping(value = "/user-login", method = RequestMethod.GET)
	public String getLoginPage(ModelMap model) {
		model.put("name", getLoggedInUserName(model));

		return "user-login";
	}

//	end-----------------------------------------//
	
	
	@RequestMapping(value = "/list-posts", method = RequestMethod.GET)
	public String getUserPostPage(ModelMap model) {
		model.put("name", getLoggedInUserName(model));
		model.put("userPosts", userPostService.getUserPosts());

		return "list-posts";
	}

	private String getLoggedInUserName(ModelMap model) {
		return (String) model.get("name");
	}

	@RequestMapping(value = "/add-posts", method = RequestMethod.GET)
	public String addUserPostPage(ModelMap model) {
		model.put("name", getLoggedInUserName(model));
		model.put("userPost", new UserPost());
		return "add-posts";
	}

	@RequestMapping(value = "/add-post", method = RequestMethod.POST)
	public String addUserPost(ModelMap model, @Valid UserPost ub, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "add-posts";
		} else {
			ub.setDate(LocalDate.now().toString());
			ub.setUsername("Shakib Ahmed");
			userPostService.addUserPost(ub);
			return "redirect:/list-posts";
		}
	}

	@RequestMapping(value = "/delete-post", method = RequestMethod.GET)
	public String deleteUserPost(ModelMap model, @RequestParam int id) {
		userPostService.deleteUserPost(id);
		model.put("name", getLoggedInUserName(model));
		return "redirect:/list-posts";
	}
	
	@RequestMapping(value = "/update-post", method = RequestMethod.GET)
	public String updateUserPost(ModelMap model, @RequestParam int id) {
		Optional<UserPost> ub = userPostService.retrievePostById(id);
		model.put("userPostBean", ub);
		model.put("name", getLoggedInUserName(model));
		return "edit-posts";
	}
	
	@RequestMapping(value = "/edit-post", method = RequestMethod.POST)
	public String editUserPost(ModelMap model, @Valid UserPost ub) {
		userPostService.editPost(ub);
		return "redirect:/list-posts";
	}
	
	@RequestMapping(value = "/my-post", method = RequestMethod.GET)
	public String getMyPostPage(ModelMap model) {
		model.put("name", getLoggedInUserName(model));
		model.put("userPosts", userPostService.getUserPosts());
		return "my-posts";
	}
	

}
