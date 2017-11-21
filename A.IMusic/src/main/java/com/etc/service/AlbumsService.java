package com.etc.service;

import java.util.List;

import com.etc.entity.Albums;

public interface AlbumsService {
	//按照收藏率
    public List<Albums> getallalbums();
    //按照发布时间
    public List<Albums> getallalbumstime();
    //根据歌手的姓名来获取歌手的专辑
    public List<Albums> getallalbumsbysingername(String singername);
}
