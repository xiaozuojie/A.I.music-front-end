package com.etc.dao;

import java.util.List;

import com.etc.entity.Song;

public interface SongDao {
	/**
	 * ��ȡ������������Ϣ
	 * @return
	 */
public List<Song> getallsong();
/**
 * ���ݸ��ֵı������ѯ����ǰ��20�׸����ղ�������
 */
public List<Song> getSingerSongbycollect(String singername);

}
