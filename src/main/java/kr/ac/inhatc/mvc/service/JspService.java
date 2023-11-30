package kr.ac.inhatc.mvc.service;

import org.springframework.stereotype.Service;

@Service
public class JspService {

	int cnt=0;
	public int count() {
		return cnt++;
	}
}
