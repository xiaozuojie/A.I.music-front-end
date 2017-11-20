package com.etc.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.PlayListDao;
import com.etc.entity.Playlist;
import com.etc.service.PlayListService;
@Service
public class PlayListServiceimpl implements PlayListService {
    @Resource
	private PlayListDao po;
	public List<Playlist> getallplaylist() {
		
		return po.allplaylist();
	}
	public List<Playlist> getallplaylistbytypename(String typename) {
		 
		return po.allplaylistbyplaylistTypeName(typename);
	}

}
