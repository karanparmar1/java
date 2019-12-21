package com.kar.techparts.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kar.techparts.models.Account;
import com.kar.techparts.repositories.AccountRepo;
import com.kar.techparts.services.AccountService;

@Transactional
@Service("accountService")
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountRepo accountRepo;

	@Override
	public Account findByUsername(String username) {
		// TODO Auto-generated method stub
		return accountRepo.findByUsername(username);
	}

	@Override
	public Account save(Account account) {
		// TODO Auto-generated method stub
		return accountRepo.save(account);
	}

	@Override
	public Account findById(Long id) {
		// TODO Auto-generated method stub
		return accountRepo.findById(id).get();
	}

}
