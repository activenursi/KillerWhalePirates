package com.mc.enterprise.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.enterprise.dto.JobPostingDto;

public interface JobPostingService {

	public Map<String, Object> jobPostingSelectOne(int no);

	public int jobPostingSelectTotalCount();

	public List<JobPostingDto> jobPostingSelectList(int start, int end);

	public void jobPostingInsertOne(JobPostingDto jobPostingDto
			, MultipartHttpServletRequest req) throws Exception;

	public int jobPostingUpdateOne(JobPostingDto jobPostingDto
			, MultipartHttpServletRequest req, int fileIdx) throws Exception;

	public int jobPostingDeleteOne(int no);

}
