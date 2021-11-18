<%@page import="java.text.SimpleDateFormat"%>
<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản lý thuê xe ô tô</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="../../vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet" href="../../css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="../../images/favicon.png" />
<style>
.btn1 {
	padding: 0.875rem 1.25rem;
	font-size: 0.75rem;
}
</style>
</head>

<body>
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<!-- partial:partials/_navbar.html -->
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo mr-5" href="../../gdChinhNVQL.jsp">ThuPQ<a>
						<a class="navbar-brand brand-logo-mini"
						href="../../gdChinhNVQL.jsp">Thu</a>
			</div>
			<div
				class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
				<button class="navbar-toggler navbar-toggler align-self-center"
					type="button" data-toggle="minimize">
					<span class="ti-view-list"></span>
				</button>

				<ul class="navbar-nav navbar-nav-right">
					<li class="nav-item nav-profile dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						id="profileDropdown"> <img src="images/faces/face5.jpg"
							alt="profile" />
					</a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
							aria-labelledby="profileDropdown">
							<a class="dropdown-item"> <i class="ti-settings text-primary"></i>
								Cài đặt tài khoản
							</a> <a class="dropdown-item"> <i
								class="ti-power-off text-primary"></i> Đăng xuất
							</a>
						</div></li>
				</ul>
				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="offcanvas">
					<span class="ti-view-list"></span>
				</button>
			</div>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:../../partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link"
						href="../../gdChinhNVQL.jsp"> <i class="ti-shield menu-icon"></i>
							<span class="menu-title">Trang chủ</span>
					</a>
					</li>

					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#hdk2" aria-expanded="false"
						aria-controls="auth"> <i class="ti-marker-alt menu-icon"></i>
							<span class="menu-title">Hợp đồng thuê xe đối tác</span> <i
							class="menu-arrow"></i>
						</a>
						<div class="collapse" id="hdk2">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="../../pages/hopdong/gdTimDoitac.jsp"> Tạo hợp đồng </a></li>
								<li class="nav-item"><a class="nav-link"
									href="../../pages/hopdong/daHopDong.jsp"> Xem danh sách </a></li>
							</ul>
						</div>
					</li>

				</ul>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Danh sách hợp đồng thuê xe từ đối tác</h4>
									<p class="card-description"></p>

									<div class="table-responsive pt-3">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th style="width: 30px;">STT</th>
													<th>Ngày bắt đầu</th>
													<th>Ngày kết thúc</th>
													<th>Tên đối tác</th>
													<th>Số điện thoại</th>
													<th>Tên xe</th>
													<th>Biển số</th>
													<th>Đơn giá</th>
													<th>Tình trạng</th>
													<th style="width: 60px;">Thao tác</th>
												</tr>
					
											</thead>
											<%
												HDongDoitacChoThueDAO dao = new HDongDoitacChoThueDAO();
											
												List<HDongDoitacChoThue> hds = dao.listHD();
												session.setAttribute("danhsachHD", hds);
											if (hds != null) {
											%>
											<tbody>
												<%
													for (int i = 0; i < hds.size(); ++i) {
														SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
														String date1=sdf.format(hds.get(i).getNgaybd());
														String date2=sdf.format(hds.get(i).getNgaykt());
												%>
												<tr>
													<td><%=i + 1%></td>
													<td><%=date1%></td>
													<td><%=date2%></td>
													<td><%=hds.get(i).getDoitac().getTen()%></td>
													<td><%=hds.get(i).getDoitac().getDt()%></td>
													<td><%=hds.get(i).getXe().getTen()%></td>
													<td><%=hds.get(i).getXe().getBienso()%></td>
													<td><%=hds.get(i).getDongia()%></td>
													<td><%=hds.get(i).getTinhtrang()%></td>
													<td><a
														href="gdHoaDonTl.jsp?stt=<%=i%>">Thanh lý</a></td>
												</tr>
												<%
													}
												%>

											</tbody>
											<%
												}
											%>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">
						<span
							class="text-muted d-block text-center text-sm-left d-sm-inline-block">Custom
							© by PhamQuangThu</span> <span
							class="float-none text-muted float-sm-right d-block mt-1 mt-sm-0 text-center">MSV:B17DCCN590_Nhom3</span>
					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="../../vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="../../js/off-canvas.js"></script>
	<script src="../../js/hoverable-collapse.js"></script>
	<script src="../../js/template.js"></script>
	<script src="../../js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->
</body>

</html>
