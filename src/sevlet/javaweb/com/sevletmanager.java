package sevlet.javaweb.com;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.javaweb.com.ContactDAO;
import Model.sanpham;

import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class sevletmanager
 */
@WebServlet("/sevletmanager")
public class sevletmanager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sevletmanager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			List<sanpham> list = ContactDAO.listProduct();
			request.setAttribute("list",list);
			RequestDispatcher dis= request.getRequestDispatcher("/Manager.jsp");
			dis.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// TODO Auto-generated method stub
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

//	public static void  Delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String id=request.getParameter("id_sanpham");
//		ContactDAO.Delete(id);
//		List(request, response);
//	}
	
}
