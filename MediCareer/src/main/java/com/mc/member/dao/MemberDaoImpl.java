package com.mc.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mc.member.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="com.mc.member.";
	
	
	@Override
	public MemberDto memberExist(String email, String password) {
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("email", email);
		paramMap.put("password", password);
		return sqlSession.selectOne(namespace+"memberExist", paramMap);
	}
	
	@Override
	public MemberDto memberSelectOne(int no) {
		MemberDto memberDto = sqlSession.selectOne(namespace+"memberSelectOne", no);
		
		return memberDto;
	}


	@Override
	public int memberSelectTotalCount() {
		// TODO Auto-generated method stub
		return (int)sqlSession.selectOne(namespace+"memberSelectTotalCount");
	}


	@Override
	public List<MemberDto> memberSelectList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		
		return sqlSession.selectList(namespace+"memberSelectList", map);
	}

	@Override
	public int memberInsertOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace+"memberInsertOne", memberDto);
	}

	@Override
	public int memberUpdateOne(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+"memberUpdateOne", memberDto);
	}

	@Override
	public int fileDelete(int parentSeq) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"fileDelete", parentSeq);
	}

	@Override
	public int memberDeleteOne(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"memberDeleteOne", no);
	}


	@Override
	public int memberNicknameCheck(MemberDto memberDto) throws Exception {
		// TODO Auto-generated method stub
		int result = sqlSession.selectOne(namespace+"memberNicknameCheck", memberDto);
		
		return result;
	}


	@Override
	public int memberEmailIdentify(MemberDto memberDto) throws Exception {
		// TODO Auto-generated method stub
		int result = sqlSession.selectOne(namespace+"memberEmailIdentify", memberDto);
		
		return result;
	}

	@Override
	public int resetPassword(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+"resetPassword", memberDto);
	}

	
}
