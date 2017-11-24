package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.etc.dao.UserDao;
import com.etc.entity.Albums;
import com.etc.entity.User;

public class TestUserAccount {
	UserDao ud = null;
	@Before
	public void init() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");
		ud=context.getBean(UserDao.class);
	}
	
	@Test
    public void test02() {
    	int u=ud.selectByPhone("18120954566");
    	System.out.println(u);
    }
	@Test
	public void test03() {
		User d=ud.selectByAccount("15960513920", "4564");
		System.out.println(d);
	}
	@Test
	public void test04() {
		int d=ud.selectByName("¹þÊ¿Ææ");
		System.out.println(d);
	}
	@Test
	public void test05() {
		int d=ud.insertUser("15506998632", "123456");
		System.out.println(d);
	}
	@Test
	public void test06() {
		int d=ud.insertUserinfo("ssqq", "15506998632");
		System.out.println(d);
	}
	@Test
	public void test07() {
		String d=ud.selectTouxiang("15960513920");
		System.out.println(d);
	}
}
