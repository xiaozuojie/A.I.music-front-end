package com.etc.test;

import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.etc.dao.AlbumsDao;
import com.etc.dao.PlayListDao;
import com.etc.entity.Albums;
import com.etc.entity.Playlist;
public class testplaylist {  
	PlayListDao pd;
	
	@Before
	public void init() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");
		pd=context.getBean(PlayListDao.class);
		
	}
	@Test
    public void test() {
    	List<Playlist> list=pd.allplaylist();
    	for (Playlist playlist : list) {
			System.out.println(playlist);
		}
    	
    }
	@Test
    public void test1() {
		List<Playlist>  list=pd.allplaylistbyplaylistTypeName("Á÷ÐÐ");
    	 for (Playlist playlist : list) {
			System.out.println(playlist);
		}
    	
    }
	
}
