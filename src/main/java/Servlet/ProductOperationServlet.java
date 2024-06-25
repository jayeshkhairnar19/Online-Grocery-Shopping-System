package Servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Dao.CatagoryDao;
import  Dao.ProductDao;
import Entities.Categories;
import Entities.Product;
import Entities.User;

import Project.FactoryProvider;

@WebServlet("/ProductOperationServlet")

@MultipartConfig
public class ProductOperationServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
//			/*
//			 * String title = request.getParameter("catTitle"); String desc =
//			 * request.getParameter("catDiscription");
//			 */

			
			String op = request.getParameter("operation");
			
			if(op.trim().equals("addcatagory")) {
				
				String title = request.getParameter("catTitle"); 
				String desc =  request.getParameter("catDiscription");
				
				Categories catagory = new Categories();
				catagory.setCategoryTitle(title);
				catagory.setCatergoryDescription(desc);
				
				CatagoryDao cd = new CatagoryDao(FactoryProvider.getFactory());
				int cId = cd.saveCatagory(catagory);
				out.println("save succesfully !!");
				HttpSession ht = request.getSession();
				ht.setAttribute("message", "Catagery is added Successfully...");
				response.sendRedirect("admin.jsp");
				return;
				
			}else if(op.trim().equals("addproduct")) {
				
				
			String pName =	request.getParameter("pName");
			String pDesc =	request.getParameter("pDescription");
			int pPrice = Integer.parseInt(request.getParameter("pPrice"));
			int pDiscount = Integer.parseInt(request.getParameter("pDiscount"));
			int pQty = Integer.parseInt(request.getParameter("pQuantity"));
			int cID = Integer.parseInt(request.getParameter("cID"));
			Part part = request.getPart("pPhoto");
			
			Product p = new Product();
			p.setpName(pName);
			p.setpDescription(pDesc);
			p.setpPrice(pPrice);
			p.setpPrice(pPrice);
			p.setpQuantity(pQty);
			p.setpPhoto(part.getSubmittedFileName());
			
			
			CatagoryDao cd = new CatagoryDao(FactoryProvider.getFactory());
			Categories ct = cd.getCatagory(cID);
			//p.setCatagoty(ct);
			p.setCategory(ct);
		
			ProductDao pd = new ProductDao(FactoryProvider.getFactory());
			pd.saveProduct(p);
			// pic upload
			
			try {
				
			
			
			
			//find path to upload photo
			String path=request.getRealPath("Image")+File.separator+"Products"+File.separator+part.getSubmittedFileName();
			
			FileOutputStream fos = new FileOutputStream(path);
			InputStream is =  part.getInputStream();
			
			//reading data
			byte[] data = new byte[is.available()];
			
			is.read(data);
			
			// writing the data
			fos.write(data);
			
			fos.close();
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			
			
			out.println("save Successfully !!!");
			HttpSession ht = request.getSession();
			ht.setAttribute("message", "Product is added Successfully...");
			response.sendRedirect("admin.jsp");
			return;
			
			
			
				
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} catch (Throwable e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
		
	}

}