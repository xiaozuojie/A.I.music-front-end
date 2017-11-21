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
	public List<Song> getNewSong(@Param(value = "size") int size);

	/**
	 * 获取收藏数量前十的歌曲作为排行榜前十
	 * 
	 * @return
	 */
	public List<Song> getSongByPaiHang(@Param(value = "size") int size);

	/**
	 * 排行榜页面
	 * 
	 * @return
	 */
	public List<Song> getallsong();

}
