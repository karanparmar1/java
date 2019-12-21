package com.kar.techparts.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kar.techparts.models.Photo;

@Repository("photoRepo")
public interface PhotoRepo extends CrudRepository<Photo,Integer>{

	
}
