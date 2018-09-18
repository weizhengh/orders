package com.ambow.orderf.utils;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.ambow.orderf.pojo.Order;






public class ImportExcelFile {
	
	public  void importExcel(List<Order> list,HttpServletResponse response) {
		 // 第一步，创建一个webbook，对应一个Excel文件  
        HSSFWorkbook wb = new HSSFWorkbook();  
        // 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet  
        HSSFSheet sheet = wb.createSheet("学生表一");  
        // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short  
        HSSFRow row = sheet.createRow((int) 0);  
        // 第四步，创建单元格，并设置值表头 设置表头居中  
        HSSFCellStyle style = wb.createCellStyle();  
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式  
  
        HSSFCell cell = row.createCell((short) 0);  
        cell.setCellValue(new HSSFRichTextString("学号")); 
        cell.setCellStyle(style); 
		
        cell = row.createCell((short) 1);  
        cell.setCellValue(new HSSFRichTextString("姓名"));  
        cell.setCellStyle(style); 
		
        cell = row.createCell((short) 2);  
        cell.setCellValue(new HSSFRichTextString("密码"));  
        cell.setCellStyle(style);  
		
        cell = row.createCell((short) 3);  
       
  
        // 第五步，写入实体数据 实际应用中这些数据从数据库得到，  
        
		//List<Member> list = CreateSimpleExcelToDisk.getMember();  
  
        for (int i = 0; i < list.size(); i++)  
        {  
            row = sheet.createRow((int) i + 1);  
            Order order = (Order) list.get(i);  
            // 第四步，创建单元格，并设置值  
            row.createCell((short) 0).setCellValue(order.getOrder_id());  
            row.createCell((short) 1).setCellValue((order.getOrder_price()));  
            row.createCell((short) 2).setCellValue((order.getOrder_meth()));  
            
        }
        
        
        // 第六步，将文件存到指定位置  
        try  
        {  
            FileOutputStream fout = new FileOutputStream("D:/Order.xls");  
            wb.write(fout);  
            fout.close();  
        }  
        catch (Exception e)  
        {  
            e.printStackTrace();  
        }  
		
        
        
        
        //浏览器弹出下载框，选择下载路径
        
        OutputStream out = null;  
        
        try {      

			
			
            out = response.getOutputStream();  
            String fileName = "enroll.xls";// 文件名  
            response.setContentType("application/x-msdownload");  
            response.setHeader("Content-Disposition", "attachment; filename="  
                                                    + URLEncoder.encode(fileName, "UTF-8"));  
            wb.write(out);  
        } catch (Exception e) {  
            e.printStackTrace();  
        } finally {    
            try {     
                out.close();    
            } catch (IOException e) {    
                e.printStackTrace();  
            }    
        }   
		
	}
	
	

}
