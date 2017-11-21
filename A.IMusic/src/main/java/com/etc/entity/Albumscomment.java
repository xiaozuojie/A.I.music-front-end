package com.etc.entity;

import java.io.Serializable;

/**
 * 专辑详情的实体类
 * @author xiangrian
 *
 */
public class Albumscomment implements Serializable{
	private static final long serialVersionUID = 160566056786356713L;
	private String userImage;//评论用户头像
	private int commentsid;//这条评论的id
	private int albumsId;//所评论专辑id
	private int commentstypeId;//和专辑id一样
	private int commentzan;//评论所获的点赞数
	private String commentsContent;//评论的内容
	private String commentsDate;//评论的时间
	private int commentsType;//评论的类型(歌单、专辑、单曲)
	private String userName;//用户名
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	public int getCommentsid() {
		return commentsid;
	}
	public void setCommentsid(int commentsid) {
		this.commentsid = commentsid;
	}
	public int getAlbumsId() {
		return albumsId;
	}
	public void setAlbumsId(int albumsId) {
		this.albumsId = albumsId;
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
	public String getCommentsContent() {
		return commentsContent;
	}
	public void setCommentsContent(String commentsContent) {
		this.commentsContent = commentsContent;
	}
	public String getCommentsDate() {
		return commentsDate;
	}
	public void setCommentsDate(String commentsDate) {
		this.commentsDate = commentsDate;
	}
	public int getCommentsType() {
		return commentsType;
	}
	public void setCommentsType(int commentsType) {
		this.commentsType = commentsType;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Albumscomment(String userImage, int commentsid, int albumsId, int commentstypeId, int commentzan,
			String commentsContent, String commentsDate, int commentsType, String userName) {
		super();
		this.userImage = userImage;
		this.commentsid = commentsid;
		this.albumsId = albumsId;
		this.commentstypeId = commentstypeId;
		this.commentzan = commentzan;
		this.commentsContent = commentsContent;
		this.commentsDate = commentsDate;
		this.commentsType = commentsType;
		this.userName = userName;
	}
	public Albumscomment() {
		super();
	}
	@Override
	public String toString() {
		return "Albumscomment [userImage=" + userImage + ", commentsid=" + commentsid + ", albumsId=" + albumsId
				+ ", commentstypeId=" + commentstypeId + ", commentzan=" + commentzan + ", commentsContent="
				+ commentsContent + ", commentsDate=" + commentsDate + ", commentsType=" + commentsType + ", userName="
				+ userName + "]";
	}
	
}
