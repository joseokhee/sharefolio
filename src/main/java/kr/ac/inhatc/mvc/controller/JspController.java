package kr.ac.inhatc.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.inhatc.mvc.dto.BoardDto;
import kr.ac.inhatc.mvc.service.JspService;

@Controller
public class JspController {
	@Autowired
	JspService service;
	@RequestMapping("/board")
	public ModelAndView index(int n) {
		ModelAndView mv=new ModelAndView();
		mv.addObject("rs",n);
		BoardDto bt = new BoardDto();
		bt.setId("inhatc");
		bt.setName("서버프로그래밍");
		bt.setRegUser("java");
		bt.setUseYn("Y");
		bt.setDescription("스프링 프레임워크");
		bt.setNo(10);
		mv.addObject("boardDto",bt);
		mv.setViewName("board");
		return mv;
	}
	@RequestMapping("/gugudan")
	public ModelAndView gugu(Model model,@RequestParam(value="test",defaultValue="5") int n) {
		ModelAndView mv=new ModelAndView();
		mv.addObject("n",n);
		mv.setViewName("gugudan");
		return mv;
	}
	@RequestMapping("/el")
	public ModelAndView el() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("el");
		BoardDto bt = new BoardDto();
		bt.setId("inhatc");
		bt.setName("서버프로그래밍");
		bt.setRegUser("java");
		bt.setUseYn("Y");
		bt.setDescription("스프링 프레임워크");
		bt.setNo(10);
		mv.addObject("boardDto",bt);	
		return mv;
	}
	@RequestMapping("/jstl")
	public ModelAndView jstl(BoardDto boardDto) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jstl");
		mv.addObject("boardDto",boardDto);	
		mv.addObject("cnt",5);
		return mv;
	}
}
