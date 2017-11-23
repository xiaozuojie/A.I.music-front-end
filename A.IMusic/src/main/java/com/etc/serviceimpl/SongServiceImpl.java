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
	 * ��ȡ�¸��ǰʮ������ǰʮ��
	 */
	public List<Song> getNewSong(int size) {
		// TODO Auto-generated method stub
		return sd.getNewSong(size);
	}

	/**
	 * ��ȡ�ղ�����ǰʮ�ĸ�����Ϊ���а�ǰʮ
	 */
	public List<Song> getSongByPaiHang(int size) {
		// TODO Auto-generated method stub
		return sd.getSongByPaiHang(size);
	}

	/**
	 * ���а�ҳ��
	 * 
	 * @return
	 */
	public List<Song> getallsong() {
		// TODO Auto-generated method stub
		return sd.getallsong();
	}
	/**
	 * ���ݸ��ֵ���������ȡ���еĸ��ְ����ղ����е�ǰ20�׸���
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
