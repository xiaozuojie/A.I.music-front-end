package com.etc.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.PlaylistInfoDao;
import com.etc.entity.PlaylistInfo;
import com.etc.service.PlaylistInfoService;

@Service
public class PlaylistInfoServiceImpl implements PlaylistInfoService {

	@Resource
	private PlaylistInfoDao pid;

	public List<PlaylistInfo> getPlayListInfoById(int playlistId) {
		// TODO Auto-generated method stub
		return pid.getPlayListInfoById(playlistId);
	}

}
