<%@page import="java.text.SimpleDateFormat"%>
<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<%
	try{
		int ma = Integer.parseInt(request.getParameter("ma").trim());
		String tendoitac = request.getParameter("tendoitac").trim();
		String diachi = request.getParameter("diachi").trim();
		String sdt = request.getParameter("sdt").trim();
		Doitac doitac1 = new Doitac(ma,tendoitac,diachi,sdt);
		/* session.setAttribute("doitac1", doitac1); */
		
		/* xe: update xe co id da chon: trang thai: 2 */
		int sttxe = Integer.parseInt(request.getParameter("radio").trim());
		/* System.out.println("++++++++++++++++++"+sttxe); */
		List<Xe> listXe = (List<Xe>)session.getAttribute("xedoitac1");
		Xe xe1 = listXe.get(sttxe);
		
		int idxe = listXe.get(sttxe).getId();
		
		/* session.setAttribute("xe1", xe1); */
		
		/* thông tin hợp đồng */
		String ngaybd = request.getParameter("ngaybd");
		String ngaykt = request.getParameter("ngaykt");
		
		/* Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(ngaybd);  
		Date date2=new SimpleDateFormat("yyyy-MM-dd").parse(ngaykt); */
		
		String tinhtrang = request.getParameter("tinhtrang").trim();
		float dongia = Float.parseFloat(request.getParameter("dongia"));
		
		/* XeDathueDoitac x1 = new XeDathueDoitac();
		x1.setDongia(dongia);
		x1.setXe(xe1); */
		/* System.out.println("__________________"+date1+"_________________"+date2); */
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
		/* hdong1.setXeDathue(x1); */
		/* List<XeDathueDoitac> listXedathue = new ArrayList<>();
		listXedathue.add(x1); */
		/* hdong1.setListXedathue(listXedathue); */
		session.setAttribute("hdong1", hdong1);
		
		HDongDoitacChoThueDAO dao = new HDongDoitacChoThueDAO();
		boolean check = dao.luuHopDong(hdong1);
		if(check) response.sendRedirect("gdChitietHDgui.jsp");
		else response.sendRedirect("gdXeDoitac.jsp?err=1");
	}
	catch(Exception e){
		response.sendRedirect("gdXeDoitac.jsp?err=1");
	} 
	
%>