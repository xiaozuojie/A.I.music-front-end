package com.etc.service;

import java.util.List;

import com.etc.entity.Playlistsongs;

public interface Playlistsongservice {
//根据歌单id获取所有的歌曲
	public List<Playlistsongs>getplaylistsongs(int playlistid);
}
