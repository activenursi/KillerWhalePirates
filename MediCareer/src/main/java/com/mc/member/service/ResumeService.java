package com.mc.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.member.dto.ResumeDto;

public interface ResumeService {

	public Map<String, Object> resumeSelectOne(int no);

	public int resumeSelectTotalCount();

	public List<ResumeDto> resumeSelectList(int start, int end);

	public void resumeInsertOne(ResumeDto resumeDto);

	public int resumeUpdateOne(ResumeDto resumeDto, MultipartHttpServletRequest mulRequest, int fileIdx);

	public int resumeDeleteOne(int no);

}
