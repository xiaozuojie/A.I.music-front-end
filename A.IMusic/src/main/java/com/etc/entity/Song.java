package com.etc.entity;

public class Song {
	private int songId;// ¸èÇú±àºÅ
	private String songName;// ¸èÇúµÄÃû³Æ
	private String singerName;// ¸èÊÖÃû
	private String albumsName;// ×¨¼­Ãû
	private String lyrics;// ¸è´Ê
	private String songImage;// ¸èÇúµÄÍ¼Æ¬
	private String collection;// ¸èÇúÊÕ²Ø
	private String songComments;// ¸èÇúÆÀÂÛ
	private String songTime;// ¸èÇúÊ±³¤

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

	@Override
	public String toString() {
		return "song [songId=" + songId + ", songName=" + songName + ", singerName=" + singerName + ", albumsName="
				+ albumsName + ", lyrics=" + lyrics + ", songImage=" + songImage + ", collection=" + collection
				+ ", songComments=" + songComments + ", songTime=" + songTime + "]";
	}

	public Song(int songId, String songName, String singerName, String albumsName, String lyrics, String songImage,
			String collection, String songComments, String songTime) {
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
	}

	public Song() {
		super();
		// TODO Auto-generated constructor stub
	}

}
