package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ambow.orderf.dao.EmpDao;
import com.ambow.orderf.pojo.Emp;
import com.ambow.orderf.service.EmpService;

/**
 * 员工管理service层实现类
 * */
@Service
@Transactional
public class EmpServiceImpl implements EmpService{

	@Autowired private EmpDao empDao;
	public Emp loginEmp(Emp emp) {

		Emp empInfo=empDao.loginEmp(emp);
		return empInfo;
	}

	public List<Emp> findAllEmp() {
		
		List<Emp> list=empDao.findAllEmp();
		return list;
	}

	public Emp findById(Integer empId) {
		
		Emp emp=empDao.findById(empId);
		return emp;
	}

	public boolean deleteById(Integer empId) {
		
		try {
			empDao.deleteById(empId);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean addEmp(Emp emp) {
		
		try {
			empDao.addEmp(emp);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean updateEmp(Emp emp) {
		
		try {
			empDao.updateEmp(emp);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
