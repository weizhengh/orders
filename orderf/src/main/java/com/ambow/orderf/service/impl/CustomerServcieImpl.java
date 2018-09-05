package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ambow.orderf.dao.CustomerDao;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.service.CustomerService;
/**
 * 顾客管理Service层实现类
 * */
@Service
@Transactional

public class CustomerServcieImpl implements CustomerService{

	@Autowired private CustomerDao customerDao;

	
	public Customer loginCustomer(Customer customer) {
		
		Customer customerInfo=customerDao.loginCustomer(customer);
		return customerInfo;
	}

	public List<Customer> findAllCustomer() {
		
		List<Customer> list=customerDao.findAllCustomer();
		return list;
	}

	public Customer findById(Integer customerId) {
		
		Customer customerInfo=customerDao.findById(customerId);
		return customerInfo;
	}

	public boolean deleteById(Integer cusromerId) {
		
		try {
			customerDao.deleteById(cusromerId);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean addCustomer(Customer customer) {
			
		try {
			customerDao.addCustomer(customer);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean updateCustomer(Customer customer) {
		
		try {
			customerDao.updateCustomer(customer);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean updateGrade(Customer customer) {

		try {
			customerDao.updateGrade(customer);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
