package com.mc.enterprise.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.enterprise.dao.JobPostingDao;
import com.mc.enterprise.dto.JobPostingDto;
import com.mc.util.FileUtils;

@Service
public class JobPostingServiceImpl implements JobPostingService{
	
	private static final Logger log = LoggerFactory.getLogger(JobPostingServiceImpl.class);

	
	@Autowired
	public JobPostingDao jobPostingDao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
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
	public void jobPostingInsertOne(JobPostingDto jobPostingDto
			, MultipartHttpServletRequest req) throws Exception {
		// TODO Auto-generated method stub
		jobPostingDao.jobPostingInsertOne(jobPostingDto);
		
		int parentSeq = jobPostingDto.getNo();
		List<Map<String,Object>> list = 
				fileUtils.parseInsertFileInfo(parentSeq, req);
		
		for(int i = 0; i < list.size(); i++) {
			jobPostingDao.insertFile(list.get(i));
		}	
	}

	@Override
	public int jobPostingUpdateOne(JobPostingDto jobPostingDto, MultipartHttpServletRequest req
			, int fileIdx) throws Exception{
							
		int resultNum = 0;
		
		try {
			
			resultNum = jobPostingDao.jobPostingUpdateOne(jobPostingDto);
			
			int parentSeq = jobPostingDto.getNo();
			Map<String, Object> tempFileMap 
			= jobPostingDao.fileSelectStoredFileName(parentSeq);
			
			List<Map<String,Object>> list 
				= fileUtils.parseInsertFileInfo(parentSeq, req);
			
			// 오로지 하나만 관리
			if(list.isEmpty() == false) {
				if(tempFileMap != null) {
					jobPostingDao.fileDelete(parentSeq);
					fileUtils.parseUpdateFileInfo(tempFileMap);
				}
				
				for(Map<String,Object> map: list) {
					jobPostingDao.insertFile(map);
				}
			}else if(fileIdx == -1) {
				if(tempFileMap != null) {
					jobPostingDao.fileDelete(parentSeq);
					fileUtils.parseUpdateFileInfo(tempFileMap);			
				}
			}
			
		} catch (Exception e) {
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
		return resultNum;
	}

	@Override
	public int jobPostingDeleteOne(int no) {
		jobPostingDao.fileDelete(no);
		
		return jobPostingDao.jobPostingDeleteOne(no);
		
	}

}
