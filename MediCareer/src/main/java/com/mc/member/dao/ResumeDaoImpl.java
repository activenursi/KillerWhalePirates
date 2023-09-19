package com.mc.member.dao;

public class ResumeDaoImpl {
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mc.member.dto.ResumeDto;

@Repository
public class ResumeDaoImpl implements ResumeDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="com.me.resume.";
	@Override
	public ResumeDto resumeSelectOne(int no) {
		ResumeDto resumeDto = sqlSession.selectOne(namespace+"resumeSelectOne", no);
		
		return resumeDto;
	}

	@Override
	public int resumeSelectTotalCount() {
		// TODO Auto-generated method stub
		return (int)sqlSession.selectOne(namespace+"resumeSelectTotalCount");
	}

	@Override
	public List<ResumeDto> resumeSelectList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		
		return sqlSession.selectList(namespace+"resumeSelectList", map);
	}

	@Override
	public int resumeInsertOne(ResumeDto resumeDto) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace+"resumeInsertOne", resumeDto);
	}

	@Override
	public int resumeUpdateOne(ResumeDto resumeDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+"resumeUpdateOne", resumeDto);
	}

	@Override
	public int fileDelete(int parentSeq) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"fileDelete", parentSeq);
	}

	@Override
	public int resumeDeleteOne(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"resumeDeleteOne", no);
	}

}
