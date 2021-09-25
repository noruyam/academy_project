package com.java.domain;

import java.io.File;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class trashMapVO {
	int tmPostNum;
	private String tmTitle;
	private String tmAddr;
	private String tmContent;
	private String tmCnt;
	private String tmPicNum;
	private String cusId;
	private String tmFname;
	
	String tmComment;
	Date tmTime;
	
	
	
	MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
		// 파일이 업로드가 되면
		// 파일이 비어있지않을때
		if (!file.isEmpty()) {
			this.tmFname = file.getOriginalFilename();
			
			File f = new File("C:\\Users\\qkr26\\Desktop\\stsProject\\WebBoard3\\src\\main\\webapp\\resources\\upload\\"
					+tmFname);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	}

	public int getTmPostNum() {
		return tmPostNum;
	}

	public void setTmPostNum(int tmPostNum) {
		this.tmPostNum = tmPostNum;
	}

	public String getTmTitle() {
		return tmTitle;
	}

	public void setTmTitle(String tmTitle) {
		this.tmTitle = tmTitle;
	}

	public String getTmAddr() {
		return tmAddr;
	}

	public void setTmAddr(String tmAddr) {
		this.tmAddr = tmAddr;
	}

	public String getTmContent() {
		return tmContent;
	}

	public void setTmContent(String tmContent) {
		this.tmContent = tmContent;
	}

	public String getTmCnt() {
		return tmCnt;
	}

	public void setTmCnt(String tmCnt) {
		this.tmCnt = tmCnt;
	}

	public String getTmPicNum() {
		return tmPicNum;
	}

	public void setTmPicNum(String tmPicNum) {
		this.tmPicNum = tmPicNum;
	}

	public String getCusId() {
		return cusId;
	}

	public void setCusId(String cusId) {
		this.cusId = cusId;
	}

	public String getTmFname() {
		return tmFname;
	}

	public void setTmFname(String tmFname) {
		this.tmFname = tmFname;
	}

	public String getTmComment() {
		return tmComment;
	}

	public void setTmComment(String tmComment) {
		this.tmComment = tmComment;
	}

	public Date getTmTime() {
		return tmTime;
	}

	public void setTmTime(Date tmTime) {
		this.tmTime = tmTime;
	}
	
	
	
	
	
}
