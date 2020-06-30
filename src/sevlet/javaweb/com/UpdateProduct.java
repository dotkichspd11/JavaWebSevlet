package sevlet.javaweb.com;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Dao.javaweb.com.ContactDAO;
import Model.sanpham;

/**
 * Servlet implementation class UpdateProduct
 */
@WebServlet("/UpdateProduct")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 50, // 50MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dis= request.getRequestDispatcher("/Update.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part fileparturl =request.getPart("file");
		String files=extractFileName(fileparturl);
		files = new File(files).getName();
		String part="Images/"+files;
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("Name");
		String about=request.getParameter("UpdateAbout");
		int price=Integer.parseInt(request.getParameter("UpdatePrice"));
			sanpham b=new sanpham(id,name,about,part,price);
		if(new ContactDAO().Update(b)) {
			response.sendRedirect("/JavaWeb/index");
		}else {
			System.out.println("false");
		}
	}
	private String extractFileName(Part part) {
	    String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	    	
	      if (s.trim().startsWith("filename")) {
	        return s.substring(s.indexOf("=") + 2, s.length() - 1);
	      }
	    }
	    return "";
	  }
}
