package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.domain.trashMapVO;
import com.java.service.trashMapService;

@Controller
public class trashMapController {
	@Autowired
	private trashMapService trashMapService;
	
	@RequestMapping(value = "/trashMap/{url}.do")
	public String userJoin(@PathVariable String url) {
		System.out.println("ȣ��");
		return "/trashMap/"+url;
	}

		@RequestMapping(value = "/insertTrashMap.do")
		@ResponseBody
	public String insertTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
		trashMapService.insertTrashMap(vo);
//		return "/trashMap/insertTrashMap";
		return null;
	}
		
		
		@RequestMapping(value = "/insertTrashMap1.do")
		
		public String insertTrashMap1(trashMapVO vo,Model model) {
			model.addAttribute("trashMapList", trashMapService.getTrashMapList());
			return "/index";
		}
		
		
//		@GetMapping(value = "/getTrashMapList.do", produces = MediaType.APPLICATION_JSON_VALUE)
//		@ResponseBody
//	    public List<trashMapVO> getTrashMapList(){
//	        return trashMapService.getTrashMapList();
//	    }
	    
	    
	    
	  @GetMapping (value = "/getTrashMapList.do" )
		@ResponseBody
	    public List<trashMapVO> getTrashMapList(){
	        return trashMapService.getTrashMapList();
	    }
	        
	        
	        
		@GetMapping(value = "/test2.do", produces = MediaType.APPLICATION_JSON_VALUE)
	    public void getAllUsers(){
	        System.out.println("test2.do");
	    }
		
		
		
		@RequestMapping(value = "/updateTrashMap.do")
		@ResponseBody
	public String updateTrashMap(trashMapVO vo) {
		System.out.println(vo.getTmContent());
		System.out.println(vo.getTmAddr());
		System.out.println(vo.getTmTitle());
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
		
}
