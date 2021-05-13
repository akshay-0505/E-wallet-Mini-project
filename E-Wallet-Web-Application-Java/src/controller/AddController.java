package controller;

import java.io.IOException;
//import java.util.Enumeration;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import model.Register;

/**
 * Servlet implementation class AddController
 */
@WebServlet("/AddController")
public class AddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		int i=0;
		Enumeration<String> attributes = request.getSession().getAttributeNames();
		while (attributes.hasMoreElements()) {
		    String attribute = (String) attributes.nextElement();
		    System.out.println(attribute+" : "+request.getSession().getAttribute(attribute));
		}
		
		Register user=(Register)session.getAttribute("user");
		String password=request.getParameter("pass");
		System.out.println(user.getPass());
		if(session!=null) {
			Double amt=Double.parseDouble(request.getParameter("amount"));
			Dao data=new Dao();
			i=data.updateBalance(user, amt);
			user.setBalance(user.getBalance()+amt);
			session.setAttribute("user", user);
			session.setAttribute("balance", user.getBalance());
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		if(i>0) {
			String msg="Balance Updated Successfully";
			request.setAttribute("msg", msg);
			rd.forward(request, response);
		}
		else {
			String msg="Failed to update balance";
			request.setAttribute("msg", msg);
			rd.forward(request, response);
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
