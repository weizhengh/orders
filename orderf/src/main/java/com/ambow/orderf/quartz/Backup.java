package com.ambow.orderf.quartz;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Backup {

	public  void startBackup(){
		System.out.println("数据已备份");
		
	     // run in a second  
		String backName = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss")
		.format(new Date()) + ".sql";
		try {
			Backup.dbBackUp("root","123456","orderfood","F:/",backName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public  void restor(String fileName){
		fileName="eat.sql";
		dbRestore("root", "123456", "orderfood", "F:/"+fileName);
		System.out.println("数据还原");
	}
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * 备份
	 * @param root
	 * @param pwd
	 * @param dbName
	 * @param backPath
	 * @param backName
	 * @throws Exception
	 */
	
	public static void dbBackUp(String root, String pwd, String dbName,
			String backPath, String backName) throws Exception {
		String pathSql = backPath + backName;
		File fileSql = new File(pathSql);
		// ��������sql�ļ�
		if (!fileSql.exists()) {
			fileSql.createNewFile();
		}
		// mysqldump -hlocalhost -uroot -p123456 db > /home/back.sql
		StringBuffer sb = new StringBuffer();
		sb.append("cmd /c ");
		sb.append("mysqldump");
		sb.append(" -h localhost");
		sb.append(" -u" + root);
		sb.append(" -p" + pwd);
		sb.append(" " + dbName + " >");
		sb.append(pathSql);
		System.out.println("cmd执行" + sb.toString());

		System.out.println("数据库名" + dbName);
		Runtime rt = Runtime.getRuntime();
		System.out.println(sb.toString());

		
		
		rt.exec(sb.toString());
		System.out.println("备份完成");
	}

	/**
	 * 还原
	 * 
	 * @param root
	 * @param pwd
	 * @param dbName
	 * @param filePath
	 *            mysql -hlocalhost -uroot -p123456 db < /home/back.sql
	 */
	public static void dbRestore(String root, String pwd, String dbName,
			String filePath) {
		StringBuilder sb = new StringBuilder();
		sb.append("cmd /c ");
		sb.append("mysql");
		sb.append(" -h localhost");
		sb.append(" -u" + root);
		sb.append(" -p" + pwd);
		sb.append(" " + dbName + " <");
		sb.append(filePath);
		System.out.println("777777777777" + sb.toString());
		Runtime runtime = Runtime.getRuntime();
		System.out.println("数据还原");
		try {
			System.out.println(sb.toString());
			Process process = runtime.exec(sb.toString());

			InputStream is = process.getInputStream();
			BufferedReader bf = new BufferedReader(new InputStreamReader(is,
					"utf-8"));
			String line = null;
			while ((line = bf.readLine()) != null) {
				System.out.println(line);
			}
			is.close();
			bf.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("还原");
	}

}
