package com.etc.service;

import java.util.List;
import com.etc.entity.Song;

public interface SongService {

	//���ղ��������õ������ĸ赥����
	public List<Song> getsong();
	//����ר�����ֻ�ȡ��صĸ���
	public List<Song> getsongalbumsid(String albumsname);
}
