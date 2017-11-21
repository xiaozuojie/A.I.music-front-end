package com.etc.service;

import java.util.List;

import com.etc.entity.Singer;

public interface SingerService {

	//获取歌手前面的6条数据
	public List<Singer> getSingerbysix();
	//获取歌手前面的10条数据
	public List<Singer> getSingerbysten();
	//获取热门歌手前面10条记录
	public List<Singer> getSingerbyremen();
	//获取入驻的歌手数据
	public List<Singer> getallsinger();
	//按照收藏的量来排序歌手的数据
	public List<Singer> getallSingerbyshouchang();
	//按照歌手的编号来获取歌手的信息
	public List<Singer> getallSinerbyId(int SingerId);
	//根据歌手的姓名来获取歌手的信息
	public List<Singer> getallsingerinfobysingername(String singername);
	
}
