package com.kar.techparts.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kar.techparts.models.Account;
import com.kar.techparts.repositories.RoleRepo;
import com.kar.techparts.services.AccountService;

@Controller
@PreAuthorize("hasRole('ROLE_ADMIN')")
@RequestMapping({ "admin/account", "admin/account" })
public class UserAccountController {

	@Autowired
	RoleRepo roleRepo;

	@Autowired
	AccountService accountService;

	@GetMapping("profile")
	public String profile(Authentication auth, ModelMap mp) {
		mp.put("roles", roleRepo.findAll());
		mp.put("account", accountService.findByUsername(auth.getName()));
		return "admin.account.profile";
	}

	@PostMapping("profile")
	public String saveProfile(@ModelAttribute("account") Account account) {
		Account currentAccount = accountService.findById(account.getId());

		if(!account.getPassword().isEmpty()) {
			String hash = new BCryptPasswordEncoder().encode(account.getPassword());
			currentAccount.setPassword(hash);
		}
		currentAccount.setUsername(account.getUsername());
		currentAccount.setFullname(account.getFullname());
		currentAccount.setPhone(account.getPhone());
		currentAccount.setRole(account.getRole());
		currentAccount.setStatus(account.isStatus());
		currentAccount.setAddress(account.getAddress());
		
		accountService.save(currentAccount);
		return "redirect:/admin/account/profile";
	}

}
