package com.etc.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.etc.entity.Blog;
import com.etc.service.BlogService;

@RunWith(SpringJUnit4ClassRunner.class)
// @ContextConfiguration(locations= {"",""})
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:mybatis-config.xml" })
public class TestBlogServiceWithSpringTest {

	@Resource
	private BlogService bs;

	@Test
	public void getAllBlog() {
		List<Blog> list = bs.getAllBlog();
		for (Blog blog : list) {
			System.out.println(blog);
		}

	}
}
