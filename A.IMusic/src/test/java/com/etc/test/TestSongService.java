package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.etc.entity.Song;
import com.etc.service.SongService;

public class TestSongService {

	
	SongService ss = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");

		ss = context.getBean(SongService.class);
	}

	@Test
	public void getallsongs() {
		List<Song> list = ss.getsong();
		for (Song Song : list) {
			System.out.println(Song);
		}

	}
	@Test
	public void getallsongs1() {
		List<Song> list = ss.getsongalbumsid("����Ӣ��");
		for (Song Song : list) {
			System.out.println(Song);
		}

	}
}
