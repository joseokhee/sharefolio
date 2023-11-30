package kr.ac.inhatc.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.inhatc.mvc.service.JspService;



@RestController
public class helloController {
	@Autowired
	JspService service;
	@RequestMapping("/hello")
	public String hello(int n) {
		String str="";
		for(int i=1; i<10;i++) {
			str+=n+"*"+i+"="+(n*i)+" ";
		}
		return str;
			
	} 
	@RequestMapping("/count")
	public String count() {
		return ""+service.count(); 
	}
	
}
