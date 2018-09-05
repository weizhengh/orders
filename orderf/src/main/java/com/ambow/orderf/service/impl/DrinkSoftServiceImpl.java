package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ambow.orderf.dao.DrinkSoftDao;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.DrinkSoft;
import com.ambow.orderf.service.DrinkSoftService;
@Service("testService")
public class DrinkSoftServiceImpl implements DrinkSoftService {
	@Autowired
	private DrinkSoftDao drinkSoftDao;

	public List<DrinkSoft> selectAll() {
	
		return drinkSoftDao.selectAll();
	}
	
	
	
}
