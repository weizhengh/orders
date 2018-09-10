package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ambow.orderf.dao.RoleDao;
import com.ambow.orderf.pojo.Role;
import com.ambow.orderf.service.RoleService;

@Service
@Transactional
public class RoleServiceImpl implements RoleService{

	@Autowired RoleDao roleDao;
	
	@Override
	public List<Role> findAllRole() {

		List<Role> list=roleDao.findAllRole();
		return list;
	}

	@Override
	public boolean addRole(String roleName) {
		
		try {
			roleDao.addRole(roleName);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean delRole(Integer roleId) {

		try {
			roleDao.delRole(roleId);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updateRole(Role role) {

		try {
			roleDao.updateRole(role);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
