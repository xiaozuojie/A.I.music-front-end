package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.dao.BlogDao;
import com.etc.entity.Blog;

public class TestBlogDao {

	
	BlogDao blogdao = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");

		blogdao = context.getBean(BlogDao.class);
	}

	@Test
	public void getAllBlog() {
		List<Blog> list = blogdao.getAllBlog();

		for (Blog blog : list) {
			System.out.println(blog);
		}

	}
}
