package sevlet.javaweb.com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.javaweb.com.Dao;

/**
 * Servlet implementation class sevletlogin
 */
@WebServlet("/sevletlogin")
public class sevletlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sevletlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dis= request.getRequestDispatcher("/login.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("user");
		String pass=request.getParameter("pass");
		Connection conn=Dao.getConnection();
		String sql="SELECT TOP 1000 [username]\r\n" + 
				"      ,[password]\r\n" + 
				"  FROM [JavaWeb].[dbo].[USER]\r\n" + 
				"  where username =? and password=? ";
		try {
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, pass);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {				
				HttpSession sess=request.getSession();
				sess.setAttribute("nick", name);
				response.sendRedirect("/JavaWeb//index");
			}else {
				response.sendRedirect("/JavaWeb//sevletlogin");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
