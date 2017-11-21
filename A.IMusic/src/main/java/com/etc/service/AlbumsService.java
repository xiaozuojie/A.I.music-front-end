package com.etc.service;

import java.util.List;

import com.etc.entity.Albums;

public interface AlbumsService {
	//按照收藏率
    public List<Albums> getallalbums();
    //按照发布时间
    public List<Albums> getallalbumstime();
    //按照专辑id
    public List<Albums> getallalbumsid(int albumsid);
    //根据歌手获取相关专辑
    public List<Albums> getallalbumssingername(String singername);
    
}
