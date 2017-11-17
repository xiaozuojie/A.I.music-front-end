package com.etc.entity;

public class Userinfo {

	private int infoId;// 用户详情ID
	private String userName;// 用户姓名
	private String userProfile;// 用户简介
	private String userSex;// 用户性别
	private String userBirthday;// 用户生日
	private String userAddress;// 用户地址
	private String userAccount;// 用户账号
	private String userImage;// 用户图片

	public int getInfoId() {
		return infoId;
	}

	public void setInfoId(int infoId) {
		this.infoId = infoId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(String userProfile) {
		this.userProfile = userProfile;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserBirthday() {
		return userBirthday;
	}

	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	@Override
	public String toString() {
		return "Userinfo [infoId=" + infoId + ", userName=" + userName + ", userProfile=" + userProfile + ", userSex="
				+ userSex + ", userBirthday=" + userBirthday + ", userAddress=" + userAddress + ", userAccount="
				+ userAccount + ", userImage=" + userImage + "]";
	}

	public Userinfo(int infoId, String userName, String userProfile, String userSex, String userBirthday,
			String userAddress, String userAccount, String userImage) {
		super();
		this.infoId = infoId;
		this.userName = userName;
		this.userProfile = userProfile;
		this.userSex = userSex;
		this.userBirthday = userBirthday;
		this.userAddress = userAddress;
		this.userAccount = userAccount;
		this.userImage = userImage;
	}

	public Userinfo() {
		// TODO Auto-generated constructor stub
	}

}
