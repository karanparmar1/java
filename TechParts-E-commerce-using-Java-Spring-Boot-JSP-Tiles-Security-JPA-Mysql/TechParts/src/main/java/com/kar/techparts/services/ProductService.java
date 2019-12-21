package com.kar.techparts.services;

import java.util.List;

import com.kar.techparts.models.Category;
import com.kar.techparts.models.Product;

public interface ProductService {

	public Iterable<Product> findAll();

	//public List<Product> findParentCategories();

	public Product save(Product product);

	public String delete(int id);

	public Product findById(int id);

}
