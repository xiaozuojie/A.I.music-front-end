package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.dao.SingerDao;
import com.etc.dao.SongDao;
import com.etc.entity.Singer;
import com.etc.entity.Song;

public class TestSinger {

	
	SingerDao singerdao = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");

		singerdao = context.getBean(SingerDao.class);
	}

	@Test
	public void getAllBlog() {
		List<Singer> list = singerdao.getSingerbysix();

		for (Singer singer : list) {
			System.out.println(singer);
		}

	}
	
	
	@Test
	public void getsingerbyten() {
		List<Singer> list = singerdao.getSingerbyten();

		for (Singer singer : list) {
			System.out.println(singer);
		}

	}
}
