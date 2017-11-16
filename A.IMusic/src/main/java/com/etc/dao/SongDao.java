package com.etc.dao;

import java.util.List;

import com.etc.entity.Song;

public interface SongDao {
	/**
	 * 获取歌曲的所有信息
	 * @return
	 */
public List<Song> getallsong();

}
