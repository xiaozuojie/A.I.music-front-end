package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.Playlist;

public interface PlayListDao {
	//获取所有歌单根据收藏量
	public List<Playlist> allplaylist();
	//获取歌单类型获取歌单
	public List<Playlist> allplaylistbyplaylistTypeName(@Param(value="typename")String typename);

}
