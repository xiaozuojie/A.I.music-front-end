package com.etc.service;

import java.util.List;

import com.etc.entity.Playlist;

public interface PlayListService {
	//��ȡ���и赥�����ղ���
	public List<Playlist> getallplaylist();
	//���ݸ赥���ͻ�ȡ�赥
    public List<Playlist> getallplaylistbytypename(String typename);
}
