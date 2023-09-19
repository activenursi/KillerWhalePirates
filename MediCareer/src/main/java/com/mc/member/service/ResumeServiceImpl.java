package com.mc.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.member.dao.ResumeDao;
import com.mc.member.dto.ResumeDto;

@Service
public class ResumeServiceImpl implements ResumeService{
	
	private static final Logger log = LoggerFactory.getLogger(ResumeServiceImpl.class);
	@Autowired
	public ResumeDao resumeDao;
	
	@Override
	public Map<String, Object> resumeSelectOne(int no) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		
		ResumeDto resumeDto = resumeDao.resumeSelectOne(no);
		resultMap.put("resumeDto", resumeDto);
		return resultMap;
	}

	@Override
	public int resumeSelectTotalCount() {
		// TODO Auto-generated method stub
		return resumeDao.resumeSelectTotalCount();
	}

	@Override
	public List<ResumeDto> resumeSelectList(int start, int end) {
		// TODO Auto-generated method stub
		return resumeDao.resumeSelectList(start, end);
	}

	@Override
	public void resumeInsertOne(ResumeDto resumeDto) {
		// TODO Auto-generated method stub
		resumeDao.resumeInsertOne(resumeDto);
	}

	@Override
	public int resumeUpdateOne(ResumeDto resumeDto, MultipartHttpServletRequest mulRequest, int fileIdx) {
		// TODO Auto-generated method stub
		int resultNum = 0;
		
		resultNum = resumeDao.resumeUpdateOne(resumeDto);
			
		return resultNum;
	}

	@Override
	public int resumeDeleteOne(int no) {
		resumeDao.fileDelete(no);
		
		return resumeDao.resumeDeleteOne(no);
		
	}

}
