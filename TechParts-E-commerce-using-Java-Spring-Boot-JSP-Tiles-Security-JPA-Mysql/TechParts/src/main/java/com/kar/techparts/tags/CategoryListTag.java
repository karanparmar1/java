package com.kar.techparts.tags;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.AutowireCapableBeanFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.tags.RequestContextAwareTag;

import com.kar.techparts.models.Category;
import com.kar.techparts.services.CategoryService;

public class CategoryListTag extends RequestContextAwareTag {

	@Autowired
	private CategoryService categoryService;

	@Value("${server.servlet.context-path}")
	String path;

	@Override
	public void doFinally() {

		JspWriter writer = pageContext.getOut();
		try {
			writer.write("<ul>");
			List<Category> categories = categoryService.findParentCategoriesWithStatus(true);
			if (categories != null) {
				for (Category category : categories) {
					if (!category.getName().equals("other")) {
						writer.write("<li class=\"has-children\"><a href=\"#\">" + category.getName() + "</a>");

						if (!category.getCategories().isEmpty()) {
							writer.write("<ul>");
							for (Category subcategory : category.getCategories()) {
								

								if (!subcategory.getCategories().isEmpty()) {
									writer.write("<li><a href=\"#\">" + subcategory.getName() + "</a>");
									writer.write("<ul>");
									for (Category subsubcategory : subcategory.getCategories()) {
										writer.write("<li><a href=\"#\">" + subsubcategory.getName() + "</a></li>");
									}
									writer.write("</ul>");
								}
								
								else {
									writer.write("<li><a href=\""
											+ path + "/shop/category/" + subcategory.getName()
											+ "\">" + subcategory.getName() + "</a>");
								}
								writer.write("</li>");
							}
							writer.write("</ul>");
						}
						writer.write("</li>");
					}
				}
				
				for (Category category : categories) {
					if (category.getName().equals("other")) {
						writer.write("<li class=\"has-children\"><a href=\"#\">" + category.getName() + "</a>");

						if (!category.getCategories().isEmpty()) {
							writer.write("<ul>");
							for (Category subcategory : category.getCategories()) {
								writer.write("<li><a href=\"#\">" + subcategory.getName() + "</a>");

								if (!subcategory.getCategories().isEmpty()) {
									writer.write("<ul>");
									for (Category subsubcategory : subcategory.getCategories()) {
										writer.write("<li><a href=\"#\">" + subsubcategory.getName() + "</a></li>");
									}
									writer.write("</ul>");
								}
								writer.write("</li>");
							}
							writer.write("</ul>");
						}
						writer.write("</li>");
					}
				}
				
			}
			if (categories.isEmpty()) {
				writer.write(" <ul> No categories Available.</ul> ");
			}
			writer.write("</ul>");
		} catch (Exception e) {
			// TODO: handle exception
			try {
				writer.write(e.getMessage());
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
	}

	@Override
	protected int doStartTagInternal() throws Exception {
		if (categoryService == null) {
			WebApplicationContext webApplicationContext = getRequestContext().getWebApplicationContext();
			AutowireCapableBeanFactory autowireCapableBeanFactory = webApplicationContext
					.getAutowireCapableBeanFactory();
			autowireCapableBeanFactory.autowireBean(this);
		}
		return SKIP_BODY;

	}

}
