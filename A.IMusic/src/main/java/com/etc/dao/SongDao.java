package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.Song;

public interface SongDao {
	/**
	 * 获取歌曲的所有信息
	 * @return
	 */
public List<Song> getallsong();
/**
 * 根据专辑名获取相关的歌曲
 */
public List<Song> allsongalbumsname(@Param(value="albumsname")String albumsname);

}
