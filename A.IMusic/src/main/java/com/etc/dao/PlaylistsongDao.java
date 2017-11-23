package com.etc.dao;

import java.util.List;

import com.etc.entity.Playlistsongs;

public interface PlaylistsongDao {
  //根据歌单id获取所有的歌
	public List<Playlistsongs> allplaylistsong(int playlistsongid);
}
