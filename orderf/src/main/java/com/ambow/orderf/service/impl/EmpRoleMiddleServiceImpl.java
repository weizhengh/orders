package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ambow.orderf.dao.EmpRoleMiddleDao;
import com.ambow.orderf.pojo.EmpRoleMiddle;
import com.ambow.orderf.service.EmpRoleMiddleService;

@Service
@Transactional
public class EmpRoleMiddleServiceImpl implements EmpRoleMiddleService{

	@Autowired EmpRoleMiddleDao empRoleMiddleDao;
	
	@Override
	public List<EmpRoleMiddle> findRoleByEmpId(Integer empId) {
		
		List<EmpRoleMiddle> list=empRoleMiddleDao.findRoleByEmpId(empId);
		return list;
	}

	@Override
	public List<EmpRoleMiddle> findEmpByRoleId(Integer roleId) {
		
		List<EmpRoleMiddle> list=empRoleMiddleDao.findEmpByRoleId(roleId);
		return list;
	}

}
