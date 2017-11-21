package com.etc.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.AlbumsDao;
import com.etc.dao.AlbumscommentDao;
import com.etc.entity.Albums;
import com.etc.entity.Albumscomment;
import com.etc.service.AlbumsService;
import com.etc.service.Albumscommentservice;
@Service
public class AlbumscommentServiceimpl implements Albumscommentservice {
    @Resource
	private AlbumscommentDao ai;
	public List<Albumscomment> getallalbumscomment(int albumsid) {
		// TODO Auto-generated method stub
		return ai.allAlbumscomment(albumsid);
	}
	
}
