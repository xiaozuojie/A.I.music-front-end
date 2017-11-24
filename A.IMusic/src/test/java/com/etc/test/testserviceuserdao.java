package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.User;
import com.etc.service.UserService;

public class testserviceuserdao {
	UserService us =null;
	@Before
	public void init() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");
		us=context.getBean(UserService.class);
	}
	@Test
	public void test01() {
		int i=us.selectByPhone("18120954566");
		System.out.println(i);
	}
	@Test
	public void test02() {
		User i=us.selectByAccount("15960521190", "9968");
		System.out.println(i);
	}
	@Test
	public void test03() {
		int i=us.selectByName("¹þÊ¿Ææ");
		System.out.println(i);
	}
	@Test
	public void test04() {
		String i=us.selectTouxiang("15960513920");
		System.out.println(i);
	}

}
