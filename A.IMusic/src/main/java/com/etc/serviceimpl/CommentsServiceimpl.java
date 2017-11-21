package com.etc.serviceimpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.CommentsDao;
import com.etc.entity.Comments;
import com.etc.service.CommentsService;
@Service
public class CommentsServiceimpl implements CommentsService {
    @Resource
	private CommentsDao cd;
	public int gaddcomments(Comments usercomments) {
		// TODO Auto-generated method stub
		return cd.addcomment(usercomments);
	}

}
