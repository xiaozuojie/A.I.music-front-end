package com.etc.dao;

import java.util.List;

import com.etc.entity.Song;

public interface SongDao {
	/**
	 * 获取歌曲的所有信息
	 * @return
	 */
public List<Song> getallsong();
/**
 * 根据歌手的编号来查询他的前面20首歌曲收藏量来定
 */
public List<Song> getSingerSongbycollect(String singername);

}
