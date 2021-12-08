<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<%
	try{
		//Lay ra cac stt cua xe trong session.setAttribute("xedoitac1", listXe);
		String [] stts = new String[10];
		if(request.getParameter("stt") != null) 
			stts = request.getParameterValues("stt");
		for(String s:stts){
			System.out.println(s);
		}
		List<Xe> listXe = (List<Xe>)session.getAttribute("xedoitac1");
		int ma = Integer.parseInt(request.getParameter("ma").trim());
		String tendoitac = request.getParameter("tendoitac").trim();
		String diachi = request.getParameter("diachi").trim();
		String sdt = request.getParameter("sdt").trim();
		Doitac doitac1 = new Doitac(ma,tendoitac,diachi,sdt);

		System.out.println(doitac1.toString());
		/* int sttxe = Integer.parseInt(request.getParameter("radio").trim());
		List<Xe> listXe = (List<Xe>)session.getAttribute("xedoitac1");
		Xe xe1 = listXe.get(sttxe);
		
		int idxe = listXe.get(sttxe).getId();*/
		
		String ngaybd = request.getParameter("ngaybd");
		String ngaykt = request.getParameter("ngaykt");
		
		String [] listTinhtrang = new String[10]; 
		if(request.getParameter("tinhtrang") != null) 
			listTinhtrang = request.getParameterValues("tinhtrang");
		for(String s:listTinhtrang){
			System.out.println(s);
		}
		String [] listPrice = new String[10]; 
		if(request.getParameter("price") != null) 
			listPrice = request.getParameterValues("price");
		for(String s:listPrice){
			System.out.println(s);
		}

		HDongDoitacChoThue hdong1 = new HDongDoitacChoThue();
		hdong1.setNgaybd(ngaybd);
		hdong1.setNgaykt(ngaykt);
		hdong1.setTrangthai(1);
		hdong1.setXe(xe1);
		hdong1.setDongia(dongia);
		hdong1.setDoitac(doitac1);
		hdong1.setTinhtrang(tinhtrang);
		hdong1.setGhichu("");	
		Nhanvien nv = (Nhanvien) session.getAttribute("nhanvienquanly");	
		hdong1.setNhanvien(nv);
		session.setAttribute("hdong1", hdong1);	
		HDongDoitacChoThueDAO dao = new HDongDoitacChoThueDAO();
		boolean check = dao.luuHopDong(hdong1);
		if(check) response.sendRedirect("gdChitietHDgui.jsp");
		else response.sendRedirect("gdXeDoitac.jsp?err=1"); 
		//out.print("ok"+request.getParameter("id"));
	}
	catch(Exception e){
		response.sendRedirect("gdXeDoitac.jsp?err=1");
	} 
	
%>
