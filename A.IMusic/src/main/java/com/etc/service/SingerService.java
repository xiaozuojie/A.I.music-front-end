package com.etc.service;

import java.util.List;

import com.etc.entity.Singer;

public interface SingerService {

	//获取歌手前面的6条数据
	public List<Singer> getSingerbysix();
	//获取歌手前面的6条数据
	public List<Singer> getSingerbysten();
	
}
