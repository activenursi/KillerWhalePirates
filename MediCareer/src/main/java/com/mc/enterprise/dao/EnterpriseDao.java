package com.mc.enterprise.dao;

import java.util.List;

import com.mc.enterprise.dto.EnterpriseDto;

public interface EnterpriseDao {

	public EnterpriseDto enterpriseExist(String email, String password);

	EnterpriseDto enterpriseSelectOne(int no);

	int enterpriseSelectTotalCount();

	public List<EnterpriseDto> enterpriseSelectList(int start, int end);

	public int enterpriseInsertOne(EnterpriseDto enterpriseDto);

	public int enterpriseUpdateOne(EnterpriseDto enterpriseDto);

	public int fileDelete(int no);

	public int enterpriseDeleteOne(int no);

}
