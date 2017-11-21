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
	@Test
	public void singerremeng() {
		List<Singer> list = singerdao.getSingerbyremeng();

		for (Singer singer : list) {
			System.out.println(singer);
		}

	}
	
	@Test
	public void singerall() {
		List<Singer> list = singerdao.getallSinger();

		for (Singer singer : list) {
			System.out.println(singer);
		}

	}
	@Test
	public void singerallbysinggershouc() {
		List<Singer> list = singerdao.getallSingerbydesc();

		for (Singer singer : list) {
			System.out.println(singer);
		}

	}
	
	@Test
	public void singerallbysinggerbyid() {
		List<Singer> list = singerdao.getoneSingerbyId(4);
	

		for (Singer singer : list) {
			System.out.println(singer);
		}

	}
	
	@Test
	public void singerallbysinggerbysingername() {
		List<Singer> list = singerdao.getsingerinfobySingname("Ѧ֮ǫ");
	

		for (Singer singer : list) {
			System.out.println(singer);
		}

	}
}
