package com.etc.service;

import java.util.List;
import com.etc.entity.Song;

public interface SongService {


	//按收藏数量来得到飙升版的歌单数据
	public List<Song> getsong();
	//根据专辑名字获取相关的歌曲
	public List<Song> getsongalbumsid(String albumsname);


	//按照歌手的姓名来获取歌手按照收藏量的歌曲数据
	public List<Song> getsongbysingerName(String singername);
    //根据专辑名获取所有歌曲
	public List<Song> getsongbyalbumsname(String albumsname);
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
