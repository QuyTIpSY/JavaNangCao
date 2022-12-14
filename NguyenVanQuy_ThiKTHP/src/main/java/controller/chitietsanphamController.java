package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.chitietsanphambean;
import bean.sanphambean;
import bo.chitietsanphambo;
import bo.sanphambo;

/**
 * Servlet implementation class chitietsanphamController
 */
@WebServlet("/chitietsanphamController")
public class chitietsanphamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chitietsanphamController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int msp=Integer.parseInt(request.getParameter("msp"));
		String anh=request.getParameter("anh");
		String tensp=request.getParameter("tensp");
		long gia=Long.parseLong(request.getParameter("gia"));
		
		
		chitietsanphambo ctspbo=new chitietsanphambo();
		chitietsanphambean ctsp=ctspbo.ctsp(msp);
		
		request.setAttribute("ctsp", ctsp);
		request.setAttribute("anh", anh);
		request.setAttribute("tensp", tensp);
		request.setAttribute("gia", gia);
		
		RequestDispatcher rd=request.getRequestDispatcher("chitietsanpham.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
