package com.mc.enterprise.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mc.enterprise.dto.JobPostingDto;

@Repository
public class JobPostingDaoImpl implements JobPostingDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;

	String namespace="com.mc.enterprise.";
	@Override
	public JobPostingDto jobPostingSelectOne(int no) {
		JobPostingDto jobPostingDto = sqlSession.selectOne(namespace+"jobPostingSelectOne", no);
		
		return jobPostingDto;
	}

	@Override
	public int jobPostingSelectTotalCount() {
		// TODO Auto-generated method stub
		return (int)sqlSession.selectOne(namespace+"jobPostingSelectTotalCount");
	}

	@Override
	public List<JobPostingDto> jobPostingSelectList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		
		return sqlSession.selectList(namespace+"jobPostingSelectList", map);
	}

	@Override
	public int jobPostingInsertOne(JobPostingDto jobPostingDto) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace+"jobPostingInsertOne", jobPostingDto);
	}

	@Override
	public int jobPostingUpdateOne(JobPostingDto jobPostingDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+"jobPostingUpdateOne", jobPostingDto);
	}


	@Override
	public int jobPostingDeleteOne(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"jobPostingDeleteOne", no);
	}

	@Override
	public void insertFile(Map<String, Object> map) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace+"insertFile", map);
	}

	@Override
	public List<Map<String, Object>> fileSelectList(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "fileSelectList", no);
	}

	@Override
	public Map<String, Object> fileSelectStoredFileName(int parentSeq) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+"fileSelectStoredFileName", parentSeq);
	}
	
	
	@Override
	public int fileDelete(int parentSeq) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"fileDelete", parentSeq);
	}
}
