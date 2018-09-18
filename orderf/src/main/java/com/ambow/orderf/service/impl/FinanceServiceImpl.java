package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ambow.orderf.dao.FinanceDao;
import com.ambow.orderf.pojo.Food;
import com.ambow.orderf.pojo.Order;
import com.ambow.orderf.service.FinanceService;


@Service("financeService")
public class FinanceServiceImpl implements FinanceService {
	
	@Autowired
	private FinanceDao financeDao;

	public List<Order> findAllexchange(Order order) {
		// TODO Auto-generated method stub
		return financeDao.findAllexchange(order);
	}

}
