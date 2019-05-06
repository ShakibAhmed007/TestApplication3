package com.skb.dummy.service;

import org.springframework.stereotype.Component;

@Component
public class LoginService {

	public boolean getUserValidation(String name, String password) {
		return name.equals("admin") && password.equals("12345");
	}

}
