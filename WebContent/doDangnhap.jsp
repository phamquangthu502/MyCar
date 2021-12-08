<%@ page pageEncoding="utf-8"
import="java.util.ArrayList,dao.*,model.*"%>
<%
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("passwords");
    Nhanvien nv = new Nhanvien();
    nv.setUsername(username);
    nv.setPassword(password);
 
    NhanvienDAO dao = new NhanvienDAO();
    boolean kq = dao.kiemtraDangnhap(nv);
     
    if(kq && (nv.getVitri().equalsIgnoreCase("nhan vien quan ly"))){
        session.setAttribute("nhanvienquanly", nv);
        response.sendRedirect("NhanvienQuanly\\gdChinhNVQL.jsp");
    }else{
        response.sendRedirect("gdDangnhap.jsp?error");
    }
%>
