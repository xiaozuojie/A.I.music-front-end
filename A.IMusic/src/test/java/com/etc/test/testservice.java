package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.Albums;
import com.etc.service.AlbumsService;

public class testservice {
	AlbumsService as=null;
	@Before
	public void init() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");
		as=context.getBean(AlbumsService.class);
	}
	@Test
	public void test1() {
		List<Albums> list=as.getallalbums();
		for (Albums albums : list) {
			System.out.println(albums);
		}
	}
	@Test
	public void test2() {
		List<Albums> list=as.getallalbumstime();
		for (Albums albums : list) {
			System.out.println(albums);
		}
	}
	@Test
	public void test3() {
		List<Albums> list=as.getallalbumssingername("Õı¡¶∫Í");
		for (Albums albums : list) {
			System.out.println(albums);
		}
	}
	

}
