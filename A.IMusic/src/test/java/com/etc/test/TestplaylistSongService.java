package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.Playlistsongs;
import com.etc.entity.Song;
import com.etc.service.Playlistsongservice;
import com.etc.service.SongService;

public class TestplaylistSongService {

	Playlistsongservice pss = null;

	@Before
	public void init() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml", "mybatis-config.xml");

		pss = context.getBean(Playlistsongservice.class);
	}

	@Test
	public void getNewSong() {
		List<Playlistsongs> list = pss.getplaylistsongs(1);
		System.out.println(list.get(1).getSongName());
		System.out.println(list.size());
	}
}
