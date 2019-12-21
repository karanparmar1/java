package com.kar.techparts.controllers.admin;

import java.security.Principal;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@PreAuthorize("hasRole('ROLE_ADMIN')")
@RequestMapping({ "/admin" })
public class DashboardController {

	@RequestMapping({ "", "/", "/dashboard","/home"})
	public String home(Model model, Principal p) {
		System.out.println("/home called.");
		return "admin.dashboard.index";
	}

	
}