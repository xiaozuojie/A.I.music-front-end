package com.etc.service;

import java.util.List;
import com.etc.entity.Song;

public interface SongService {

	//按收藏数量来得到飙升版的歌单数据
	public List<Song> getsong();
	
}
