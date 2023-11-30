<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList" %>
<%
   Connection conn = null;
	String s="";

   try{
      String url = "jdbc:mysql://localhost:3306/db"; 
      String id = "root";
      String pw = "qwe123";
      Class.forName("com.mysql.jdbc.Driver");
      
      conn=DriverManager.getConnection(url,id,pw);
      
      PreparedStatement ps = null;
      ResultSet rs = null;
      
      
      String sql = "select * from test";

      ps = conn.prepareStatement(sql);
      rs = ps.executeQuery();
      rs.last();
      int rc=rs.getRow();
      rs.first();
      
      s=Integer.toString(rs.getInt(0));
      
     
      
      

   }catch(Exception e){
      e.printStackTrace();
   }

   out.println(s);
%>