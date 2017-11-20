package com.etc.dao;

import java.util.List;

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
	 * 根据id获取专辑详情
	 * @return
	 */
    public List<Albums> allalubms(int albumsid);
}
