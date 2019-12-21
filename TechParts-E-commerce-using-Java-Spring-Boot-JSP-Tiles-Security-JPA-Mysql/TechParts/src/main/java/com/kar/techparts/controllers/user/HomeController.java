package com.kar.techparts.controllers.user;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kar.techparts.services.AccountService;
import com.kar.techparts.services.CategoryService;

@Controller
@RequestMapping({ "/", "/home" })
public class HomeController {

	@Autowired
	AccountService accountService;
	CategoryService categoryService;

	@RequestMapping({ "", "/", "/index" })
	public ModelAndView home(Model model, Authentication auth) {
		System.out.println("/home called.");
		ModelAndView mv = new ModelAndView();
		String role = "";
		if (auth!= null) {
			role = (accountService.findByUsername(auth.getName())).getRole().getName();
			System.out.println("CURRENT_USER:" + (accountService.findByUsername(auth.getName())).getUsername()
					+ " with ROLE:" + role);
		}
		mv.setViewName((role.equalsIgnoreCase("Admin")) ? "redirect:/admin" : "home.index");

		return mv;
	}

	@RequestMapping({ "shop", "/shop" })
	public String shop(Model model, Principal p) {
		System.out.println("/shop called.");
		return "home.shop";
	}
	
	

	@RequestMapping({ "/access-denied", "access-denied" })
	public String accessDenied(Model model, Principal p) {
		System.out.println("/shop called.");
		return "/accessDenied";
	}

}
