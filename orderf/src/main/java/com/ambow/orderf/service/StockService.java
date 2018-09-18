package com.ambow.orderf.service;

import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.ambow.orderf.pojo.Stock;
import com.ambow.orderf.pojo.TotalType;

public interface StockService {
	
	List<Stock> findAllstock(Stock stock);
	
	boolean addStocks(Stock stock);
	
	boolean deletestocks(Integer sid);
	
	Stock findstocksbyid(Integer sid);
	
	public List<TotalType> year();
	
	public List<TotalType> yearout();

	void totalTadayFince();



}
