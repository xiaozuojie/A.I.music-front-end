package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.Song;

public interface SongDao {

	/**
	 * 获取新歌榜前十（倒序前十）
	 * 
	 * @return
	 */

public List<Song> getallsong();
/**
 * 根据歌手的编号来查询他的前面20首歌曲收藏量来定
 */
public List<Song> getSingerSongbycollect(String singername);

	public List<Song> getNewSong(@Param(value = "size") int size);

	/**
	 * 获取收藏数量前十的歌曲作为排行榜前十
	 * 
	 * @return
	 */
	public List<Song> getSongByPaiHang(@Param(value = "size") int size);



}
