package com.etc.dao;

import java.util.List;

import com.etc.entity.Playlistsongs;

public interface PlaylistsongDao {
  //���ݸ赥id��ȡ���еĸ�
	public List<Playlistsongs> allplaylistsong(int playlistsongid);
}
