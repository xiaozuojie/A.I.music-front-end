package com.etc.test;

import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.etc.dao.AlbumsDao;
import com.etc.entity.Albums;
import com.etc.service.AlbumsService;
public class testalbums {  
	AlbumsDao ao=null;
	AlbumsService as=null;
	
	@Before
	public void init() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");
		ao=context.getBean(AlbumsDao.class);
		as=context.getBean(AlbumsService.class);
		
	}
	@Test
    public void test() {
    	List<Albums> list=ao.allalubms();
    	for (Albums albums : list) {
			System.out.println(albums);
		}
    	
    }
	@Test
    public void test1() {
    	List<Albums> list=ao.allalubmstime();
    	for (Albums albums : list) {
			System.out.println(albums);
		}
    	
    }
	@Test
    public void test2() {
    	List<Albums> list=as.getallalbumsbysingername("Ѧ֮ǫ");
    	for (Albums albums : list) {
			System.out.println(albums);
		}
    	
    }
	
}
