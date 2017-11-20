package com.etc.entity;

import java.io.Serializable;

public class Albums implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3122923261481024672L;
	private int albumsId;// 专辑编号
	private String albumsName;// 专辑名字
	private String singerName;// 歌手姓名
	private String issueTime;// 发行时间
	private String albumsProfile;// 专辑的内容简介
	private String albumsImage;// 专辑图片
	private int collection;// 收藏的类型
	private int collectionnumber;//被收藏数
	public int getAlbumsId() {
		return albumsId;
	}
	public void setAlbumsId(int albumsId) {
		this.albumsId = albumsId;
	}
	public String getAlbumsName() {
		return albumsName;
	}
	public void setAlbumsName(String albumsName) {
		this.albumsName = albumsName;
	}
	public String getSingerName() {
		return singerName;
	}
	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}
	public String getIssueTime() {
		return issueTime;
	}
	public void setIssueTime(String issueTime) {
		this.issueTime = issueTime;
	}
	public String getAlbumsProfile() {
		return albumsProfile;
	}
	public void setAlbumsProfile(String albumsProfile) {
		this.albumsProfile = albumsProfile;
	}
	public String getAlbumsImage() {
		return albumsImage;
	}
	public void setAlbumsImage(String albumsImage) {
		this.albumsImage = albumsImage;
	}
	public int getCollection() {
		return collection;
	}
	public void setCollection(int collection) {
		this.collection = collection;
	}
	public int getCollectionnumber() {
		return collectionnumber;
	}
	public void setCollectionnumber(int collectionnumber) {
		this.collectionnumber = collectionnumber;
	}
	public Albums(int albumsId, String albumsName, String singerName, String issueTime, String albumsProfile,
			String albumsImage, int collection, int collectionnumber) {
		super();
		this.albumsId = albumsId;
		this.albumsName = albumsName;
		this.singerName = singerName;
		this.issueTime = issueTime;
		this.albumsProfile = albumsProfile;
		this.albumsImage = albumsImage;
		this.collection = collection;
		this.collectionnumber = collectionnumber;
	}
	@Override
	public String toString() {
		return "Albums [albumsId=" + albumsId + ", albumsName=" + albumsName + ", singerName=" + singerName
				+ ", issueTime=" + issueTime + ", albumsProfile=" + albumsProfile + ", albumsImage=" + albumsImage
				+ ", collection=" + collection + ", collectionnumber=" + collectionnumber + "]";
	}
	public Albums() {
		super();
	}
	
}
