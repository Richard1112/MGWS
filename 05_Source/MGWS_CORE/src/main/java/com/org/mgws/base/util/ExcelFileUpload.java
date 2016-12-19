package com.org.mgws.base.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.org.mgws.entity.TInvestmentValue;
import com.org.mgws.service.ProductService;

public class ExcelFileUpload extends HttpServlet {

	private static final long serialVersionUID = 3033161372792046173L;

	@Override
	@SuppressWarnings({ "unchecked", "resource" })
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String savePath = this.getServletConfig().getServletContext().getRealPath("");
		savePath = savePath + "/upload/";
		String productId = request.getParameter("productId");
		File f1 = new File(savePath);
		if (!f1.exists()) {
			f1.mkdirs();
		}
		DiskFileItemFactory fac = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fac);
		upload.setHeaderEncoding("utf-8");
		List<FileItem> fileList = null;
		try {
			fileList = upload.parseRequest(request);
		} catch (FileUploadException ex) {
			return;
		}
		Iterator<FileItem> it = fileList.iterator();
		String name = "";
		String extName = "";
		while (it.hasNext()) {
			FileItem item = it.next();
			if (!item.isFormField()) {
				name = item.getName();
				// System.out.println(size + " " + type);
				if (name == null || name.trim().equals("")) {
					continue;
				} // 扩展名格式：
				if (name.lastIndexOf(".") >= 0) {
					extName = name.substring(name.lastIndexOf("."));
				}
				File file = null;
				do {
					// 生成文件名：
					name = UUID.randomUUID().toString();
					file = new File(savePath + name + extName);
				} while (file.exists());
				File saveFile = new File(savePath + name + extName);
				try {
					item.write(saveFile);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		File fi = new File(savePath + name + extName);
		POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(fi)); // 读取excel模板
		try {
			HSSFWorkbook workbook = new HSSFWorkbook(fs); // 读取了模板内所有sheet内容
			HSSFSheet sheet = workbook.getSheetAt(0);
			int rows = sheet.getLastRowNum();
			List<TInvestmentValue> data = new ArrayList<TInvestmentValue>();
			for (int i = 0; i <= rows; i++) {
				Row row = sheet.getRow(i);
				String v1 = getValue(row.getCell(0), 1);// 日期
				String v2 = getValue(row.getCell(1), 2);// 净值
				TInvestmentValue tmp = new TInvestmentValue();
				tmp.setDate(v1.replace("/", ""));
				tmp.setNetValue(new BigDecimal(v2));
				tmp.setProductId(Long.parseLong(productId));
				data.add(tmp);
			}
			processData(data);
		} finally {
			fi.deleteOnExit();
			fs.close();
		}
		response.getOutputStream().print(name + extName);
	}

	@SuppressWarnings({ "deprecation", "static-access" })
	private String getValue(Cell cell, int cellIndex) {
		if (cell.getCellType() == cell.CELL_TYPE_BOOLEAN) {
			return String.valueOf(cell.getBooleanCellValue());
		} else if (cell.getCellType() == cell.CELL_TYPE_NUMERIC) {
			// return String.valueOf(cell.getNumericCellValue());
			String cellValue = "";
			if (HSSFDateUtil.isCellDateFormatted(cell)) { // 判断是日期类型
				SimpleDateFormat dateformat = new SimpleDateFormat("yyyyMMdd");
				Date dt = HSSFDateUtil.getJavaDate(cell.getNumericCellValue());// 获取成DATE类型
				cellValue = dateformat.format(dt);
			} else {
				// 解决问题：1，科学计数法(如2.6E+10)，2，超长小数小数位不一致（如1091.19649281798读取出1091.1964928179796），
				// 3，整型变小数（如0读取出0.0）
				cellValue = NumberToTextConverter.toText(cell.getNumericCellValue());
				// 日期类型的列如果设置成了通用格式，HSSFDateUtil.isCellDateFormatted则无法识别，需要通过配置列出所有日期列
				if (cellIndex == 1) {
					cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
					SimpleDateFormat dateformat = new SimpleDateFormat("yyyyMMdd");
					Date dt = HSSFDateUtil.getJavaDate(cell.getNumericCellValue());// 获取成DATE类型
					cellValue = dateformat.format(dt);
				}
			}
			return cellValue;
		} else {
			return String.valueOf(cell.getStringCellValue());
		}
	}

	private void processData(List<TInvestmentValue> data) {
		ApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
		ProductService productService = (ProductService) context.getBean("productServiceImpl");
		productService.uploadProductValue(data);

	}

}
