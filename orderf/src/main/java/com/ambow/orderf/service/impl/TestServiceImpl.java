package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ambow.orderf.dao.TestDao;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.service.TestService;
@Service("testService")
public class TestServiceImpl implements TestService {
	@Autowired
	private TestDao testDao;
	public List<Customer> list() {
		
		return testDao.selectAll();
	}

}
