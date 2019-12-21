package com.kar.techparts.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kar.techparts.repositories.AccountRepo;

@Controller
@RequestMapping({ "account", "/account" })
public class AccountController {
	@Autowired
	AccountRepo accountRepo;
	
	@RequestMapping({ "", "/", "login", "/login", "signin" })
	public String login(Model md, String error, String logout) {
		System.out.println("Login Called");
		if (error != null)
			md.addAttribute("error", "Wrong Username or Password!");
		if (logout != null)
			md.addAttribute("message", "Logged Out Successfully.");
		return "/login";
	}
	
//	@PostMapping("login/process")
//	public String process(Model md, String error, String logout) {
//		if (error != null)
//			md.addAttribute("error", "Wrong Username or Password !");
//		if (logout != null)
//			md.addAttribute("message", "Logged Out Successfully .");
//		return "redirect:/admin/dashboard";
//	}

}
