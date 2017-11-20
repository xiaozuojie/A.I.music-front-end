package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.Singer;
import com.etc.entity.Song;
import com.etc.service.SingerService;
import com.etc.service.SongService;

public class TestSingerService {

	
	SingerService ss = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");

		ss = context.getBean(SingerService.class);
	}

	@Test
	public void getallsongs() {
		List<Singer> list = ss.getSingerbysix();
		for (Singer singer : list) {
			System.out.println(singer);
		}

	}

	@Test
	public void getallsongsten() {
		List<Singer> list = ss.getSingerbysten();
		for (Singer singer : list) {
			System.out.println(singer);
		}

	}
}
