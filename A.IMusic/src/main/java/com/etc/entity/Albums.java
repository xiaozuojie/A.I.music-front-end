package com.etc.entity;

import java.io.Serializable;

public class Albums implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3122923261481024672L;
	private int albumsId;// ר�����
	private String albumsName;// ר������
	private String singerName;// ��������
	private String issueTime;// ����ʱ��
	private String albumsProfile;// ר�������ݼ��
	private String albumsImage;// ר��ͼƬ
	private int collection;// �ղص�����
	private int collectionnumber;//���ղ���
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
