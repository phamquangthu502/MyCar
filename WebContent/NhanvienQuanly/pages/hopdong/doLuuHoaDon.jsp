<%@page import="java.text.SimpleDateFormat"%>
<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<%
	//update tbl_hdong ve trang thai da thanh ly(=2)
	try{
		HDongDoitacChoThue hd = (HDongDoitacChoThue) session.getAttribute("thanhly");
		int ma = hd.getId();
		HDongDoitacChoThueDAO dao = new HDongDoitacChoThueDAO();
		boolean kt = dao.updateHd(ma);
		if(kt) response.sendRedirect("gdHoaDonTl.jsp?1");
	}
	catch(Exception e){
		response.sendRedirect("gdHoaDonTl.jsp?err=1");
	} 
	
%>