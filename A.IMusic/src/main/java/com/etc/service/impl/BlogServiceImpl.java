package com.etc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.BlogDao;
import com.etc.entity.Blog;
import com.etc.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService {

	//����Blogdao����
	//@Resource  //Ĭ���ǰ���name��ע���,���û��name������typeȥע��
	//@Autowired //Ĭ���ǰ���������ע���
	//@Qualifier
	@Resource
	private BlogDao bd;
	
	/*public BlogDao getBd() {
		return bd;
	}*/

	//��дname ��ʱ��Ĭ�ϰ���typeע��
	//@Resource(name="bd")
	/*@Resource
	public void setBd(BlogDao bd) {
		this.bd = bd;
	}*/

	public List<Blog> getAllBlog() {
		// TODO Auto-generated method stub
		return bd.getAllBlog();
	}

}
