package com.mc.enterprise.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mc.enterprise.dto.EnterpriseDto;
import com.mc.member.dto.MemberDto;

@Repository
public class EnterpriseDaoImpl implements EnterpriseDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="com.mc.enterprise.";
	
	
	@Override
	public EnterpriseDto enterpriseExist(String email, String password) {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("email", email);
		paramMap.put("pwd", password);
		return sqlSession.selectOne(namespace+"enberpriseExist", paramMap);
	}

	@Override
	public EnterpriseDto enterpriseSelectOne(int no) {
		EnterpriseDto enterpriseDto = sqlSession.selectOne(namespace+"enterpriseSelectOne", no);
		
		return enterpriseDto;
	}

	@Override
	public int enterpriseSelectTotalCount() {
		// TODO Auto-generated method stub
		return (int)sqlSession.selectOne(namespace+"enterpriseSelectTotalCount");
	}

	@Override
	public List<EnterpriseDto> enterpriseSelectList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		
		return sqlSession.selectList(namespace+"enterpriseSelectList", map);
	}

	@Override
	public int enterpriseInsertOne(EnterpriseDto enterpriseDto) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace+"enterpriseInsertOne", enterpriseDto);
	}

	@Override
	public int enterpriseUpdateOne(EnterpriseDto enterpriseDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+"enterpriseUpdateOne", enterpriseDto);
	}

	@Override
	public int fileDelete(int parentSeq) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"fileDelete", parentSeq);
	}

	@Override
	public int enterpriseDeleteOne(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"enterpriseDeleteOne", no);
	}

}
