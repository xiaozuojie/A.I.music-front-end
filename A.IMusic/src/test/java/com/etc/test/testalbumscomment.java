package com.etc.test;

import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.etc.dao.AlbumscommentDao;
import com.etc.entity.Albumscomment;
public class testalbumscomment {  
	AlbumscommentDao ad=null;
	
	@Before
	public void init() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");
		ad=context.getBean(AlbumscommentDao.class);
		
	}
	@Test
    public void test() {
    	List<Albumscomment> list=ad.allAlbumscomment(25);
    	 for (Albumscomment albumsinfo : list) {
			System.out.println(albumsinfo);
		}
    	
    }
	
	
	
}
