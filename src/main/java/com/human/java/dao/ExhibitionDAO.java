package com.human.java.dao;

import java.util.List;

import com.human.java.domain.ExhibitionVO;

public interface ExhibitionDAO {

	// 전시회등록
	public int exhibitionInsert(ExhibitionVO vo);
			
	// 전시회 조회
	public ExhibitionVO exhibitionList(ExhibitionVO vo);
	
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo);
}
