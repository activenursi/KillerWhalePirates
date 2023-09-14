package com.mc.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.member.controller.MemberController;
import com.mc.member.dao.MemberDao;
import com.mc.member.dto.MemberDto;


@Service
public class MemberServiceImpl implements MemberService {
	
	
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	public MemberDao memberDao;
	@Override
	public MemberDto memberExist(String email, String password) {
		// TODO Auto-generated method stub
		return memberDao.memberExist(email, password);
	}
	@Override
	public Map<String, Object> memberSelectOne(int no) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		
		MemberDto memberDto = memberDao.memberSelectOne(no);
		resultMap.put("memberDto", memberDto);
		return resultMap;
	}
	@Override
	public int memberSelectTotalCount() {
		// TODO Auto-generated method stub
		return memberDao.memberSelectTotalCount();
	}
	@Override
	public List<MemberDto> memberSelectList(int start, int end) {
		// TODO Auto-generated method stub
		return memberDao.memberSelectList(start, end);
	}
	@Override
	public void memberInsertOne(MemberDto memberDto, MultipartHttpServletRequest mulRequest) {
		memberDao.memberInsertOne(memberDto);
				
	}
	
	@Override
	public int memberUpdateOne(MemberDto memberDto, MultipartHttpServletRequest mulRequest, int fileIdx) {
		int resultNum = 0;
		
		resultNum = memberDao.memberUpdateOne(memberDto);
			
		return resultNum;
	}
	
	@Override
	public int memberDeleteOne(int no) {
		memberDao.fileDelete(no);
		
		return memberDao.memberDeleteOne(no);
	}

}
