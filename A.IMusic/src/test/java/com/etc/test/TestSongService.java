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
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml", "mybatis-config.xml");

		ss = context.getBean(SongService.class);
	}

	@Test
	public void getNewSong() {
		List<Song> list = ss.getNewSong(10);
		for (Song Song : list) {
			System.out.println(Song);
		}
	}
	
	@Test
	public void getSongByPaiHang() {
		List<Song> list = ss.getSongByPaiHang(10);
		for (Song song : list) {
			System.out.println(song);
		}
	}
	
	@Test
	public void getallsongsbysingername() {
		List<Song> list = ss.getsongbysingerName("Ñ¦Ö®Ç«");
		for (Song Song : list) {
			System.out.println(Song);
		}

	}
	@Test
	public void getallsongs1() {
		List<Song> list = ss.getsongalbumsid("¸ÇÊÀÓ¢ÐÛ");
		for (Song Song : list) {
			System.out.println(Song);
		}

	}
	@Test
	public void getallsongs12() {
		List<Song> list = ss.getSongInfo(165);
		for (Song Song : list) {
			System.out.println(Song);
		}

	}
}
