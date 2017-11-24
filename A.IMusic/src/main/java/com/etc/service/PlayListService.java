package com.etc.service;

import java.util.List;

import com.etc.entity.Playlist;

public interface PlayListService {
	//获取所有歌单按照收藏量
	public List<Playlist> getallplaylist();
	//根据歌单类型获取歌单
    public List<Playlist> getallplaylistbytypename(String typename);
    
    /**
	 * 根据ID值获取相应的歌单信息
	 * 
	 * @param playlistId
	 * @return
	 */
	public List<Playlist> getPlayListById(int playlistId);

	/**
	 * 热门歌单前十五
	 * @return
	 */
	public List<Playlist> getremengedan();

    
}
