package com.etc.dao;

import org.apache.ibatis.annotations.Param;

import com.etc.entity.User;

public interface UserDao {
	/**
	 * ≤È—Ø’ ∫≈–≈œ¢
	 * 
	 * @return
	 */
	public User selectByAccount(@Param(value = "userAccount") String userAccount,
			@Param(value = "userPwd") String userPwd);

	public Integer selectByPhone(String userAccount);
	
	public String selectTouxiang(String userAccount);

	public Integer selectByName(String userName);

	public int insertUser(@Param(value = "userAccount") String userAccount, @Param(value = "userPwd")String userPwd);

	public int insertUserinfo(@Param(value = "userName")String userName,@Param(value = "userAccount") String userAccount);

}
