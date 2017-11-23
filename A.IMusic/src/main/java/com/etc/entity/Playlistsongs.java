package com.etc.entity;
/**
 * 根据歌单id获取其所有的歌
 * @author xiangrian
 *
 */
public class Playlistsongs {
	private int playlistId;//歌单id
	private int songid;//songId
	private String songName;//歌曲名
	private String singerName;//歌手名
	private String albumsName;//专辑名
	private String songImage;//歌曲图片
	private String songlocation;//歌曲地址
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
