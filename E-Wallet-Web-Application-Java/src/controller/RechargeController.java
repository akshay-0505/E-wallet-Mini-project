package controller;

import java.io.IOException;
import model.Recharge;

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
 * Servlet implementation class RechargeController
 */
@WebServlet("/RechargeController")
public class RechargeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RechargeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession(false);
		int i=0;
		Register user=(Register)session.getAttribute("user");
		String password=request.getParameter("pass");
		System.out.println(password);
		if(session!=null) {
			String mob=request.getParameter("mob");
			double amt=Double.parseDouble(request.getParameter("amount"));
			String provider=request.getParameter("provider");
			Recharge rg=new Recharge(user.getUname(),mob,amt,provider);
			
			Dao data=new Dao();
			i=data.recharge(user, rg);
			if(i>0) {
				user.setBalance(user.getBalance()-amt);
				session.setAttribute("user", user);
				session.setAttribute("balance", user.getBalance());
			}
			
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		if(i>0) {
			String msg1="Recharge Successfull..";
			request.setAttribute("msg1", msg1);
			rd.forward(request, response);
		}
		else {
			String msg1="Recharge Failed..";
			request.setAttribute("msg1", msg1);
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
