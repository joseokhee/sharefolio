package kr.ac.inhatc.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.inhatc.mvc.dto.sampleDto;
import kr.ac.inhatc.mvc.mapper.RestApiMapper;

@Service
public class RestApiService {
	@Autowired
	RestApiMapper mapper;
	public List<sampleDto> readSamples(sampleDto dto) throws Exception{
		return mapper.readSamples(dto);
	}
	public int updateSamples(sampleDto dto) throws Exception{
		return mapper.updateSamples(dto);
	}
	public int createSamples(sampleDto dto) throws Exception{
		return mapper.createSamples(dto);
	}
	public int deleteSamples(sampleDto dto) throws Exception{
		return mapper.deleteSamples(dto);
	}
}
