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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.domain.nanumVO;
import com.java.service.nanumService;

@Controller
public class nanumController {
	
	@Autowired
	private nanumService nanumService;
	
	@RequestMapping("/saveBoard.do") 
	public String saveBoard(nanumVO vo) throws IOException{
		nanumService.insertBoard(vo);
		return "redirect:/getBoardList.do";
	}
	
	
	@RequestMapping(value="/insertBoard.do")
	public String insertBoard(nanumVO vo) {
		System.out.println(vo.getTitle());
		System.out.println("controller.완료"+vo.getWriter());
		System.out.println(vo.getContent());
		System.out.println("/insertBoard.do �샇異�");
		nanumService.insertBoard(vo);
		return null;
	}
	
	
	@RequestMapping(value="/updateBoard.do")
	@ResponseBody
	public void updateBoard(nanumVO vo) {
		System.out.println("/updateBoard.do �샇異�");
		System.out.println(vo.getSeq());
		System.out.println(vo.getWriter());
		System.out.println(vo.getTitle());
		System.out.println(vo.getContent());
		nanumService.updateBoard(vo);
		
	}
	
	
	@RequestMapping(value="/deleteBoard.do")
	public String deleteBoard(nanumVO vo) {
		System.out.println("/deleteBoard.do �샇異�");
		nanumService.deleteBoard(vo);
		return "redirect:/getBoardList.do";
	}
	
	
	@RequestMapping("/getBoard.do")
	public nanumVO getBoard(nanumVO vo) {
		System.out.println("湲�踰덊샇 :" + vo.getSeq());		
		nanumService.updatecnt(vo);
		return nanumService.getBoard(vo);
	}
	
	
	@RequestMapping (value = "/getBoardList.do" )
    @ResponseBody
    public List<nanumVO> getBoarList(){
    	System.out.println("getBoardList 호출");
        return nanumService.getBoardList();
    }
   
    @RequestMapping(value="/updatecnt.do")
    @ResponseBody
    public void updatecnt(nanumVO vo) {
    	System.out.println(vo.getCnt());
    	System.out.println(vo.getSeq());
    	System.out.println("/updatecnt.do 호출");
    	nanumService.updatecnt(vo);
    }
     

    // 멀티파트 서버 컨텐트타입을 지정해주는거같음
    // trashMap 파일 업로드해주는 기능
    private String path = "C:\\Users\\User\\git\\last\\ZizonBulls\\src\\main\\webapp\\resources\\nanumupload\\";
    @RequestMapping(value = "/result1.do", method = RequestMethod.POST, headers = ("content-type=multipart/*"))
    // ajax 리턴값을 주고싶을때 @ResponseBody 사용
    @ResponseBody
    public nanumVO result1(@RequestParam("file") MultipartFile multi, HttpServletRequest request,
          HttpServletResponse response, Model model) {
//       String url = null;
       // 파일 업로드 해주면서 vo에 파일네임을 set해주고 리턴해주기위해서 객체생성
       
       nanumVO vo = new nanumVO();
       try {
          // String uploadpath = request.getServletContext().getRealPath(path);
          
		  String uploadpath = path;
          String originFilename = multi.getOriginalFilename();
          String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
          long size = multi.getSize();
          String saveFileName = genSaveFileName(extName);
          vo.setFname(originFilename);
          vo.setFname(saveFileName);
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