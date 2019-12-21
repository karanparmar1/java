package com.kar.techparts.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kar.techparts.models.Account;

@Repository("accountRepo")
public interface AccountRepo extends JpaRepository<Account, Long> {

	@Query("FROM Account WHERE username=:username")
	Account findByUsername(String username);
}
