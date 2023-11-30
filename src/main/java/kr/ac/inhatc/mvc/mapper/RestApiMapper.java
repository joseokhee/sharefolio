package kr.ac.inhatc.mvc.mapper;

import java.util.List;
import kr.ac.inhatc.mvc.dto.sampleDto;

public interface RestApiMapper {
	public List<sampleDto> readSamples(sampleDto dto) throws Exception;
	public int updateSamples(sampleDto dto) throws Exception;
	public int createSamples(sampleDto dto) throws Exception;
	public int deleteSamples(sampleDto dto) throws Exception;
}
