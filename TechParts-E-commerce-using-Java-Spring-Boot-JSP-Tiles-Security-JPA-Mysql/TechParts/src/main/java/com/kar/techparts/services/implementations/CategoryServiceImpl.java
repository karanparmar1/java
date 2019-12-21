package com.kar.techparts.services.implementations;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kar.techparts.models.Category;
import com.kar.techparts.repositories.CategoryRepo;
import com.kar.techparts.services.CategoryService;

@Transactional
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {


	@Autowired
	private CategoryRepo categoryRepo;
	
	public static String message=null;

	@Override
	public Category findById(int id) {
		return categoryRepo.findById(id).get();
	}
	
	@Override
	public Iterable<Category> findAll() {

		return categoryRepo.findAll();
	}

	@Override
	public List<Category> findParentCategories() {
		
		return categoryRepo.findParentCategories();
	}

	@Override
	public Category save(Category category) {
		message = " Category : " + category.getName() + " is Saved.";
		return categoryRepo.save(category);
	}

	@Override
	public String delete(int id) {
		message=" Category : "+categoryRepo.findById(id).get().getName()+" with id : " + id +" was Deleted.";
		try {
			categoryRepo.deleteById(id);
		}
		catch (Exception e) {
			message="ERROR : Failed to Delete Category : "+categoryRepo.findById(id).get().getName()+" with id : " + id;
		}
		
		
		return message;
	}

	@Override
	public List<Category> findParentCategoriesWithStatus(boolean status) {
		// TODO Auto-generated method stub
		return categoryRepo.findParentCategoriesWithStatus(status);
	}

}
