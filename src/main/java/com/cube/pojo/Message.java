package com.cube.pojo;

import java.util.Date;

public class Message {
	private Integer id;
	private String content;
	private Date inputTime;
	private String flag;
	private String soft;
	
	public Message() {
	}
	public Message(Integer id, String content, Date inputTime, String flag,
			String soft) {
		super();
		this.id = id;
		this.content = content;
		this.inputTime = inputTime;
		this.flag = flag;
		this.soft = soft;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getInputTime() {
		return inputTime;
	}
	public void setInputTime(Date inputTime) {
		this.inputTime = inputTime;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getSoft() {
		return soft;
	}
	public void setSoft(String soft) {
		this.soft = soft;
	}
	
	
}
