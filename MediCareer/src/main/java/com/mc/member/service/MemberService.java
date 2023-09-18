package com.mc.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.member.dto.MemberDto;

public interface MemberService {

	
	public MemberDto memberExist(String email, String password);

	public Map<String, Object> memberSelectOne(int no);

	public int memberSelectTotalCount();

	public List<MemberDto> memberSelectList(int start, int end);

	public void memberInsertOne(MemberDto memberDto);

	public int memberUpdateOne(MemberDto memberDto, MultipartHttpServletRequest mulRequest, int fileIdx);

	public int memberDeleteOne(int no);	
}
