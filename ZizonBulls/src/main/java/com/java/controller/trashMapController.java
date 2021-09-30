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

	@RequestMapping(value = "/insertTrashMap.do")
	@ResponseBody
	public String insertTrashMap(trashMapVO vo) throws IOException{
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		System.out.println(vo.getTmFname());
		System.out.println(vo.getTmFnameEn());
		
		trashMapService.insertTrashMap(vo);
		System.out.println(vo.getTmFname());
		System.out.println(vo.getTmFnameEn());
		
//		return "/trashMap/insertTrashMap";
		return null;
	}

	@GetMapping(value = "/getTrashMapList.do")
	@ResponseBody
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss")
	public List<trashMapVO> getTrashMapList() {

		return trashMapService.getTrashMapList();
	}

	@RequestMapping(value = "/updateTrashMap.do")
	@ResponseBody
	public String updateTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		System.out.println(vo.getTmFname());
		System.out.println(vo.getTmFnameEn());
		trashMapService.updateTrashMap(vo);
//		return "/trashMap/insertTrashMap";
		return null;
	}

	@RequestMapping(value = "/deleteTrashMap.do")
	@ResponseBody
	public String deleteTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		trashMapService.deleteTrashMap(vo);
//		return "/trashMap/insertTrashMap";
		return null;

	}

	@RequestMapping(value = "/updateCntTrashMap.do")
	@ResponseBody
	public String updateCntTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		trashMapService.updateCntTrashMap(vo);
//			return "/trashMap/insertTrashMap";
		return null;
	}

	@RequestMapping(value = "/getTrashMap.do")
	@ResponseBody
	public trashMapVO getTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmPostNum());

		System.out.println(vo.getTmPostNum());
//		return "/trashMap/insertTrashMap";
		trashMapService.updateCntTrashMap(vo);
		return trashMapService.getTrashMap(vo);
	}

//			@GetMapping(value = "/test2.do", produces = MediaType.APPLICATION_JSON_VALUE)
//		    public void getAllUsers(){
//		        System.out.println("test2.do");
//		    }

//		@RequestMapping(value = "/insertTrashMap1.do")
//		
//		public String insertTrashMap1(trashMapVO vo,Model model) {
//			model.addAttribute("trashMapList", trashMapService.getTrashMapList());
//			return "/index";
//		}

//		@GetMapping(value = "/getTrashMapList.do", produces = MediaType.APPLICATION_JSON_VALUE)
//		@ResponseBody
//	    public List<trashMapVO> getTrashMapList(){
//	        return trashMapService.getTrashMapList();
//	    }

//		@RequestMapping(value = "/trashMap/{url}.do")
//		public String userJoin(@PathVariable String url) {
//			System.out.println("ȣ��");
//			return "/trashMap/"+url;
//		}

	
	
	
	
	
	
	
	
	
	
	
	
	private String path = "C:\\Users\\qkr26\\git\\last\\ZizonBulls\\src\\main\\webapp\\resources\\trashmappic";

	@RequestMapping(value = "/result.do", method = RequestMethod.POST, headers = ("content-type=multipart/*"))
	public String result(@RequestParam("file") MultipartFile multi, HttpServletRequest request,
			HttpServletResponse response, Model model) {
		String url = null;
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

				return null;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
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
