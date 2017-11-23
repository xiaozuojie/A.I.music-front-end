package com.etc.entity;
/**
 * 播放器的json格式
 * @author xiangrian
 *
 */
public class SongJson {
	private  String file ;//歌曲地址
	private  String thumb ;//歌曲图片地址
	private  String trackName ;//歌曲名字
	private  String trackArtist ;//歌手名字
	private  String trackAlbum ;//专辑名字
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getThumb() {
		return thumb;
	}
	public void setThumb(String thumb) {
		this.thumb = thumb;
	}
	public String getTrackName() {
		return trackName;
	}
	public void setTrackName(String trackName) {
		this.trackName = trackName;
	}
	public String getTrackArtist() {
		return trackArtist;
	}
	public void setTrackArtist(String trackArtist) {
		this.trackArtist = trackArtist;
	}
	public String getTrackAlbum() {
		return trackAlbum;
	}
	public void setTrackAlbum(String trackAlbum) {
		this.trackAlbum = trackAlbum;
	}
	public SongJson(String file, String thumb, String trackName, String trackArtist, String trackAlbum) {
		super();
		this.file = file;
		this.thumb = thumb;
		this.trackName = trackName;
		this.trackArtist = trackArtist;
		this.trackAlbum = trackAlbum;
	}
	public SongJson() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "SongJson [file=" + file + ", thumb=" + thumb + ", trackName=" + trackName + ", trackArtist="
				+ trackArtist + ", trackAlbum=" + trackAlbum + "]";
	}	
	
}
