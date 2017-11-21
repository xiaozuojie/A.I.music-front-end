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
//��ȡǰ���10�����ż�¼
	public List<Singer> getSingerbyremen() {
		// TODO Auto-generated method stub
		return ss.getSingerbyremeng();
	}
//��ȡ���еĸ�������
	public List<Singer> getallsinger() {
		// TODO Auto-generated method stub
		return ss.getallSinger();
	}
//�����ղص�����������ֵ�����
	public List<Singer> getallSingerbyshouchang() {
		// TODO Auto-generated method stub
		return ss.getallSingerbydesc();
	}

public List<Singer> getallSinerbyId(int SingerId) {
	// TODO Auto-generated method stub
	return ss.getoneSingerbyId(SingerId);
}
//���ݸ��ֵ���������ȡ���ֵ�������Ϣ
public List<Singer> getallsingerinfobysingername(String singername) {
	// TODO Auto-generated method stub
	return ss.getsingerinfobySingname(singername);
}

	

}
