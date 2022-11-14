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
 * Servlet implementation class ServletDeleteData
 */
public class ServletDeleteData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletDeleteData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
try {
			
			int blogid=Integer.parseInt(request.getParameter("Id"));
			System.out.println(blogid);
			Session s = GetSessionFactory.getFactorySession().openSession();
			Transaction tx = s.beginTransaction();
			Blog blog = (Blog)s.get(Blog.class, blogid);
			s.delete(blog);
			tx.commit();
			s.close();
			response.sendRedirect("Display.jsp");
		} catch (Exception e) {
		e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

}
