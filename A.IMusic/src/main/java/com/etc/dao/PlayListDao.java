package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.Playlist;

public interface PlayListDao {
	//��ȡ���и赥�����ղ���
	public List<Playlist> allplaylist();
	//��ȡ�赥���ͻ�ȡ�赥
	public List<Playlist> allplaylistbyplaylistTypeName(@Param(value="typename")String typename);
	/**
	 * ����IDֵ��ȡ��Ӧ�ĸ赥��Ϣ
	 * 
	 * @param playlistId
	 * @return
	 */
	public List<Playlist> getPlayListById(@Param(value = "playlistId") int playlistId);
	
	/**
	 * ���Ÿ赥ǰʮ��
	 * @return
	 */
	public List<Playlist> getremengedan();

}
