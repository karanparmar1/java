package com.kar.techparts.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kar.techparts.models.Product;

@Repository("productRepo")
public interface ProductRepo extends CrudRepository<Product,Integer>{

	
}
