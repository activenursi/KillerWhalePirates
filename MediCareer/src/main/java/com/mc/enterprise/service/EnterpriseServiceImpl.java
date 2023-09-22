package com.mc.enterprise.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.enterprise.dao.EnterpriseDao;
import com.mc.enterprise.dto.EnterpriseDto;

@Service
public class EnterpriseServiceImpl implements EnterpriseService{

	@Autowired
	public EnterpriseDao enterpriseDao;
	
	@Override
	public EnterpriseDto enterpriseExist(String email, String password) {
		// TODO Auto-generated method stub
		return enterpriseDao.enterpriseExist(email, password);
	}

	@Override
	public Map<String, Object> enterpriseSelectOne(int no) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		
		EnterpriseDto enterpriseDto = enterpriseDao.enterpriseSelectOne(no);
		resultMap.put("enterpriseDto", enterpriseDto);
		return resultMap;
	}

	@Override
	public int enterpriseSelectTotalCount() {
		// TODO Auto-generated method stub
		return enterpriseDao.enterpriseSelectTotalCount();
	}

	@Override
	public List<EnterpriseDto> enterpriseSelectList(int start, int end) {
		// TODO Auto-generated method stub
		return enterpriseDao.enterpriseSelectList(start, end);
	}

	@Override
	public void enterpriseInsertOne(EnterpriseDto enterpriseDto) {
		enterpriseDao.enterpriseInsertOne(enterpriseDto);
		
	}

	@Override
	public int enterpriseUpdateOne(EnterpriseDto enterpriseDto, int fileIdx) {
		// TODO Auto-generated method stub
		int resultNum = 0;
		
		resultNum = enterpriseDao.enterpriseUpdateOne(enterpriseDto);
			
		return resultNum;
	}

	@Override
	public int enterpriseDeleteOne(int no) {
		enterpriseDao.fileDelete(no);
		
		return enterpriseDao.enterpriseDeleteOne(no);
		
	}

}
