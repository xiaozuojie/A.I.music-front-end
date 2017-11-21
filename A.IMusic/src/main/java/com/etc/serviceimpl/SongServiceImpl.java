package com.etc.serviceimpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.etc.dao.SongDao;
import com.etc.entity.Song;
import com.etc.service.SongService;

@Service
public class SongServiceImpl implements SongService {

	
	@Resource
	private SongDao sd;
	
	/**
	 * 按收藏数量来得到飙升版的歌单数据
	 */
	public List<Song> getsong() {
		// TODO Auto-generated method stub
		return sd.getallsong();
	}
	/**
	 * 根据歌手的姓名来获取其中的歌手按照收藏排行的前20首歌曲
	 */
	public List<Song> getsongbysingerName(String singername) {
		// TODO Auto-generated method stub
		return sd.getSingerSongbycollect(singername);
	}

}
