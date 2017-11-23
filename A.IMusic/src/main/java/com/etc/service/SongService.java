package com.etc.service;

import java.util.List;
import com.etc.entity.Song;

public interface SongService {


	//���ղ��������õ������ĸ赥����
	public List<Song> getsong();
	//����ר�����ֻ�ȡ��صĸ���
	public List<Song> getsongalbumsid(String albumsname);


	//���ո��ֵ���������ȡ���ְ����ղ����ĸ�������
	public List<Song> getsongbysingerName(String singername);
    //����ר������ȡ���и���
	public List<Song> getsongbyalbumsname(String albumsname);
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
