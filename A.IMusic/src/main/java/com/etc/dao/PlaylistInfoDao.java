package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.PlaylistInfo;

public interface PlaylistInfoDao {

	/**
	 * ��ȡ������Ӧ�ĸ���
	 * 
	 * @return
	 */
	public List<PlaylistInfo> getPlayListInfoById(@Param(value = "playlistId") int playlistId);

}
