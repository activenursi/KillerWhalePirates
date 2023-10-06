package com.mc.member.dao;

import java.util.List;

import com.mc.member.dto.MemberDto;

public interface MemberDao {

	public MemberDto memberExist(String email, String password);

	public MemberDto memberSelectOne(int no);

	public int memberSelectTotalCount();

	public List<MemberDto> memberSelectList(int start, int end);

	public int memberInsertOne(MemberDto memberDto);

	public int memberUpdateOne(MemberDto memberDto);

	public int fileDelete(int no);

	public int memberDeleteOne(int no);
	
	public int memberNicknameCheck(MemberDto memberDto) throws Exception;
	
	public int memberEmailIdentify(MemberDto memberDto) throws Exception;
	
	public int resetPassword(MemberDto memberDto);

}
