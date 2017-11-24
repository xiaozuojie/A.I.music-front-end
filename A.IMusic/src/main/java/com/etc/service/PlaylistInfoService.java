package com.etc.service;

import java.util.List;

import com.etc.entity.PlaylistInfo;

public interface PlaylistInfoService {

	/**
	 * 获取跟单相应的歌曲
	 * 
	 * @return
	 */
	public List<PlaylistInfo> getPlayListInfoById(int playlistId);

}
