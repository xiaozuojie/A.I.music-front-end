package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.Song;

public interface SongDao {

	/**
	 * ��ȡ�¸��ǰʮ������ǰʮ��
	 * 
	 * @return
	 */

public List<Song> getallsong();
/**
 * ���ݸ��ֵı������ѯ����ǰ��20�׸����ղ�������
 */
public List<Song> getSingerSongbycollect(String singername);

	public List<Song> getNewSong(@Param(value = "size") int size);

	/**
	 * ��ȡ�ղ�����ǰʮ�ĸ�����Ϊ���а�ǰʮ
	 * 
	 * @return
	 */
	public List<Song> getSongByPaiHang(@Param(value = "size") int size);



}
