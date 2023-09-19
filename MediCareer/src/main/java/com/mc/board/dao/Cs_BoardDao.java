package com.mc.board.dao;

import java.util.List;

import com.mc.board.dto.BoardDto;
import com.mc.board.dto.Cs_BoardDto;

public interface Cs_BoardDao {

	public List<Cs_BoardDto> cs_boardSelectList(int start, int end);

	public int cs_boardSelectTotalCount();

	public int cs_boardInsertOne(Cs_BoardDto cs_boardDto);

	public int cs_boardUpdateOne(Cs_BoardDto cs_boardDto);

	public int cs_boardDeleteOne(int no);

	public Cs_BoardDto cs_boardSelectOne(int no);

}
