package com.etc.service;

import java.util.List;

import com.etc.entity.PlaylistInfo;

public interface PlaylistInfoService {

	/**
	 * ��ȡ������Ӧ�ĸ���
	 * 
	 * @return
	 */
	public List<PlaylistInfo> getPlayListInfoById(int playlistId);

}
