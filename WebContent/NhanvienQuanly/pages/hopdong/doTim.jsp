<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<%
	String ten = request.getParameter("tenTd").trim();
	session.setAttribute("tenTd", ten);
	List<Doitac> doitacs = null;
	if (ten != null) {
		HDongKyGuiDoitacDAO tddao = new HDongKyGuiDoitacDAO();
		doitacs = tddao.searchDoitac(ten);
		session.setAttribute("doitacs", doitacs);
		response.sendRedirect("gdTimDoitac.jsp");
	}
%>