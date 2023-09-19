package com.mc.enterprise.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.enterprise.dao.JobPostingDao;
import com.mc.enterprise.dto.JobPostingDto;

@Service
public class JobPostingServiceImpl implements JobPostingService{
	
	private static final Logger log = LoggerFactory.getLogger(JobPostingServiceImpl.class);

	
	@Autowired
	public JobPostingDao jobPostingDao;
	
	@Override
	public Map<String, Object> jobPostingSelectOne(int no) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		
		JobPostingDto jobPostingDto = jobPostingDao.jobPostingSelectOne(no);
		resultMap.put("jobPostingDto", jobPostingDto);
		return resultMap;
	}

	@Override
	public int jobPostingSelectTotalCount() {
		// TODO Auto-generated method stub
		return jobPostingDao.jobPostingSelectTotalCount();
	}

	@Override
	public List<JobPostingDto> jobPostingSelectList(int start, int end) {
		// TODO Auto-generated method stub
		return jobPostingDao.jobPostingSelectList(start, end);
	}

	@Override
	public void jobPostingInsertOne(JobPostingDto jobPostingDto, MultipartHttpServletRequest mulRequest) {
		// TODO Auto-generated method stub
		jobPostingDao.jobPostingInsertOne(jobPostingDto);
	}

	@Override
	public int jobPostingUpdateOne(JobPostingDto jobPostingDto, MultipartHttpServletRequest mulRequest, int fileIdx) {
		int resultNum = 0;
		
		resultNum = jobPostingDao.jobPostingUpdateOne(jobPostingDto);
			
		return resultNum;
	}

	@Override
	public int jobPostingDeleteOne(int no) {
		jobPostingDao.fileDelete(no);
		
		return jobPostingDao.jobPostingDeleteOne(no);
		
	}

}
