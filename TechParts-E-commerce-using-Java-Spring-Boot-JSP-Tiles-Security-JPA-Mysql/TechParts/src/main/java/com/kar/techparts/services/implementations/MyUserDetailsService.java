package com.kar.techparts.services.implementations;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kar.techparts.models.Account;
import com.kar.techparts.repositories.AccountRepo;

@Transactional
@Service("userDetailsService")
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private AccountRepo accountRepo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account user = accountRepo.findByUsername(username);
		if (user == null) {
			throw new UsernameNotFoundException("User : " + username + " Not Found !");
		}
		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
				getGrantedAuthorities(user));
	}

	private Collection<GrantedAuthority> getGrantedAuthorities(Account user) {
		Collection<GrantedAuthority> grantedAuthorites = new ArrayList<>();
		if (user.getRole().getName().equalsIgnoreCase("Admin")) {
			System.out.println("\n=>Admin Access granted to " + user.getUsername()+"\n");
			grantedAuthorites.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		}
		grantedAuthorites.add(new SimpleGrantedAuthority("ROLE_USER"));
		return grantedAuthorites;
	}

}
