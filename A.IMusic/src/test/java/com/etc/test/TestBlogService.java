package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.dao.BlogDao;
import com.etc.entity.Blog;
import com.etc.service.BlogService;

public class TestBlogService {

	
	BlogService bs = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");

		bs = context.getBean(BlogService.class);
	}

	@Test
	public void getAllBlog() {
		List<Blog> list = bs.getAllBlog();
		for (Blog blog : list) {
			System.out.println(blog);
		}

	}
}
