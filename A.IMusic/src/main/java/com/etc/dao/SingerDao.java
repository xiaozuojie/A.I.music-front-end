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

/**
 * 根据歌手的收藏量取前面10条记录
 */
public List<Singer> getSingerbyremeng();
/**
 * 查询所有入驻的歌手
 */
public List<Singer> getallSinger();
/**
 * 按收藏排序所有的歌手
 */
public List<Singer> getallSingerbydesc();
/**
 * 根据歌手的编号来获取歌手的信息
 */
public List<Singer> getoneSingerbyId(int singerid);
/**
 * 根据歌手的姓名来获取歌手的信息
 * 
 */
public List<Singer> getsingerinfobySingname(String singername);

}

