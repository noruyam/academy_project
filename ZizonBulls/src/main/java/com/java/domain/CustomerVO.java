package com.java.domain;

import java.io.File;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class CustomerVO {

	private String cusId;
	private String pass;
	private String cusName;
	private Date birth;
	private String gender;
	private int ssn;
	private String email;
	private String cusAddr;
	private int cusNumber;
	private String mundab;
	private String busId; // 사업자 등록번호
	private int points;
	private int test;
	private String busPhoneNum;
	
	private String profilePictureName;
	private String profilePictureName_en;
	private long profilePictureSize;
	// 파일첨부를 위한 작업
	// insertBoard에서 선언한 name="profilePicture"이랑 동일해야함
	// MultipartFile은 servlet에서 선언한 객체
	MultipartFile profilePicture;
	
	public MultipartFile getProfilePicture() {
		return profilePicture;
	}
	
	public void setProfilePicture(MultipartFile profilePicture) {
		this.profilePicture = profilePicture;
		
		// file이 업로드가 되면
		// file이 비어있지 않을 때 무조건 파일을 생성합니다.
		// "무조건" : 파일이 같더라도 오류를 발생하거나 질의를 주는게 아니라 무조건 생성.
		// 그렇기에 같은 이름을 가진 파일을 첨부할 경우 기존에 있던 파일을 덮어씌워버림.
		
		// 사용자가 입력해준 파일명을 우리만의 파일명으로 바꿔서(암호화해서) 저장
		// 암호화된(저장된) 파일을 다시 복호화해서 사용자에게 전달.
		
		// 파일 선택해서 컴퓨터에서 가져온 파일이 존재하면
		// 가짜 이름을 만들어줌. 
		// 가짜 이름이랑 파일이랑 연결 어캐해주는거지?
		// f라는 file타입의 객체에 가짜 이름 넣어주고 
		// profilePicture.transerTo(f);는 뭐꼬 이걸 해줘야 파일이 잘 들어가는건가.
		if (!profilePicture.isEmpty()) {
			this.profilePictureName = profilePicture.getOriginalFilename();
			String fileExtension = profilePictureName.substring(profilePictureName.lastIndexOf(".")); // 가장 뒤에 있는 . 을 기준으로 다 가져와
			// 32 개의 랜덤한 문자열(숫자포함)을 생성하는 클래스 (확장자가 없음)
			this.profilePictureName_en = UUID.randomUUID().toString().replaceAll("-", "") + fileExtension;
			this.profilePictureSize = profilePicture.getSize(); // 파일크기
			
			// f라는 file타입의 객체가 생성되는 동시에 upload안에 파일이 들어감. 
			File f = new File("C:\\Users\\User\\git\\last\\ZizonBulls\\src\\main\\webapp\\resources\\upload\\" + profilePictureName_en);
		
			try {
				profilePicture.transferTo(f); 
				// 결국 f라는 객체에 profilePictureName, profilePictureName_en, profilePicture, 다 따로 들어가는건가?
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

	public String getProfilePictureName() {
			return profilePictureName;
		}

	public void setProfilePictureName(String profilePictureName) {
		this.profilePictureName = profilePictureName;
	}

	public String getProfilePictureName_en() {
		return profilePictureName_en;
	}

	public void setProfilePictureName_en(String profilePictureName_en) {
		this.profilePictureName_en = profilePictureName_en;
	}

	public long getProfilePictureSize() {
		return profilePictureSize;
	}

	public void setProfilePictureSize(long profilePictureSize) {
		this.profilePictureSize = profilePictureSize;
	}

	public String getCusId() {
		return cusId;
	}

	public void setCusId(String cusId) {
		this.cusId = cusId;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getCusName() {
		return cusName;
	}

	public void setCusName(String cusName) {
		this.cusName = cusName;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getSsn() {
		return ssn;
	}

	public void setSsn(int ssn) {
		this.ssn = ssn;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCusAddr() {
		return cusAddr;
	}

	public void setCusAddr(String cusAddr) {
		this.cusAddr = cusAddr;
	}

	public int getCusNumber() {
		return cusNumber;
	}

	public void setCusNumber(int cusNumber) {
		this.cusNumber = cusNumber;
	}

	public String getMundab() {
		return mundab;
	}

	public void setMundab(String mundab) {
		this.mundab = mundab;
	}

	public String getBusId() {
		return busId;
	}

	public void setBusId(String busId) {
		this.busId = busId;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public int getTest() {
		return test;
	}

	public void setTest(int test) {
		this.test = test;
	}

	public String getBusPhoneNum() {
		return busPhoneNum;
	}

	public void setBusPhoneNum(String busPhoneNum) {
		this.busPhoneNum = busPhoneNum;
	}

}
