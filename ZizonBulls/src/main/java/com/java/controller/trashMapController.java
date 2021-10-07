package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.java.domain.trashMapVO;
import com.java.service.trashMapService;

@Controller
public class trashMapController {
	@Autowired
	private trashMapService trashMapService;

	// 파일 저장위치 변수로 지정
	private String path = "C:\\Users\\User\\git\\last\\ZizonBulls\\src\\main\\webapp\\resources\\trashmappic\\";

	// trashMap 처음 새글등록하는 기능
	@RequestMapping(value = "/insertTrashMap.do")
	@ResponseBody
	public String insertTrashMap(trashMapVO vo) throws IOException {
		trashMapService.insertTrashMap(vo);
		return null;
	}

	// trashMap 글목록 클릭하면 목록 불러와주는 기능
	@RequestMapping(value = "/getTrashMap.do")
	// ajax 리턴값을 주고싶을때 @ResponseBody 사용
	@ResponseBody
	public trashMapVO getTrashMap(trashMapVO vo) {
		// 글목록 클릭하면서 조회수 기능까지 함께 실행하는 기능
		trashMapService.updateCntTrashMap(vo);
		return trashMapService.getTrashMap(vo);
	}
	// trashMap 글목록 클릭하면 목록 불러와주는 기능
		@RequestMapping(value = "/getTrashMapListCnt.do")
		// ajax 리턴값을 주고싶을때 @ResponseBody 사용
		@ResponseBody
		public int getTrashMapListCnt(trashMapVO vo) {
			// 글목록 클릭하면서 조회수 기능까지 함께 실행하는 기능
			return trashMapService.getTrashMapListCnt(vo);
		}

	// trashMap 글 목록 보여주는 기능
	@GetMapping(value = "/getTrashMapList.do")
	// ajax 리턴값을 주고싶을때 @ResponseBody 사용
	@ResponseBody
	// 글목록에 날짜 형식 바꾸기 위한 어노테이션
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
	public List<trashMapVO> getTrashMapList() {
		return trashMapService.getTrashMapList();
	}

	// trashMap 글목록 클릭할때마다 조회수 업데이트해주기 위한 기능
	@RequestMapping(value = "/updateCntTrashMap.do")
	@ResponseBody
	public String updateCntTrashMap(trashMapVO vo) {
		trashMapService.updateCntTrashMap(vo);
		return null;
	}

	// trashMap 글 수정해주는 기능
	@RequestMapping(value = "/updateTrashMap.do")
	@ResponseBody
	public String updateTrashMap(trashMapVO vo) {
		trashMapService.updateTrashMap(vo);
		return null;
	}

	// trashMap 글 삭제해주는 기능
	@RequestMapping(value = "/deleteTrashMap.do")
	@ResponseBody
	public trashMapVO deleteTrashMap(trashMapVO vo) {
		// 파일 삭제를 위한 파일네임 get
		trashMapVO getfname = getTrashMap(vo);
		File file = new File(path + getfname.getTmFnameEn());

		if (file.delete()) {
			System.out.println("파일삭제 성공");
		} else {
			System.out.println("파일삭제 실패");
		}

		trashMapService.deleteTrashMap(vo);

		return vo;

	}

	// 멀티파트 서버 컨텐트타입을 지정해주는거같음
	// trashMap 파일 업로드해주는 기능
	@RequestMapping(value = "/result.do", method = RequestMethod.POST, headers = ("content-type=multipart/*"))
	// ajax 리턴값을 주고싶을때 @ResponseBody 사용
	@ResponseBody
	public trashMapVO result(@RequestParam("file") MultipartFile multi, HttpServletRequest request,
			HttpServletResponse response, Model model) {
//		String url = null;
		// 파일 업로드 해주면서 vo에 파일네임을 set해주고 리턴해주기위해서 객체생성
		trashMapVO vo = new trashMapVO();
		try {
			// String uploadpath = request.getServletContext().getRealPath(path);
			String uploadpath = path;
			String originFilename = multi.getOriginalFilename();
			String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			long size = multi.getSize();
			String saveFileName = genSaveFileName(extName);
			vo.setTmFname(originFilename);
			vo.setTmFnameEn(saveFileName);
			System.out.println("uploadpath : " + uploadpath);
			System.out.println("originFilename : " + originFilename);
			System.out.println("extensionName : " + extName);
			System.out.println("size : " + size);
			System.out.println("saveFileName : " + saveFileName);

			if (!multi.isEmpty()) {
				File file = new File(uploadpath, saveFileName);
				multi.transferTo(file);
				
				model.addAttribute("filename", multi.getOriginalFilename());
				model.addAttribute("uploadPath", file.getAbsolutePath());

				return vo;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return vo;
	}

	// 현재 시간을 기준으로 파일 이름 생성
	private String genSaveFileName(String extName) {
		String fileName = "";

		Calendar calendar = Calendar.getInstance();
		fileName += calendar.get(Calendar.YEAR);
		fileName += calendar.get(Calendar.MONTH);
		fileName += calendar.get(Calendar.DATE);
		fileName += calendar.get(Calendar.HOUR);
		fileName += calendar.get(Calendar.MINUTE);
		fileName += calendar.get(Calendar.SECOND);
		fileName += calendar.get(Calendar.MILLISECOND);
		fileName += extName;

		return fileName;
	}

}
