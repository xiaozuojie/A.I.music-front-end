package com.etc.entity;

public class Singer {

	private int singerId;// ����id
	private String singerName;// ��������
	private String singerSex;// �����Ա�
	private String singerProfile;// ���ּ��
	private String singerAccount;// �ղ�����
	private String singerImage;// ����ͼƬ
	private int collection;// �ղ���

	public int getSingerId() {
		return singerId;
	}

	public void setSingerId(int singerId) {
		this.singerId = singerId;
	}

	public String getSingerName() {
		return singerName;
	}

	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}

	public String getSingerSex() {
		return singerSex;
	}

	public void setSingerSex(String singerSex) {
		this.singerSex = singerSex;
	}

	public String getSingerProfile() {
		return singerProfile;
	}

	public void setSingerProfile(String singerProfile) {
		this.singerProfile = singerProfile;
	}

	public String getSingerAccount() {
		return singerAccount;
	}

	public void setSingerAccount(String singerAccount) {
		this.singerAccount = singerAccount;
	}

	public String getSingerImage() {
		return singerImage;
	}

	public void setSingerImage(String singerImage) {
		this.singerImage = singerImage;
	}

	public int getCollection() {
		return collection;
	}

	public void setCollection(int collection) {
		this.collection = collection;
	}

	@Override
	public String toString() {
		return "Singer [singerId=" + singerId + ", singerName=" + singerName + ", singerSex=" + singerSex
				+ ", singerProfile=" + singerProfile + ", singerAccount=" + singerAccount + ", singerImage="
				+ singerImage + ", collection=" + collection + "]";
	}

	public Singer(int singerId, String singerName, String singerSex, String singerProfile, String singerAccount,
			String singerImage, int collection) {
		super();
		this.singerId = singerId;
		this.singerName = singerName;
		this.singerSex = singerSex;
		this.singerProfile = singerProfile;
		this.singerAccount = singerAccount;
		this.singerImage = singerImage;
		this.collection = collection;
	}

	public Singer() {
		// TODO Auto-generated constructor stub
	}

}
