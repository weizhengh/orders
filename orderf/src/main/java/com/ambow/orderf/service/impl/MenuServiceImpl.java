package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ambow.orderf.dao.MenuDao;
import com.ambow.orderf.pojo.Menu;
import com.ambow.orderf.service.MenuService;

@Service
@Transactional
public class MenuServiceImpl implements MenuService{

	@Autowired MenuDao menuDao;
	
	
	@Override
	public List<Menu> findByRoleId(Integer roleId) {
		
		List<Menu> list=menuDao.findByRoleId(roleId);
		return list;
	}

	@Override
	public boolean addMenu(Menu menu) {

		try {
			menuDao.addMenu(menu);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean delMenu(Integer menuId) {

		try {
			menuDao.delMenu(menuId);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
