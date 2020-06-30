package sevlet.javaweb.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.javaweb.com.ContactDAO;
import Dao.javaweb.com.Dao;
import Model.sanpham;

/**
 * Servlet implementation class index
 */
@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public index() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sess=request.getSession();
		Object o=sess.getAttribute("nick");
		Connection conn=Dao.getConnection();
		List<sanpham> s=new ArrayList<sanpham>();
		Boolean check=true;
		if(o!=null) {
			
			Boolean checkmanager=ContactDAO.checkManager(sess.getAttribute("nick").toString());
			request.setAttribute("check", checkmanager);
			check=false;
		}
		try {
		
			String sql="SELECT TOP 1000 [Name]\r\n" + 
					"      ,[url]\r\n" + 
					"      ,[about]\r\n" + 
					"      ,[price]\r\n" +  
					"      ,[id]\r\n" + 
					"  FROM [JavaWeb].[dbo].[PRODUCT]";
			
			Statement stm=conn.createStatement();
			ResultSet rs=stm.executeQuery(sql);
			while(rs.next()) {
				sanpham sp=new sanpham(rs.getString(1),rs.getString(3),rs.getString(2), rs.getInt(4),rs.getInt(5));
				s.add(sp);
			}
			System.out.println(s.get(0).getId());
			request.setAttribute("list",s );
			request.setAttribute("checklogin", check);
			RequestDispatcher dispatcher=request.getRequestDispatcher("/Websales.jsp");
			dispatcher.forward(request, response);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
