package com.kar.techparts.services.implementations;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kar.techparts.services.ProductService;

@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService {
	
}
