package com.etc.service;

import java.util.List;
import com.etc.entity.Song;

public interface SongService {

	/**
	 * ��ȡ�¸��ǰʮ������ǰʮ��
	 * 
	 * @return
	 */
	public List<Song> getNewSong(int size);

	/**
	 * ��ȡ�ղ�����ǰʮ�ĸ�����Ϊ���а�ǰʮ
	 * 
	 * @return
	 */
	public List<Song> getSongByPaiHang(int size);

	/**
	 * ���а�ҳ��
	 * 
	 * @return
	 */
	public List<Song> getallsong();
	
}
