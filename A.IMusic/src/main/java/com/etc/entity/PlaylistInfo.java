package com.etc.entity;

import java.util.List;

public class PlaylistInfo {

	private int playlistinfoId; // ∏Ëµ•œÍ«È±‡∫≈
	private int playlistId; // ∏Ëµ•±‡∫≈
	private int songId; // ∏Ë«˙±‡∫≈
	private List<Song> list; // ∏Ë«˙–≈œ¢ºØ∫œ

	public int getPlaylistinfoId() {
		return playlistinfoId;
	}

	public void setPlaylistinfoId(int playlistinfoId) {
		this.playlistinfoId = playlistinfoId;
	}

	public int getPlaylistId() {
		return playlistId;
	}

	public void setPlaylistId(int playlistId) {
		this.playlistId = playlistId;
	}

	public int getSongId() {
		return songId;
	}

	public void setSongId(int songId) {
		this.songId = songId;
	}

	public List<Song> getList() {
		return list;
	}

	public void setList(List<Song> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "PlaylistInfo [playlistinfoId=" + playlistinfoId + ", playlistId=" + playlistId + ", songId=" + songId
				+ ", list=" + list + "]";
	}

	public PlaylistInfo(int playlistinfoId, int playlistId, int songId, List<Song> list) {
		super();
		this.playlistinfoId = playlistinfoId;
		this.playlistId = playlistId;
		this.songId = songId;
		this.list = list;
	}

	public PlaylistInfo() {
		// TODO Auto-generated constructor stub
	}

}
