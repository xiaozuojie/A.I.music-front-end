package com.etc.entity;

public class User {

	private int userId;// 用户ID
	private String userAccount;// 用户账号
	private String userPwd;// 用户密码
	private String userType;// 用户类型

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userAccount=" + userAccount + ", userPwd=" + userPwd + ", userType="
				+ userType + "]";
	}

	public User(int userId, String userAccount, String userPwd, String userType) {
		super();
		this.userId = userId;
		this.userAccount = userAccount;
		this.userPwd = userPwd;
		this.userType = userType;
	}

	public User() {
		// TODO Auto-generated constructor stub
	}

}
