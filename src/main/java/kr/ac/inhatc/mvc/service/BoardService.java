package kr.ac.inhatc.mvc.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.ac.inhatc.mvc.mapper.BoardMapper;

@Service
public class BoardService {
	
	@Autowired
	BoardMapper board;
	
	public String selectPort(String share_id) throws Exception{
		return board.getPort(share_id);
	}
	public List<?> selectList(String searchKeyword) throws Exception{
		return board.getList(searchKeyword);
	}
	public List<?> selectOneS(String id) throws Exception{
		return board.getOneS(id);
	}
	public List<?> selectOneF(String id) throws Exception{
		return board.getOneF(id);
	}
	public List<?> selectProject(String id) throws Exception{
		return board.getProject(id);
	}
	public int registShare(HashMap<String,String>map) throws Exception{
		return board.registShare(map);
	}
	public int updateShare(HashMap<String,String>map) throws Exception{
		return board.updateShare(map);
	}
	public int deleteShare(String share_id) throws Exception{
		return board.deleteShare(share_id);
	}
}
