package com.etc.entity;

public class Userinfo {

	private int infoId;// �û�����ID
	private String userName;// �û�����
	private String userProfile;// �û����
	private String userSex;// �û��Ա�
	private String userBirthday;// �û�����
	private String userAddress;// �û���ַ
	private String userAccount;// �û��˺�
	private String userImage;// �û�ͼƬ

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
