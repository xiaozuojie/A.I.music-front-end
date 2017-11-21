package com.etc.dao;

import java.util.List;

import com.etc.entity.Albumscomment;

public interface AlbumscommentDao {
	//根据专辑id获得所需要信息
	public List<Albumscomment> allAlbumscomment(int zhuaanjiid);

}
