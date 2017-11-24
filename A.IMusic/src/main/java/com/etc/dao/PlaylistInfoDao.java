package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.PlaylistInfo;

public interface PlaylistInfoDao {

	/**
	 * 获取跟单相应的歌曲
	 * 
	 * @return
	 */
	public List<PlaylistInfo> getPlayListInfoById(@Param(value = "playlistId") int playlistId);

}
