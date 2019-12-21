package com.kar.techparts.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kar.techparts.models.Role;

@Repository("roleRepo")
public interface RoleRepo  extends JpaRepository<Role, Long>{

}
