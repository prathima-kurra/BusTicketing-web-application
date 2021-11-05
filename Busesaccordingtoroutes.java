package com.busticket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SourceandDestination
 */
@WebServlet("/Busesaccordingtoroutes")
public class Busesaccordingtoroutes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	List<Buses> buseslist = new ArrayList<>();

	public void init(ServletConfig config) {

		Buses b1 = new Buses("B1", "ACE", 10, 10, 25, 50);
		Buses b2 = new Buses("B2", "BDA", 15, 5, 35, 70);
		Buses b3 = new Buses("B3", "CBE", 8, 7, 10, 25);
		Buses b4 = new Buses("B4", "ABCD", 8, 10, 70, 150);
		Buses b5 = new Buses("B5", "EDCBA", 12, 10, 50, 100);
		Buses b6 = new Buses("B6", "DABE", 4, 8, 100, 200);

		buseslist.add(b1);
		buseslist.add(b2);
		buseslist.add(b3);
		buseslist.add(b4);
		buseslist.add(b5);
		buseslist.add(b6);

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String source = request.getParameter("source");
		String destination = request.getParameter("destination");

		// PrintWriter out = response.getWriter();
		// out.println("Buseslist:"+buseslist);

		if (source == " " || destination == " ") {
			String message = "Enter source and destination";
			request.setAttribute("message", message);
			RequestDispatcher rd = request.getRequestDispatcher("Validationerror.jsp");
			rd.forward(request, response);
		} else if (source.equals(destination)) {
			String message = "Source and destination are same";
			request.setAttribute("message", message);
			RequestDispatcher rd = request.getRequestDispatcher("Validationerror.jsp");
			rd.forward(request, response);
		}

		else {
			request.setAttribute("source", source);
			request.setAttribute("destination", destination);

			// List<Buses> buseslist=(List<Buses>) session.getAttribute("buseslist");
			List<Buses> busesaccordingtoroutes = new ArrayList<>();
			for (Buses bus : buseslist) {
				String route = bus.getroute();
				if (route.contains(source) && route.contains(destination)) {
					int i = route.indexOf(source);
					int j = route.indexOf(destination);
					if (i < j)
						busesaccordingtoroutes.add(bus);
				}
			}

			// session.setAttribute("busesobj",busesaccordingtoroutes);
			HttpSession session = request.getSession();
			session.setAttribute("buseslist", buseslist);

			request.setAttribute("busesobj", busesaccordingtoroutes);
			RequestDispatcher rd = request.getRequestDispatcher("Tickets.jsp");
			rd.forward(request, response);
		}

	}
}