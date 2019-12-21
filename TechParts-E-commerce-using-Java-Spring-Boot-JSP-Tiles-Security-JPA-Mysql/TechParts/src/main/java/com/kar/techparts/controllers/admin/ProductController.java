package com.kar.techparts.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kar.techparts.models.Category;
import com.kar.techparts.models.Company;
import com.kar.techparts.models.Product;
import com.kar.techparts.services.CategoryService;
import com.kar.techparts.services.ProductService;
import com.kar.techparts.services.implementations.ProductServiceImpl;

@Controller
@RequestMapping("/admin/product")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping({ "", "/", "list", "all" })
	public String productList(ModelMap mp) {
		mp.put("products", productService.findAll());
		return "admin.product.display-product-list";
	}

	@GetMapping({ "add", "/add" })
	public String add(ModelMap mp) {
		mp.put("product", new Product());
		mp.put("reqType", "ADD");
		mp.put("categories", categoryService.findParentCategories());
		return "admin.product.add";
	}

	@PostMapping({ "add", "/add" })
	public String addFromForm(@ModelAttribute("product") Product product, RedirectAttributes rd, ModelMap mp) {
		product.setCompany(new Company(1));
		product.setPhoto(null);
		try {
		productService.save(product);
		}catch (Exception e) {
			ProductServiceImpl.message="ERROR : Failed To Add Product : "+product.getName();
		}
		rd.addFlashAttribute("message", ProductServiceImpl.message);
		mp.put("reqType", "ADD");
		return "redirect:/admin/product";
	}

	@GetMapping("edit/{id}")
	public String form(@PathVariable("id") int id, ModelMap mp) {
		mp.put("product", productService.findById(id));
		//mp.put("selectedCatId",productService.findById(id).getCategory().getId());
		mp.put("reqType", "EDIT");
		mp.put("categories", categoryService.findParentCategories());
		return "admin.product.edit";
	}

	@PostMapping("edit/{id}")
	public String form(@ModelAttribute("product") Product product, @PathVariable("id") int id, RedirectAttributes rd,
			ModelMap mp) {
		Product currentProduct = productService.findById(id);
		currentProduct.setName(product.getName());
		currentProduct.setStatus(product.isStatus());
		productService.save(currentProduct);
		rd.addFlashAttribute("message", ProductServiceImpl.message);
		mp.put("reqType", "EDIT");
		return "redirect:/admin/product/list";
	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") int id, RedirectAttributes md) {
		md.addFlashAttribute("message", productService.delete(id));
		return "redirect:/admin/product/";
	}

}
