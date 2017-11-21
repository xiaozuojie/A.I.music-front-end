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

//获取前面的6条数据
	public List<Singer> getSingerbysix() {
	
		return ss.getSingerbysix();
	}

	public List<Singer> getSingerbysten() {
		// TODO Auto-generated method stub
		return ss.getSingerbyten();
	}
//获取前面的10条热门记录
	public List<Singer> getSingerbyremen() {
		// TODO Auto-generated method stub
		return ss.getSingerbyremeng();
	}
//获取所有的歌手数据
	public List<Singer> getallsinger() {
		// TODO Auto-generated method stub
		return ss.getallSinger();
	}
//按照收藏的量来排序歌手的数据
	public List<Singer> getallSingerbyshouchang() {
		// TODO Auto-generated method stub
		return ss.getallSingerbydesc();
	}

public List<Singer> getallSinerbyId(int SingerId) {
	// TODO Auto-generated method stub
	return ss.getoneSingerbyId(SingerId);
}
//根据歌手的姓名来获取歌手的所有信息
public List<Singer> getallsingerinfobysingername(String singername) {
	// TODO Auto-generated method stub
	return ss.getsingerinfobySingname(singername);
}

	

}
