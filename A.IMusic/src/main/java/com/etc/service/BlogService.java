package com.etc.service;

import java.util.List;

import com.etc.entity.Blog;

public interface BlogService {

	//这里的返回值类型可以根据自己的需要来调整/
    //例如如果是一个分页操作 可以返回一个PageData
	
	public List<Blog> getAllBlog();
}
