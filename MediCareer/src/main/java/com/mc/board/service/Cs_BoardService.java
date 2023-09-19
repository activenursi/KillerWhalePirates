package com.mc.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.board.dto.BoardDto;
import com.mc.board.dto.Cs_BoardDto;

public interface Cs_BoardService {

	public int cs_boardSelectTotalCount();

	public List<Cs_BoardDto> cs_boardSelectList(int start, int end);

	public void cs_boardInsertOne(Cs_BoardDto cs_boardDto, MultipartHttpServletRequest mulRequest);

	public Map<String, Object> cs_boardSelectOne(int no);

	public int cs_boardUpdateOne(Cs_BoardDto cs_boardDto, MultipartHttpServletRequest mulRequest, int fileIdx);

	public int cs_boardDeleteOne(int no);


}
