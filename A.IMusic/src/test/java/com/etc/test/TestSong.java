package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.dao.SongDao;

import com.etc.entity.Song;

public class TestSong {

	
	SongDao songdao = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml","mybatis-config.xml");

		songdao = context.getBean(SongDao.class);
	}

	@Test
	public void getNewSong() {
		List<Song> list = songdao.getNewSong(10);

		for (Song song : list) {
			System.out.println(song);
		}

	}
	
	@Test
	public void getSongByPaiHang() {
		List<Song> list = songdao.getSongByPaiHang(10);
		for (Song song : list) {
			System.out.println(song);
		}
	}
}
