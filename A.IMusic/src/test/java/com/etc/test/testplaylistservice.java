package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.etc.entity.Playlist;
import com.etc.service.PlayListService;
public class testplaylistservice {
	PlayListService ps;
	@Before
	public void init() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");
		ps=context.getBean(PlayListService.class);
	}
	@Test
	public void test2() {
		List<Playlist> list=ps.getallplaylistbytypename("");
		for (Playlist playlist : list) {
			System.out.println(playlist);
		}
	}

}
