package com.etc.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.etc.dao.AlbumsDao;
import com.etc.dao.CommentsDao;
import com.etc.entity.Albums;
import com.etc.entity.Comments;
public class testcomment {  
	CommentsDao co=null;
	
	@Before
	public void init() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");
		co=context.getBean(CommentsDao.class);
	}
	@Test
	public void test1() {
		Comments usercomment=new Comments(4, "2017年12月1日", "非常好听", "二哈", 25); 
		int a=co.addcomment(usercomment);
		System.out.println(a);
	}
	@Test
	public void test2() {
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
		String hehe = dateFormat.format(now); 
		System.out.println(hehe); 
	}
	
}
