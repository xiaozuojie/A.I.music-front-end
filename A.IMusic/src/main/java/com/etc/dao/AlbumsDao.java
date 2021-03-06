package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.Albums;

public interface AlbumsDao {
	/**
	 * 获取所有专辑(按照收藏率)
	 * @return
	 */
    public List<Albums> allalubms();
    /**
	 * 获取所有专辑(按照发布时间)
	 * @return
	 */
    public List<Albums> allalubmstime();
    /**
<<<<<<< HEAD
     * 根据专辑id获取专辑详情
     * 
     */
    public List<Albums> allalbumsid(int albumsid);
    /**
     * 根据歌手名获取其相关专辑
     * 
     */
    public List<Albums> allalbumssinger(@Param(value="singername") String singername);
    
     /*
	 * 根据id获取专辑详情
	 * @return
	 */
    public List<Albums> allalubms(int albumsid);
    /**
     * 根据歌手的姓名来获取歌手所有专辑
     */
    public List<Albums> allalubmsbysingername(String singername);
}
