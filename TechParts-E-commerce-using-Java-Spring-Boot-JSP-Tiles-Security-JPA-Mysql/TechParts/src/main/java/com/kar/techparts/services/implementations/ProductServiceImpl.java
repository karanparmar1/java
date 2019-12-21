package com.kar.techparts.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kar.techparts.models.Product;
import com.kar.techparts.repositories.ProductRepo;
import com.kar.techparts.services.ProductService;

@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepo productRepo;

	public static String message = null;

	@Override
	public Product findById(int id) {
		return productRepo.findById(id).get();
	}

	@Override
	public Iterable<Product> findAll() {
		// TODO Auto-generated method stub
		return productRepo.findAll();
	}

	@Override
	public Product save(Product product) {
		message = " Product : " + product.getName() + " is Saved.";
		return productRepo.save(product);
	}

	@Override
	public String delete(int id) {
		message = " Product : " + productRepo.findById(id).get().getName() + " with id : " + id + " was Deleted.";
		try {
			productRepo.deleteById(id);
		} catch (Exception e) {
			message = "ERROR : Failed to Delete Product : " + productRepo.findById(id).get().getName() + " with id : "
					+ id;
		}

		return message;
	}

}
