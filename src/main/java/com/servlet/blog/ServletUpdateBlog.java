package com.servlet.blog;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.blog.Blog;
import com.sessionFactory.GetSessionFactory;

/**
 * Servlet implementation class ServletUpdateBlog
 */
public class ServletUpdateBlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUpdateBlog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int blogid=Integer.parseInt(request.getParameter("Id").trim());
		String titledata = request.getParameter("titledata");
		String contantdata = request.getParameter("contantdata");
		Session s = GetSessionFactory.getFactorySession().openSession();
		Transaction tx = s.beginTransaction();
		Blog blog = s.get(Blog.class, blogid);
	
		blog.setTitle(titledata);
		blog.setPost(contantdata);
		s.persist(blog);
		tx.commit();
		response.sendRedirect("Display.jsp");
		s.close();
	}

}
