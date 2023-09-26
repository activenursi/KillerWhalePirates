package com.mc.enterprise.dao;

import java.util.List;
import java.util.Map;

import com.mc.enterprise.dto.EnterpriseDto;
import com.mc.enterprise.dto.JobPostingDto;

public interface JobPostingDao {

	public JobPostingDto jobPostingSelectOne(int no);

	public int jobPostingSelectTotalCount();

	public List<JobPostingDto> jobPostingSelectList(int start, int end);

	public int jobPostingInsertOne(JobPostingDto jobPostingDto);

	public int jobPostingUpdateOne(JobPostingDto jobPostingDto);

	public int fileDelete(int no);

	public int jobPostingDeleteOne(int no);

	public void insertFile(Map<String, Object> map);
	
	List<Map<String, Object>> fileSelectList(int no);

	Map<String, Object> fileSelectStoredFileName(int parentSeq);


}
