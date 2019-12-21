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
import com.kar.techparts.services.CategoryService;
import com.kar.techparts.services.implementations.CategoryServiceImpl;

@Controller
@RequestMapping("/admin/category")
@PreAuthorize("hasRole('ROLE_ADMIN')")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping({ "", "/", "list", "/list" })
	public String index(ModelMap mp) {
		mp.put("categories", categoryService.findParentCategories());
		return "admin.category.display-category-list";
	}

	@GetMapping({ "add" })
	public String add(ModelMap mp) {
		mp.put("category", new Category());
		mp.put("reqType", "ADD");
		return "admin.category.manage-category-form";
	}

	@PostMapping({ "add" })
	public String addFromForm(@ModelAttribute("category") Category category, RedirectAttributes rd, ModelMap mp) {
		category.setCategory(null);
		categoryService.save(category);
		rd.addFlashAttribute("message", CategoryServiceImpl.message);
		mp.put("reqType", "ADD");
		return "redirect:/admin/category";
	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") int id, RedirectAttributes md) {
		md.addFlashAttribute("message", categoryService.delete(id));
		return "redirect:/admin/category/";
	}

	@GetMapping("edit/{id}")
	public String form(@PathVariable("id") int id, ModelMap mp) {
		mp.put("category", categoryService.findById(id));
		mp.put("reqType", "EDIT");
		return "admin.category.manage-category-form";
	}

	@PostMapping("edit/{id}")
	public String form(@ModelAttribute("category") Category category, @PathVariable("id") int id, RedirectAttributes rd,
			ModelMap mp) {
		Category currentCat = categoryService.findById(id);
		currentCat.setName(category.getName());
		currentCat.setStatus(category.isStatus());
		categoryService.save(currentCat);
		rd.addFlashAttribute("message", CategoryServiceImpl.message);
		mp.put("reqType", "EDIT");
		return "redirect:/admin/category/list";
	}

	@GetMapping("{id}/subcategories")
	public String subcategories(@PathVariable("id") int id, ModelMap mp) {
		mp.put("category", categoryService.findById(id));
		return "admin.category.display-subcategory-list";
	}

	@GetMapping("{id}/addsubcategory")
	public String addSubCategory(@PathVariable("id") int id, ModelMap mp) {
		Category category = new Category();
		category.setCategory(categoryService.findById(id));
		mp.put("category", category);
		mp.put("reqType", "ADD");
		return "admin.category.manage-subcategory-form";
	}

	@GetMapping("{id}/subcategory/{subid}/edit")
	public String editform(@PathVariable("id") int id, @PathVariable("subid") int subid, ModelMap mp) {
		mp.put("category", categoryService.findById(subid));
		mp.put("reqType", "EDIT");
		return "admin.category.manage-subcategory-form";
	}

	@PostMapping("subcategory/{id}/edit")
	public String editsubcategory(@ModelAttribute("category") Category category, RedirectAttributes rd, ModelMap mp) {
		categoryService.save(category);
		rd.addFlashAttribute("message", CategoryServiceImpl.message);
		mp.put("reqType", "EDIT");
		return "redirect:/admin/category/{id}/subcategories";
	}

	@PostMapping("addsubcategory")
	public String addSubCategory(@ModelAttribute("category") Category category, RedirectAttributes rd, ModelMap mp) {
		categoryService.save(category);
		rd.addFlashAttribute("message", CategoryServiceImpl.message);
		return "redirect:/admin/category/" + category.getCategory().getId() + "/subcategories";
	}

}
