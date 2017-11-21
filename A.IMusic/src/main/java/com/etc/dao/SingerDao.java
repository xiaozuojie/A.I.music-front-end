package com.etc.dao;

import java.util.List;

import com.etc.entity.Singer;

public interface SingerDao {
	/**
	 * ��ȡǰ��6�����ֵ�����
	 * @return
	 */
public List<Singer> getSingerbysix();
/**
 * ǰ10����פ����
 */
public List<Singer> getSingerbyten();

/**
 * ���ݸ��ֵ��ղ���ȡǰ��10����¼
 */
public List<Singer> getSingerbyremeng();
/**
 * ��ѯ������פ�ĸ���
 */
public List<Singer> getallSinger();
/**
 * ���ղ��������еĸ���
 */
public List<Singer> getallSingerbydesc();
/**
 * ���ݸ��ֵı������ȡ���ֵ���Ϣ
 */
public List<Singer> getoneSingerbyId(int singerid);
/**
 * ���ݸ��ֵ���������ȡ���ֵ���Ϣ
 * 
 */
public List<Singer> getsingerinfobySingname(String singername);

}

