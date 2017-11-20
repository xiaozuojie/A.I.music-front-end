package com.etc.serviceimpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.etc.dao.SongDao;
import com.etc.entity.Song;
import com.etc.service.SongService;

@Service
public class SongServiceImpl implements SongService {

	
	@Resource
	private SongDao sd;
	
	/**
	 * ���ղ��������õ������ĸ赥����
	 */
	public List<Song> getsong() {
		// TODO Auto-generated method stub
		return sd.getallsong();
	}

}
