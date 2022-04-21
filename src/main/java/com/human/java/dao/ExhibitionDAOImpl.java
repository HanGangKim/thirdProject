package com.human.java.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.TicketingSelectVO;
import com.human.java.domain.TicketingVO;

@Repository("exhibitionDAO")
public class ExhibitionDAOImpl implements ExhibitionDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int exhibitionInsert(ExhibitionVO vo) {

		System.out.println("===============");
		System.out.println("exhibitionInsert 다오 호출");
		System.out.println("===============");
		
		return mybatis.insert(null, vo);
	}

	@Override
	public ExhibitionVO exhibitionList(ExhibitionVO vo) {

		System.out.println("===============");
		System.out.println("exhibitionList 다오 호출");
		System.out.println("===============");
		
		return mybatis.selectOne("exhibitionMapper.exhibitionList", vo);
	}

	@Override
	public List<ExhibitionVO> exhibitionAll(ExhibitionVO vo) {

		System.out.println("===============");
		System.out.println("exhibitionAll 다오 호출");
		System.out.println("===============");

		return mybatis.selectList("exhibitionMapper.exhibitionAll", vo);
	}

	@Override
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo) {

		System.out.println("===============");
		System.out.println("exhibition 커밍 다오 호출");
		System.out.println("===============");
		return mybatis.selectList("exhibitionMapper.comingExhibition", vo);
	}

	
	@Override
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String st, String ed, int endRow) {

		System.out.println("===============");
		System.out.println("exhibition 서치 다오 호출");
		System.out.println("===============");

		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("st", st);
		parms.put("ed", ed);
		parms.put("endRow", endRow+1);

		return mybatis.selectList("exhibitionMapper.exhibitionSearch", parms);
	}

	
	
	@Override
	public List<ExhibitionVO> exhibitionSearchTitle(ExhibitionVO vo, String title, int endRow) {

		System.out.println("===============");
		System.out.println("exhibitionTitle 서치 다오 호출");
		System.out.println("===============");

		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("title", title);
		parms.put("endRow", endRow+1);

		return mybatis.selectList("exhibitionMapper.exhibitionSearchTitle", parms);
	}
	
	
	
	@Override
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id) {

		System.out.println("===============");
		System.out.println("exhibitionList 다오 호출");
		System.out.println("===============");

		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("id", id);
		return mybatis.selectOne("exhibitionMapper.exhibitionDetail", parms);
	}

	@Override
	public int ticketInsert(TicketingVO vo) {

		System.out.println("===============");
		System.out.println("ticketInsert 다오 호출");
		System.out.println("TicketingVO : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
				
				// 결제시 위시리스트 플래그 업데이트
				mybatis.update("wishlistMapper.flagChange" , vo);
		
		return mybatis.insert("ticketingMapper.ticketInsert", vo);

	}

	@Override
	public List<TicketingSelectVO> ticketSelect(HashMap map, String id) {

		System.out.println("===============");
		System.out.println("ticketSelect 다오 호출");
		System.out.println("DAO : " + map.get("id"));
		System.out.println("id:" + id);
		System.out.println("===============");
		
		return mybatis.selectList("ticketingMapper.ticketSelecting", map);
	}

	@Override
	public int companyInsertExhibition(ExhibitionVO vo) {
		
		System.out.println("===============");
		System.out.println("companyInsertExhibition 다오 호출");
		System.out.println("ExhibitionVO vo : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return mybatis.insert("companyMapper.companyInsertExhibition",vo);
	}

	
	@Override
	public int companyUpdateExhibition(ExhibitionVO vo) {
		
		System.out.println("===============");
		System.out.println("companyUpdateExhibition 다오 호출");
		System.out.println("ExhibitionVO vo : " + ToStringBuilder.reflectionToString(vo));
		System.out.println("===============");
		
		return mybatis.update("companyMapper.companyUpdateExhibition",vo);
	}

	
	
	@Override
	public List<ExhibitionVO> getExhibitionCompanyList(ExhibitionVO vo, String companyId) {
		
		
		System.out.println("===============");
		System.out.println("getExhibitionCompanyServiceList 다오 호출");
		System.out.println("companyId : " + companyId);
		System.out.println("===============");
		
		
		return mybatis.selectList("companyMapper.companyExhibitionList",companyId);
	}

	@Override
	public ExhibitionVO getExhibitionCompanyDetail(ExhibitionVO vo) {
		
		System.out.println("===============");
		System.out.println("getExhibitionCompanyServiceList 다오 호출");
		System.out.println("업체ID: "+vo.getCompany_id());
		System.out.println("전시회ID:"+vo.getExhibition_id());
		System.out.println("===============");
		
		return mybatis.selectOne("companyMapper.companyExhibitionDetail",vo);
	}
	
	@Override
	public int exhibitionCompanyExhibitionDelete(ExhibitionVO vo) {
		System.out.println("exhibitionCompanyExhibitionDelete 다오 호출");
		System.out.println(vo.getExhibition_id());
		return mybatis.delete("companyMapper.exhibitionCompanyExhibitionDelete",vo);
	}


}
