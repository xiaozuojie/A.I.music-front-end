package com.etc.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.PlaylistsongDao;
import com.etc.entity.Playlistsongs;
import com.etc.service.Playlistsongservice;
@Service
public class Playlistsongserviceimpl implements Playlistsongservice {
	@Resource
	private PlaylistsongDao pao;
	   //根据歌单id获取所有歌曲
	public List<Playlistsongs> getplaylistsongs(int playlistid) {
	
		return pao.allplaylistsong(playlistid);
	}
	
	
}
