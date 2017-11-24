package com.etc.service;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.User;

public interface UserService {

	public Integer selectByPhone(String userAccount);

	public User selectByAccount(@Param(value = "userAccount") String userAccount,
			@Param(value = "userPwd") String userPwd);

	public Integer selectByName(String userName);
	
	public String selectTouxiang(String userAccount);

	public int insertUser(@Param(value = "userAccount") String userAccount, @Param(value = "userPwd") String userPwd);

	public int insertUserinfo(@Param(value = "userName") String userName,
			@Param(value = "userAccount") String userAccount);
}
