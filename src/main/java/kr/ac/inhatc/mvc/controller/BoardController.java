package kr.ac.inhatc.mvc.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.inhatc.mvc.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	

	@RequestMapping("/share")
	public ModelAndView viewShare(String searchKeyword) throws Exception{
		ModelAndView mv=new ModelAndView();
		mv.addObject("searchKeyword",searchKeyword);
		mv.addObject("subjectList",boardService.selectList(searchKeyword));
		mv.setViewName("share");
		return mv;
	}
	@RequestMapping("/shareDetail")
	public ModelAndView viewShareDetail(String share_id) throws Exception{
		ModelAndView mv=new ModelAndView();
		if(Integer.parseInt(boardService.selectPort(share_id))==0) {
			mv.addObject("selectOne",boardService.selectOneF(share_id));
			mv.setViewName("shareDetail_free");
		}
		else {
			mv.addObject("selectOne",boardService.selectOneS(share_id));
			mv.setViewName("shareDetail");
		}
		
		return mv;
	}
	@RequestMapping("/newshare")
	public ModelAndView insertView(String user_id) throws Exception{
		 ModelAndView mv=new ModelAndView();
		 mv.addObject("project",boardService.selectProject(user_id));
		 mv.setViewName("NewFile");
		 return mv;
	}
	@RequestMapping("/shareC")
	public ModelAndView registShare(String title,String coment,String hash,String radio_btn) throws Exception{
		HashMap<String,String> hashMap=new HashMap<String,String>();
		
		hashMap.put("title", title);
		hashMap.put("coment", coment);
		hashMap.put("hashtag", hash);
		if(radio_btn==null) {
			hashMap.put("portfolio_id", Integer.toString(0));
		}
		else {
			hashMap.put("portfolio_id", radio_btn);
		}
		boardService.registShare(hashMap);
		return viewShare("");
	
		
	
		
	}
	@RequestMapping("/shareU")
	public ModelAndView updateShare(String share_id,String title,String coment,String hash,String radio_btn) throws Exception{
		HashMap<String,String> hashMap=new HashMap<String,String>();
		hashMap.put("share_id", share_id);
		hashMap.put("title", title);
		hashMap.put("coment", coment);
		hashMap.put("hashtag", hash);
		if(radio_btn==null) {
			hashMap.put("portfolio_id", Integer.toString(0));
		}
		else {
			hashMap.put("portfolio_id", radio_btn);
		}
		boardService.updateShare(hashMap);
		return viewShare("");
	}
	@RequestMapping("/update")
	public ModelAndView updateShare(String share_id,String user_id) throws Exception{
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("project",boardService.selectProject(user_id));
		mv.addObject("id",share_id);
		mv.setViewName("update");
		return mv;
	
	}
	@RequestMapping("/delete")
	public ModelAndView deleteShare(String share_id) throws Exception{
		boardService.deleteShare(share_id);
		return viewShare("");
	}
	
	@RequestMapping("/regSubject.do")
	public ModelAndView regSubject() throws Exception{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("boardDetail");
		return mv;
	}
	
}
