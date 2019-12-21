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

public class CategoryDropdown extends RequestContextAwareTag {

	@Autowired
	private CategoryService categoryService;

	@Value("${server.servlet.context-path}")
	String path;

	@Override
	public void doFinally() {

		JspWriter writer = pageContext.getOut();
		try {
		
			List<Category> categories = categoryService.findParentCategories();
			
			if (categories != null) {
				writer.write("<select class=\'form-control chzn-select\' tabindex=\'2\' path=\'category.id\' id=\'category\' required=\'required\'>");

				for (Category category : categories) {

					if (!category.getCategories().isEmpty()) {
						writer.write("<optgroup label=\'" + category.getName() + "\'>");
						for (Category subcategory : category.getCategories()) {

							if (!subcategory.getCategories().isEmpty()) {
								writer.write("<optgroup label=\'" + subcategory.getName() + "\'>");

								for (Category subsubcategory : subcategory.getCategories()) {
									writer.write("<option value=\'" + subsubcategory.getId() + "\'>"
											+ subsubcategory.getName() + "</option>");
								}
								writer.write("</optgroup>");
							}

							else {
								writer.write("<option value=\'" + subcategory.getId() + "\'>" + subcategory.getName()
										+ "</option>");
							}

						}
						writer.write("</optgroup>");
					} else {
						writer.write("<option value=\'" + category.getId() + "\'>" + category.getName() + "</option>");
					}
					

				}

				writer.write("</select>");
			}

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
