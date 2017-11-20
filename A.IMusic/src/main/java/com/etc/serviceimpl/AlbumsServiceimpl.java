package com.etc.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.AlbumsDao;
import com.etc.entity.Albums;
import com.etc.service.AlbumsService;
@Service
public class AlbumsServiceimpl implements AlbumsService {
    @Resource
	private AlbumsDao ad;
	public List<Albums> getallalbums() {
		// TODO Auto-generated method stub
		return ad.allalubms();
	}
	public List<Albums> getallalbumstime() {
		// TODO Auto-generated method stub
		return ad.allalubmstime();
	}

}
