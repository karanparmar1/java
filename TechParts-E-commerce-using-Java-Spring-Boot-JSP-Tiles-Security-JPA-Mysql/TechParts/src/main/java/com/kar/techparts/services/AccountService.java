package com.kar.techparts.services;

import com.kar.techparts.models.Account;

public interface AccountService {

	public Account findByUsername(String username);

	public Account findById(Long id);
	
	public Account save(Account account);
	
}
