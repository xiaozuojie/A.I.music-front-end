package com.etc.serviceimpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.UserDao;
import com.etc.entity.User;
import com.etc.service.UserService;

@Service
public class UserServiceimpl implements UserService {
	@Resource
	private UserDao ud;

	public Integer selectByPhone(String userAccount) {
		// TODO Auto-generated method stub
		return ud.selectByPhone(userAccount);
	}

	public User selectByAccount(String userAccount, String userPwd) {
		// TODO Auto-generated method stub
		return ud.selectByAccount(userAccount, userPwd);
	}

	public Integer selectByName(String userName) {
		// TODO Auto-generated method stub
		return ud.selectByName(userName);
	}

	public int insertUser(String userAccount, String userPwd) {
		// TODO Auto-generated method stub
		return ud.insertUser(userAccount, userPwd);
	}

	public int insertUserinfo(String userName, String userAccount) {
		// TODO Auto-generated method stub
		return ud.insertUserinfo(userName, userAccount);
	}

	public String selectTouxiang(String userAccount) {
		// TODO Auto-generated method stub
		return ud.selectTouxiang(userAccount);
	}
}
