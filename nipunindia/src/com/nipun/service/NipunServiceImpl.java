package com.nipun.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.nipun.dao.NipunDao;

public class NipunServiceImpl implements NipunService {
	
	@Autowired
	NipunDao nipunDao;
	
	public List<Map<String, Object>> loadManageUserData() {
		return nipunDao.loadManageUserData();
	}
}
