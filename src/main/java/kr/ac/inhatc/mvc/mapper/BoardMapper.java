package kr.ac.inhatc.mvc.mapper;

import java.util.HashMap;
import java.util.List;

public interface BoardMapper {
	public String getPort(String share_id) throws Exception;
	List<?> getList(String name) throws Exception;
	List<?> getOneS(String id) throws Exception;
	List<?> getOneF(String id) throws Exception;
	List<?> getProject(String id) throws Exception;
	public int registShare(HashMap<String,String>map) throws Exception;
	public int updateShare(HashMap<String,String>map) throws Exception;
	public int deleteShare(String share_id) throws Exception;
	
	
}
