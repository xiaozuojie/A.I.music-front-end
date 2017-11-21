package com.etc.entity;

import java.io.Serializable;

/**
 * ר�������ʵ����
 * @author xiangrian
 *
 */
public class Albumscomment implements Serializable{
	private static final long serialVersionUID = 160566056786356713L;
	private String userImage;//�����û�ͷ��
	private int commentsid;//�������۵�id
	private int albumsId;//������ר��id
	private int commentstypeId;//��ר��idһ��
	private int commentzan;//��������ĵ�����
	private String commentsContent;//���۵�����
	private String commentsDate;//���۵�ʱ��
	private int commentsType;//���۵�����(�赥��ר��������)
	private String userName;//�û���
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
