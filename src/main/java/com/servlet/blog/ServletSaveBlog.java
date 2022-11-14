package com.servlet.blog;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.blog.Blog;
import com.sessionFactory.GetSessionFactory;

/**
 * Servlet implementation class ServletSaveBlog
 */
public class ServletSaveBlog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletSaveBlog() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String titledata = request.getParameter("titledata");
			String contantdata = request.getParameter("contantdata");

			Blog blog = new Blog(titledata, contantdata);
			System.out.println(blog.getId() + ":" + blog.getTitle());

			// sessionFActory Session is here

			Session s = GetSessionFactory.getFactorySession().openSession();
			Transaction tx = s.beginTransaction();
			s.persist(blog);
			tx.commit();
			s.close();
			PrintWriter out = response.getWriter();
			out.println("<h1>Data Save</h1>");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
