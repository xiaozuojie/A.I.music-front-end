package com.etc.entity;

public class Comments {

	private int commentsId;// 评论ID
	private int commentsType;// 评论类型
	private String commentsDate;// 评论时间
	private int commentsNumber;// 评论数量
	private String commentsContent;// 评论内容
	private String userName;// 用户名

	public int getCommentsId() {
		return commentsId;
	}

	public void setCommentsId(int commentsId) {
		this.commentsId = commentsId;
	}

	public int getCommentsType() {
		return commentsType;
	}

	public void setCommentsType(int commentsType) {
		this.commentsType = commentsType;
	}

	public String getCommentsDate() {
		return commentsDate;
	}

	public void setCommentsDate(String commentsDate) {
		this.commentsDate = commentsDate;
	}

	public int getCommentsNumber() {
		return commentsNumber;
	}

	public void setCommentsNumber(int commentsNumber) {
		this.commentsNumber = commentsNumber;
	}

	public String getCommentsContent() {
		return commentsContent;
	}

	public void setCommentsContent(String commentsContent) {
		this.commentsContent = commentsContent;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "Comments [commentsId=" + commentsId + ", commentsType=" + commentsType + ", commentsDate="
				+ commentsDate + ", commentsNumber=" + commentsNumber + ", commentsContent=" + commentsContent
				+ ", userName=" + userName + "]";
	}

	public Comments(int commentsId, int commentsType, String commentsDate, int commentsNumber, String commentsContent,
			String userName) {
		super();
		this.commentsId = commentsId;
		this.commentsType = commentsType;
		this.commentsDate = commentsDate;
		this.commentsNumber = commentsNumber;
		this.commentsContent = commentsContent;
		this.userName = userName;
	}

	public Comments() {
		// TODO Auto-generated constructor stub
	}

}
