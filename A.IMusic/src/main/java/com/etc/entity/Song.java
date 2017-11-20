package com.etc.entity;

import java.io.Serializable;

public class Song implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5009794260243105840L;
	private int songId;// 歌曲编号
	private String songName;// 歌曲的名称
	private String singerName;// 歌手名
	private String albumsName;// 专辑名
	private String lyrics;// 歌词
	private String songImage;// 歌曲的图片
	private String collection;// 歌曲收藏类型
	private String songComments;// 歌曲评论
	private String songTime;// 歌曲时长
	private String songlocation;//歌曲的地址
	private String colletionnumber;//歌曲收藏的数量
	public int getSongId() {
		return songId;
	}
	public void setSongId(int songId) {
		this.songId = songId;
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
	public String getLyrics() {
		return lyrics;
	}
	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}
	public String getSongImage() {
		return songImage;
	}
	public void setSongImage(String songImage) {
		this.songImage = songImage;
	}
	public String getCollection() {
		return collection;
	}
	public void setCollection(String collection) {
		this.collection = collection;
	}
	public String getSongComments() {
		return songComments;
	}
	public void setSongComments(String songComments) {
		this.songComments = songComments;
	}
	public String getSongTime() {
		return songTime;
	}
	public void setSongTime(String songTime) {
		this.songTime = songTime;
	}
	public String getSonglocation() {
		return songlocation;
	}
	public void setSonglocation(String songlocation) {
		this.songlocation = songlocation;
	}
	public String getColletionnumber() {
		return colletionnumber;
	}
	public void setColletionnumber(String colletionnumber) {
		this.colletionnumber = colletionnumber;
	}
	@Override
	public String toString() {
		return "Song [songId=" + songId + ", songName=" + songName + ", singerName=" + singerName + ", albumsName="
				+ albumsName + ", lyrics=" + lyrics + ", songImage=" + songImage + ", collection=" + collection
				+ ", songComments=" + songComments + ", songTime=" + songTime + ", songlocation=" + songlocation
				+ ", colletionnumber=" + colletionnumber + "]";
	}
	public Song(int songId, String songName, String singerName, String albumsName, String lyrics, String songImage,
			String collection, String songComments, String songTime, String songlocation, String colletionnumber) {
		super();
		this.songId = songId;
		this.songName = songName;
		this.singerName = singerName;
		this.albumsName = albumsName;
		this.lyrics = lyrics;
		this.songImage = songImage;
		this.collection = collection;
		this.songComments = songComments;
		this.songTime = songTime;
		this.songlocation = songlocation;
		this.colletionnumber = colletionnumber;
	}
	public Song() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
