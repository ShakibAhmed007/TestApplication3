package com.skb.dummy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.skb.dummy.service.LoginService;

@Controller
@SessionAttributes("name")
public class LoginController {

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getLoginPage(ModelMap model) {
		model.put("username", getLoggedInUserName());
		return "userhomepage";
	}

//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public String getHomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {
//
//		boolean isValidUser = loginService.getUserValidation(name, password);
//		if (!isValidUser) {
//			return "login";
//		} else {
//			model.put("name", name);
//			model.put("password", password);
//			return "userhomepage";
//		}
//	}

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
