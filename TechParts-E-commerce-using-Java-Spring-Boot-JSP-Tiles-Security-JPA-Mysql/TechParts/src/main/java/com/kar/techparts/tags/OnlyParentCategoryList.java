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

public class OnlyParentCategoryList extends RequestContextAwareTag {
	// HttpServletRequest request;
	@Autowired
	private CategoryService categoryService;
	@Value("${server.servlet.context-path}")
	String path;

	String displayType;

	public void setDisplayType(String displayType) {
		this.displayType = displayType;
	}

	@Override
	public void doFinally() {

		JspWriter writer = pageContext.getOut();
		try {

			List<Category> categories = categoryService.findParentCategoriesWithStatus(true);
			if (categories != null) {

				if (displayType.equals("inNavbar")) {
					for (Category category : categories) {
						if (!category.getName().equals("other")) {
							String name = category.getName().replace(" ", "-");
							writer.write(
									"<div class=\"col-sm-4 \"> <a class=\"d-block navi-link text-center mb-30\" href=\""
											+ path + "/shop/category/" + name + "\"> <span class=\"text-gray-dark\">"
											+ category.getName() + "</span>" + "</a></div>");
						}
					}

					for (Category category : categories) {
						if (category.getName().equals("other")) {
							writer.write(
									"<div class=\"col-sm-4 \"> <a class=\"d-block navi-link text-center mb-30\" href=\""
											+ path + "/shop/category/" + category.getName()
											+ "\"> <span class=\"text-gray-dark\">" + category.getName() + "</span>"
											+ "</a></div>");

						}
					}

				}

				else if (displayType.equals("inFooter")) {
					for (Category category : categories) {
						if (!category.getName().equals("other")) {
							String name = category.getName().replace(" ", "-");
							writer.write("<div class=\"col-md-6\"> <ul><li><a href=\"" + path + "/shop/category/" + name
									+ "\">" + category.getName() + "</a></li> </ul></div>");
						}
					}

					for (Category category : categories) {
						if (category.getName().equals("other")) {
							writer.write("<div class=\"col-md-6\"> <ul><li><a href=\"" + path + "/shop/category/"
									+ category.getName() + "\">" + category.getName() + "</a></li> </ul></div>");
						}
					}

				} else if (displayType.equals("inOnlyLiTag")) {
					for (Category category : categories) {
						if (!category.getName().equals("other")) {
							String name = category.getName().replace(" ", "-");
							writer.write("<li><a href=\"" + path + "/shop/category/" + name + "\">" + category.getName()
									+ "</a></li>");
						}
					}

					for (Category category : categories) {
						if (category.getName().equals("other")) {
							writer.write("<li><a href=\"" + path + "/shop/category/" + category.getName() + "\">"
									+ category.getName() + "</a></li>");
						}
					}

				}

				else {
					writer.write("No Category with mentioned attribute.");
				}
			}
			if (categories.isEmpty()) {
				writer.write(" <ul> No categories Available.</ul> ");
			}
			// writer.write("</ul>");
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
