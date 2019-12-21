package com.kar.techparts.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.kar.techparts.models.Category;

@Repository("categoryRepo")
public interface CategoryRepo extends CrudRepository<Category, Integer> {

	@Query("from Category c where c.category = null")
	public List<Category> findParentCategories();

	@Query("from Category where category = null and status = :status")
	public List<Category> findParentCategoriesWithStatus(@Param("status") boolean status);

}
