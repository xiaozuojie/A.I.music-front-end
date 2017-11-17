package com.etc.entity;

public class Collection {

	private int collectionId;// 收藏id
	private String userName;// 用户姓名
	private int type;// 收藏的类型
	private int collectionNumber;// 收藏的编号

	public int getCollectionId() {
		return collectionId;
	}

	public void setCollectionId(int collectionId) {
		this.collectionId = collectionId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getCollectionNumber() {
		return collectionNumber;
	}

	public void setCollectionNumber(int collectionNumber) {
		this.collectionNumber = collectionNumber;
	}

	@Override
	public String toString() {
		return "Collection [collectionId=" + collectionId + ", userName=" + userName + ", type=" + type
				+ ", collectionNumber=" + collectionNumber + "]";
	}

	public Collection(int collectionId, String userName, int type, int collectionNumber) {
		super();
		this.collectionId = collectionId;
		this.userName = userName;
		this.type = type;
		this.collectionNumber = collectionNumber;
	}

	public Collection() {
		// TODO Auto-generated constructor stub
	}

}
