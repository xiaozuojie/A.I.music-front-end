package com.etc.service;

import java.util.List;

import com.etc.entity.Playlistsongs;

public interface Playlistsongservice {
//���ݸ赥id��ȡ���еĸ���
	public List<Playlistsongs>getplaylistsongs(int playlistid);
}
