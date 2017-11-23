package com.etc.entity;

public class SongJson {
	private  String file ;
	private  String thumb ;
	private  String trackName ;
	private  String trackArtist ;
	private  String trackAlbum ;
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
