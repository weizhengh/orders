package com.ambow.orderf.service.impl;

import java.beans.IntrospectionException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.druid.sql.ast.statement.SQLCommentStatement.Type;
import com.ambow.orderf.dao.StockDao;
import com.ambow.orderf.pojo.Stock;
import com.ambow.orderf.pojo.TotalType;
import com.ambow.orderf.service.StockService;
import com.ambow.orderf.utils.ExcelBean;
import com.ambow.orderf.utils.ExcelUtil;
import com.ambow.orderf.utils.SendMail;


@Service("stockService")
public class StockServiceImpl implements StockService {

	@Autowired
	private StockDao stockDao;
	
	
	public List<Stock> findAllstock(Stock stock) {
		// TODO Auto-generated method stub
		return stockDao.findAllstock(stock);
	}


	public boolean addStocks(Stock stock) {
		// TODO Auto-generated method stub
		
		int i=stockDao.addStocks(stock);
		if(i>0){
			return true;
		}
		return false;
	}


	public boolean deletestocks(Integer sid) {
		// TODO Auto-generated method stub
		int i=stockDao.deletestocks(sid);
		if(i > 0){
			return true;
		}
		return false;
	}


	public Stock findstocksbyid(Integer sid) {
		// TODO Auto-generated method stub
		
		Stock stock=stockDao.findstocksbyid(sid);
		
		return stock;
	}


	public List<TotalType> year() {
		// TODO Auto-generated method stub
		List<TotalType> list = stockDao.yearall();
        return list;
	}


	public List<TotalType> yearout() {
		// TODO Auto-generated method stub
		List<TotalType> list = stockDao.yearout();
        return list;
	}

	public void totalTadayFince() {
		double income =0;
		double outcome =0;
		String strincome = stockDao.income();
		String stroutcome = stockDao.outcome();
		if(strincome != null){
			income = Double.parseDouble(strincome);
		}
		if(stroutcome != null){
			outcome = Double.parseDouble(stroutcome);
		}
		SendMail sdm = new SendMail();
		try {
			sdm.Send("今日收支汇报","老板您好，今天的收入为"+income+"今天的支出为"+outcome,"super_yinpeng@sina.cn");
		} catch (Exception e) {

			e.printStackTrace();
		}
	}


	
}
