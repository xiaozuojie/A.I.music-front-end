package com.etc.entity;

public class Comments {

	private int commentsId;// 评论ID
	private int commentsType;// 评论类型
	private String commentsDate;// 评论时间
	private String commentsContent;// 评论内容
	private String userName;// 用户名
	private int commentstypeId;//评论中类型的编号
	private int commentzan;//所获的点赞的量
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
	public int getCommentstypeId() {
		return commentstypeId;
	}
	public void setCommentstypeId(int commentstypeId) {
		this.commentstypeId = commentstypeId;
	}
	public int getCommentzan() {
		return commentzan;
	}
	public void setCommentzan(int commentzan) {
		this.commentzan = commentzan;
	}
	public Comments(int commentsId, int commentsType, String commentsDate, String commentsContent, String userName,
			int commentstypeId, int commentzan) {
		super();
		this.commentsId = commentsId;
		this.commentsType = commentsType;
		this.commentsDate = commentsDate;
		this.commentsContent = commentsContent;
		this.userName = userName;
		this.commentstypeId = commentstypeId;
		this.commentzan = commentzan;
	}
	public Comments() {
		super();
	}
	@Override
	public String toString() {
		return "Comments [commentsId=" + commentsId + ", commentsType=" + commentsType + ", commentsDate="
				+ commentsDate + ", commentsContent=" + commentsContent + ", userName=" + userName + ", commentstypeId="
				+ commentstypeId + ", commentzan=" + commentzan + "]";
	}
	public Comments(int commentsType, String commentsDate, String commentsContent, String userName,
			int commentstypeId) {
		super();
		this.commentsType = commentsType;
		this.commentsDate = commentsDate;
		this.commentsContent = commentsContent;
		this.userName = userName;
		this.commentstypeId = commentstypeId;
	}
	
}
