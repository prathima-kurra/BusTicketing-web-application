package com.busticket;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ValidateUsernameandPassword
 */
@WebServlet("/ValidateUsernameandPassword")
public class ValidateUsernameandPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateUsernameandPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings({ "unchecked"})
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession session=request.getSession();
		Map<String,String> map=(Map<String,String>)session.getAttribute("RegistrationData");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		if(username==null||password==null||username==""||password=="") {
			String message="Username or password cant be empty";
			request.setAttribute("message", message);
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
			rd.forward(request,response);
		}
		if(map==null) {
			String message="Username does not exists";
			request.setAttribute("message", message);
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
			rd.forward(request,response);
		}
		else if(map.containsKey(username) && map.containsValue(password)) {
			request.setAttribute("username", username);
			RequestDispatcher rd=request.getRequestDispatcher("Homepage.jsp");
			rd.forward(request, response);
		}
		
		else {
			String message="Invalid username and password";
			request.setAttribute("message", message);
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
			rd.forward(request,response);
		}
		
	}

}
