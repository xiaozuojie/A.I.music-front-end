package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.Song;

public interface SongDao {
	/**
	 * ��ȡ������������Ϣ
	 * @return
	 */
public List<Song> getallsong();
/**
 * ����ר������ȡ��صĸ���
 */
public List<Song> allsongalbumsname(@Param(value="albumsname")String albumsname);

}
