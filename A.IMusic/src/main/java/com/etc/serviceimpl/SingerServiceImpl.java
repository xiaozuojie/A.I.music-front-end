package com.etc.serviceimpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.etc.dao.SingerDao;
import com.etc.entity.Singer;
import com.etc.service.SingerService;


@Service
public class SingerServiceImpl implements SingerService {

	
	@Resource
	private SingerDao ss;

//��ȡǰ���6������
	public List<Singer> getSingerbysix() {
	
		return ss.getSingerbysix();
	}

	public List<Singer> getSingerbysten() {
		// TODO Auto-generated method stub
		return ss.getSingerbyten();
	}

}
