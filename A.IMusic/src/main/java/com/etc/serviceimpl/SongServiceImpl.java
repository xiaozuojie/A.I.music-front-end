package com.etc.serviceimpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.etc.dao.SongDao;
import com.etc.entity.Song;
import com.etc.service.SongService;

@Service
public class SongServiceImpl implements SongService {

	@Resource
	private SongDao sd;

	/**
	 * 获取新歌榜前十（倒序前十）
	 */
	public List<Song> getNewSong(int size) {
		// TODO Auto-generated method stub
		return sd.getNewSong(size);
	}

	/**
	 * 获取收藏数量前十的歌曲作为排行榜前十
	 */
	public List<Song> getSongByPaiHang(int size) {
		// TODO Auto-generated method stub
		return sd.getSongByPaiHang(size);
	}

	/**
	 * 排行榜页面
	 * 
	 * @return
	 */
	public List<Song> getallsong() {
		// TODO Auto-generated method stub
		return sd.getallsong();
	}
	/**
	 * 根据歌手的姓名来获取其中的歌手按照收藏排行的前20首歌曲
	 */
	public List<Song> getsongbysingerName(String singername) {
		// TODO Auto-generated method stub
		return sd.getSingerSongbycollect(singername);
	}


	public List<Song> getsongalbumsid(String albumsname) {
		// TODO Auto-generated method stub
		return sd.allsongalbumsname(albumsname);
	}

	public List<Song> getsong() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Song> getSongInfo(int songid) {
		// TODO Auto-generated method stub
		return sd.getSonginfo(songid);
	}


	
	
}
