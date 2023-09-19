package com.mc.enterprise.dao;

import java.util.List;

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

}
