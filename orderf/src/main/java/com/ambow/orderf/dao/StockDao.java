package com.ambow.orderf.dao;

import java.util.List;

import com.alibaba.druid.sql.ast.statement.SQLCommentStatement.Type;
import com.ambow.orderf.pojo.Food;
import com.ambow.orderf.pojo.Stock;
import com.ambow.orderf.pojo.TotalType;

public interface StockDao {
	
	List<Stock> findAllstock(Stock stock);
	
	Integer addStocks(Stock stock);
	
	Integer deletestocks(Integer sid);
	
	Stock findstocksbyid(Integer sid);
	
	List<TotalType> yearall();
	
	List<TotalType> yearout();

	String income();

	String outcome();



}
