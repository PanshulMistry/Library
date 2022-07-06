package com.library.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetPdfBook
 */
public class GetPdfBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPdfBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String bid=request.getParameter("bookid");
		
		  int bookId=Integer.parseInt(bid);
//		  String bookId = request.getParameter("bookId")!=null?request.getParameter("bookId"):"NA";
	         
	        ServletOutputStream sos;
	        Connection  con=null;
	        PreparedStatement pstmt=null;
	         
	        response.setContentType("application/pdf");
	 
	        response.setHeader("Content-disposition","inline; filename="+bookId+".pdf" );
	 
	 
	         sos = response.getOutputStream();
	         
	 
	         ////
	         
	         
	     		try {
	     			Class.forName("com.mysql.cj.jdbc.Driver");
	     		} catch (ClassNotFoundException e) {
	     			e.printStackTrace();
	     		}
	     		try {
	     			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "root");
	     			if (con != null)
	     				System.out.println("connection successful");

	     		} catch (SQLException e) {
	     			e.printStackTrace();
	     		}

	         
	          ResultSet rset=null;
	            try {
	                pstmt = con.prepareStatement("Select book_pdf from book_table where book_id=?");
	                pstmt.setInt(1, bookId);;
	                rset = pstmt.executeQuery();
	                if (rset.next())
	                    sos.write(rset.getBytes("book_pdf"));
	                else
	                    return;
	                 
	            } catch (SQLException e) {
	                // TODO Auto-generated catch block
	                e.printStackTrace();
	            }
	     
	        sos.flush();
	        sos.close();
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
