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

}
