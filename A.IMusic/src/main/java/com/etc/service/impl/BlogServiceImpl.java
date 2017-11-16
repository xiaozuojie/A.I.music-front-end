package com.etc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.BlogDao;
import com.etc.entity.Blog;
import com.etc.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService {

	//调用Blogdao对象
	//@Resource  //默认是按照name来注入的,如果没有name，按照type去注入
	//@Autowired //默认是按照类型来注入的
	//@Qualifier
	@Resource
	private BlogDao bd;
	
	/*public BlogDao getBd() {
		return bd;
	}*/

	//不写name 的时候默认按照type注入
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
