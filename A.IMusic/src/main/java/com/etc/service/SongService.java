package com.etc.service;

import java.util.List;
import com.etc.entity.Song;

public interface SongService {

	/**
	 * 获取新歌榜前十（倒序前十）
	 * 
	 * @return
	 */
	public List<Song> getNewSong(int size);

	/**
	 * 获取收藏数量前十的歌曲作为排行榜前十
	 * 
	 * @return
	 */
	public List<Song> getSongByPaiHang(int size);

	/**
	 * 排行榜页面
	 * 
	 * @return
	 */
	public List<Song> getallsong();
	
}
