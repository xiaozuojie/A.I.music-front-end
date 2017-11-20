package com.etc.entity;

public class Playlist {

	private int playlistId;// �赥���
	private String playlistName;// �赥����
	private String playlistCreateTime;// ����ʱ��
	private String playlistTypeName;// �赥����
	private String playlistImage;// �赥��Ƭ
	private String playlistProfile;// �赥����
	private int playlistComments;// �赥�ղ���
	private int type;// �ղ�����

	public int getPlaylistId() {
		return playlistId;
	}

	public void setPlaylistId(int playlistId) {
		this.playlistId = playlistId;
	}

	public String getPlaylistName() {
		return playlistName;
	}

	public void setPlaylistName(String playlistName) {
		this.playlistName = playlistName;
	}

	public String getPlaylistCreateTime() {
		return playlistCreateTime;
	}

	public void setPlaylistCreateTime(String playlistCreateTime) {
		this.playlistCreateTime = playlistCreateTime;
	}

	public String getPlaylistTypeName() {
		return playlistTypeName;
	}

	public void setPlaylistTypeName(String playlistTypeName) {
		this.playlistTypeName = playlistTypeName;
	}

	public String getPlaylistImage() {
		return playlistImage;
	}

	public void setPlaylistImage(String playlistImage) {
		this.playlistImage = playlistImage;
	}

	public String getPlaylistProfile() {
		return playlistProfile;
	}

	public void setPlaylistProfile(String playlistProfile) {
		this.playlistProfile = playlistProfile;
	}

	public int getPlaylistComments() {
		return playlistComments;
	}

	public void setPlaylistComments(int playlistComments) {
		this.playlistComments = playlistComments;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Playlist [playlistId=" + playlistId + ", playlistName=" + playlistName + ", playlistCreateTime="
				+ playlistCreateTime + ", playlistTypeName=" + playlistTypeName + ", playlistImage=" + playlistImage
				+ ", playlistProfile=" + playlistProfile + ", playlistComments=" + playlistComments + ", type=" + type
				+ "]";
	}

	public Playlist(int playlistId, String playlistName, String playlistCreateTime, String playlistTypeName,
			String playlistImage, String playlistProfile, int playlistComments, int type) {
		super();
		this.playlistId = playlistId;
		this.playlistName = playlistName;
		this.playlistCreateTime = playlistCreateTime;
		this.playlistTypeName = playlistTypeName;
		this.playlistImage = playlistImage;
		this.playlistProfile = playlistProfile;
		this.playlistComments = playlistComments;
		this.type = type;
	}

	public Playlist() {
		// TODO Auto-generated constructor stub
	}

}
