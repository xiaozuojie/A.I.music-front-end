package com.etc.entity;
/**
 * ���ݸ赥id��ȡ�����еĸ�
 * @author xiangrian
 *
 */
public class Playlistsongs {
	private int playlistId;//�赥id
	private int songid;//songId
	private String songName;//������
	private String singerName;//������
	private String albumsName;//ר����
	private String songImage;//����ͼƬ
	private String songlocation;//������ַ
	public int getPlaylistId() {
		return playlistId;
	}
	public void setPlaylistId(int playlistId) {
		this.playlistId = playlistId;
	}
	public int getSongid() {
		return songid;
	}
	public void setSongid(int songid) {
		this.songid = songid;
	}
	public String getSongName() {
		return songName;
	}
	public void setSongName(String songName) {
		this.songName = songName;
	}
	public String getSingerName() {
		return singerName;
	}
	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}
	public String getAlbumsName() {
		return albumsName;
	}
	public void setAlbumsName(String albumsName) {
		this.albumsName = albumsName;
	}
	public String getSongImage() {
		return songImage;
	}
	public void setSongImage(String songImage) {
		this.songImage = songImage;
	}
	public String getSonglocation() {
		return songlocation;
	}
	public void setSonglocation(String songlocation) {
		this.songlocation = songlocation;
	}
	public Playlistsongs(int playlistId, int songid, String songName, String singerName, String albumsName,
			String songImage, String songlocation) {
		super();
		this.playlistId = playlistId;
		this.songid = songid;
		this.songName = songName;
		this.singerName = singerName;
		this.albumsName = albumsName;
		this.songImage = songImage;
		this.songlocation = songlocation;
	}
	public Playlistsongs() {
		super();
	}
	@Override
	public String toString() {
		return "Playlistsongs [playlistId=" + playlistId + ", songid=" + songid + ", songName=" + songName
				+ ", singerName=" + singerName + ", albumsName=" + albumsName + ", songImage=" + songImage
				+ ", songlocation=" + songlocation + "]";
	}
	

}
