package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.Albumscomment;
import com.etc.entity.Singer;
import com.etc.entity.Song;
import com.etc.service.AlbumsService;
import com.etc.service.Albumscommentservice;
import com.etc.service.SingerService;
import com.etc.service.SongService;

public class TestalbumscommentService {

	
	Albumscommentservice ae = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");

		ae = context.getBean(Albumscommentservice.class);
	}

	@Test
	public void getallsongs() {
		List<Albumscomment> list = ae.getallalbumscomment(25);
		for (Albumscomment albumscomment : list) {
			System.out.println(albumscomment);
		}
      
	}
 
}
