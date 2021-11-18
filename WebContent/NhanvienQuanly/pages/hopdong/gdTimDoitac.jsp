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
					</a></li>

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
									<h4 class="card-title">Tìm kiếm đối tác theo kiểu xe</h4>
									<p class="card-description"></p>
									<form action="doTim.jsp" method="post">
										<div class="form-group" style="margin: 20px 0px;">
											<div class="chonhk"
												style="width: 80%; display: flex; flex-wrap: wrap;">
												<div class="chonhk1"
													style="line-height: 38px; margin-right: 20px;">
													<label for="tenmon" style="line-height: 38px;" class="">Chọn
														dòng xe: </label>
												</div>
												<div class="chonhk2" style="width: 250px;">
													<select class="form-control" name="tenTd" id="semester"
														style="color: #000;">
														<option>SEDAN</option>
														<option>hatback</option>
														<option>Xe Vinfast</option>
													</select>
												</div>
												<div style="margin-left: 15px; border: 1px solid #248afd;">
													<button style="height: 46px; line-height: 46px;"
														class="btn btn-info btnsearch" type="submit"
														data-toggle="tooltip" title="Tìm kiếm">
														<i class="ti-search " aria-hidden="true"
															style="display: block; color: #fff; font-size: 1.25rem;">
														</i>
													</button>
												</div>
											</div>
										</div>
									</form>

									<div class="table-responsive pt-3">
										<p>Danh sách đối tác theo dòng xe đã chọn</p>
										<table class="table table-bordered">
											<thead>
												<tr>
													<th style="width: 30px;">STT</th>
													<th>Trạng thái</th>
													<th>Tên</th>
													<th>Địa chỉ</th>
													<th>Số điện thoại</th>
													<th>Ghi chú</th>
													<th style="width: 60px;">Thao tác</th>
												</tr>
					
											</thead>
											<%
												List<Doitac> tayduas = (List<Doitac>) session.getAttribute("doitacs");
											if (tayduas != null) {
											%>
											<tbody>
												<%
													for (int i = 0; i < tayduas.size(); ++i) {
												%>
												<tr>
													<td><%=i + 1%></td>
													<td><%=tayduas.get(i).getTrangthai()%></td>
													<td><%=tayduas.get(i).getTen()%></td>
													<td><%=tayduas.get(i).getDiachi()%></td>
													<td><%=tayduas.get(i).getDt()%></td>
													<td><%=tayduas.get(i).getGhichu()%></td>
													<td><a
														href="gdXeDoitac.jsp?stt=<%=i%>">Xem</a></td>
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
