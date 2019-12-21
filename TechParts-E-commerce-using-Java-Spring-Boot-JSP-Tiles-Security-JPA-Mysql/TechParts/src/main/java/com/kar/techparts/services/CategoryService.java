package com.kar.techparts.services;

import java.util.List;

import com.kar.techparts.models.Category;

public interface CategoryService {
	
	public Iterable<Category> findAll();
	
	public List<Category> findParentCategories();

	public Category save(Category category);
	
	public String delete(int id);
	
	public Category findById(int id);

	public List<Category> findParentCategoriesWithStatus(boolean status);
}

