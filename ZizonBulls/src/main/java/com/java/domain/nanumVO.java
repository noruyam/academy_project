package com.java.domain;

import java.io.File;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

public class nanumVO {
	
	private int seq;
	private String title;
	private String writer;
	private	String content;
	@JsonFormat(shape=JsonFormat.Shape.STRING,pattern="yyyy-MM-dd")
	private Date regDate;
	private int cnt;
	private String fname;
	
	MultipartFile file;
	   
	    
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		this.file = file;
		
		if(!file.isEmpty()) {
			
			this.writer = file.getOriginalFilename(); // �뙆�씪�쓽 �씠由�
					
			File f = new File("C:\\Users\\Administrator\\Desktop\\ZizonBulls\\src\\main\\webapp\\resources\\nanumupload" + writer);
			
			try {
				file.transferTo(f);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}	
	
	
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}
