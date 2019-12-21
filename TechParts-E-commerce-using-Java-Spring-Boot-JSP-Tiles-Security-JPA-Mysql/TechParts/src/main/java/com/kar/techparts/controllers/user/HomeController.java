package com.kar.techparts.controllers.user;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kar.techparts.services.AccountService;
import com.kar.techparts.services.CategoryService;

@Controller
@RequestMapping({ "/", "/home" })
public class HomeController {

	@Autowired
	AccountService accountService;
	@Autowired
	CategoryService categoryService;
	String role = "";

	@RequestMapping({ "", "/", "/index" })
	public ModelAndView home(Model model, Authentication auth) {
		System.out.println("/home called.");
		ModelAndView mv = new ModelAndView();
		if (auth != null) {
			setRole(auth);
			System.out.println("CURRENT_USER:" + (accountService.findByUsername(auth.getName())).getUsername()
					+ " with ROLE:" + role);
		}
		getCats(model);
		mv.setViewName((role.equalsIgnoreCase("Admin")) ? "redirect:/admin" : "home.index");
		return mv;
	}

	@RequestMapping({ "shop", "/shop" })
	public String shop(ModelMap model, Authentication auth) {
		System.out.println("/shop called.");
		setRole(auth);
		getCats(model);
		return "home.shop";
	}
	
	@RequestMapping({ "shop/product", "shop/product" })
	public String product(ModelMap model, Authentication auth) {
		System.out.println("/shop called.");
		setRole(auth);
		getCats(model);
		return "home.shop.product";
	}

	@RequestMapping({ "/access-denied", "access-denied" })
	public String accessDenied(Model model, Principal p) {
		System.out.println("/shop called.");
		return "/accessDenied";
	}

	public void setRole(Authentication auth) {
		if (auth != null)
			this.role = (accountService.findByUsername(auth.getName())).getRole().getName();
	}

	public void getCats(ModelMap model) {
		if (!this.role.equalsIgnoreCase("Admin"))
			model.put("categories", categoryService.findParentCategoriesWithStatus(true));
	}

	public void getCats(Model model) {
		if (!this.role.equalsIgnoreCase("Admin"))
			model.addAttribute("categories", categoryService.findParentCategoriesWithStatus(true));
	}

}
