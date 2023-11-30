package kr.ac.inhatc.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.inhatc.mvc.dto.sampleDto;
import kr.ac.inhatc.mvc.service.RestApiService;

@RestController
public class RestApiController {
	@Autowired
	RestApiService service;
	@RequestMapping(value="/samples", method=RequestMethod.POST)
	public String createSamples(@RequestBody sampleDto dto) {
		try {
			System.out.println(dto);
			service.createSamples(dto);
			return "{\"response\":201}";
		}catch(Exception e) {
			
		}
		return "{\"response\":400}";
		
	}

	@RequestMapping(value="/samples",method=RequestMethod.GET)
	public String readSamples(sampleDto dto) throws Exception{
		List<sampleDto> list=service.readSamples(dto);
		return list.toString();
	}
	@RequestMapping(value="/samples/{id}",method=RequestMethod.PUT)
	public String updateSamples(sampleDto dto,@PathVariable Integer id) throws Exception{
		try {
			dto.setId(id);
			service.updateSamples(dto);
			return "{\"response\":200}";
		}catch(Exception e) {
			
		}
		return "{\"response\":400}";
		
	}
	@RequestMapping(value="/samples/{id}",method=RequestMethod.DELETE)
	public String deleteSamples(sampleDto dto,@PathVariable Integer id) throws Exception{
		try {
			dto.setId(id);
			service.deleteSamples(dto);
			return "{\"response\":200}";
		}catch(Exception e) {
			
		}
		return "{\"response\":400}";
		
	}
}

