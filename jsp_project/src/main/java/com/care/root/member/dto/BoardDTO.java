package com.care.root.member.dto;

public class BoardDTO {
	private String id;
	private String title;
	private String contents;
	private String unmodified_title;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getUnmodified_title() {
		return unmodified_title;
	}
	public void setUnmodified_title(String unmodified_title) {
		this.unmodified_title = unmodified_title;
	}
	
}
