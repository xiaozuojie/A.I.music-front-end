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
	   //���ݸ赥id��ȡ���и���
	public List<Playlistsongs> getplaylistsongs(int playlistid) {
	
		return pao.allplaylistsong(playlistid);
	}
	
	
}
