package com.mc.enterprise.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.enterprise.dto.EnterpriseDto;

public interface EnterpriseService {

	public EnterpriseDto enterpriseExist(String email, String password); 

	public Map<String, Object> enterpriseSelectOne(int no);

	public int enterpriseSelectTotalCount();

	public List<EnterpriseDto> enterpriseSelectList(int start, int end);

	public void enterpriseInsertOne(EnterpriseDto enterpriseDto);

	public int enterpriseUpdateOne(EnterpriseDto enterpriseDto, int fileIdx);

	public int enterpriseDeleteOne(int no);;
}
