package com.etc.dao;

import java.util.List;

import com.etc.entity.Singer;

public interface SingerDao {
	/**
	 * 获取前面6个歌手的数量
	 * @return
	 */
public List<Singer> getSingerbysix();
/**
 * 前10个入驻歌手
 */
public List<Singer> getSingerbyten();

}
