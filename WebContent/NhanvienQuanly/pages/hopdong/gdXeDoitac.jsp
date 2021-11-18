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

.fr {
	width: 80%;
	border: 1px solid #00000091;
}
</style>
</head>

<body>
	<%
		int stt = Integer.parseInt(request.getParameter("stt"));
	System.out.println("!!!!!!!!!!!!"+stt);
	List<Doitac> tayduas = (List<Doitac>) session.getAttribute("doitacs");
	int id = 0;
	Doitac dt = null;
	if (tayduas != null) {
		dt = tayduas.get(stt);
		id = dt.getId();

	}
	String dong = (String) session.getAttribute("tenTd");
	HDongKyGuiDoitacDAO tddao = new HDongKyGuiDoitacDAO();
	List<Xe> listXe = tddao.getXeDoitac(id, dong);
	session.setAttribute("xedoitac1", listXe);
	%>
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
									href="../../pages/hopdong/dshopdong.html"> Xem danh sách </a></li>
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
								<form action="doLuuHopDong.jsp" method="post">
									<div class="card-body">
										<h4 class="card-title">Danh sách xe của đối tác</h4>
										<div class="row">
											<div class="col-5">
												<p class="card-description">Thông tin đối tác</p>
											</div>

											<div class="col-7">
												<p class="card-description">Thông tin hợp đồng</p>
											</div>
										</div>

										<div class="row">
											<div class="col-5">
												<div class="infor"
													style="width: 100%; border: 1px solid #00000021;">
													<ul class="list-group">
														<li class="list-group-item"
															style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
															<div class="row">
																<div class="col-4">Mã</div>
																<div class="col-8">
																	<input type="type" class="fr" name="ma" readonly
																		value="<%=dt.getId()%>" />
																</div>
																<%-- <div class="col-8"><%=dt.getId()%> 
																</div>--%>
															</div>
														</li>
														<li class="list-group-item"
															style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
															<div class="row">
																<div class="col-4">Họ và tên</div>
																<div class="col-8">
																	<input type="type" class="fr" name="tendoitac" readonly
																		value="<%=dt.getTen()%>" />
																</div>
															</div>
														</li>
														<li class="list-group-item"
															style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
															<div class="row">
																<div class="col-4">Địa chỉ</div>
																<div class="col-8">
																	<input type="type" class="fr" name="diachi" readonly
																		value="<%=dt.getDiachi()%>" />
																</div>
															</div>
														</li>
														<li class="list-group-item"
															style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
															<div class="row">
																<div class="col-4">Điện thoại</div>
																<div class="col-8">
																	<input type="type" class="fr" name="sdt" readonly
																		value="<%=dt.getDt()%>" />
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<div class="col-7">
												<div class="infor"
													style="width: 100%; border: 1px solid #00000021;">
													<ul class="list-group">
														<li class="list-group-item"
															style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
															<div class="row">
																<div class="col-4">Ngày bắt đầu</div>
																<div class="col-8">
																	<input type="date" class="fr" name="ngaybd" />
																</div>
															</div>
														</li>
														<li class="list-group-item"
															style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
															<div class="row">
																<div class="col-4">Ngày kết thúc</div>
																<div class="col-8">
																	<input type="date" class="fr" name="ngaykt" />
																</div>
															</div>
														</li>
														<li class="list-group-item"
															style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
															<div class="row">
																<div class="col-4">Tình trạng xe</div>
																<div class="col-8">
																	<input type="text" class="fr" name="tinhtrang">
																</div>
															</div>
														</li>
														<li class="list-group-item"
															style="padding: 0.35rem 1.25rem; border: 1px solid rgba(0, 0, 0, 0);">
															<div class="row">
																<div class="col-4">Đơn giá ký gửi(VNĐ)</div>
																<div class="col-8">
																	<input type="text" class="fr" name="dongia">
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>

										<div class="table-responsive pt-3">
											<h4>Danh sách xe của đối tác</h4>
											<p style="color: red;">( Vui lòng chọn xe đã thỏa thuận
												với đối tác )</p>
											<table class="table table-bordered">
												<thead>
													<tr>
														<th style="width: 30px;">Chọn</th>
														<th style="width: 30px;">STT</th>
														<th>Tên xe</th>
														<th>Biển số</th>
														<th>Dòng xe</th>
														<th>Đời</th>
														<th>Màu</th>
													</tr>
												</thead>
												<tbody>
													<%
														for (int i = 0; i < listXe.size(); i++) {
													%>
													<tr>
														<td>
															<div class="form-check">
																<label class="form-check-label"> 
																<input
																	type="radio" name="radio" class="form-check-input" value="<%=i%>">
																</label>
															</div>
														</td>
														<td><%=i + 1%></td>
														<td><%=listXe.get(i).getTen()%></td>
														<td><%=listXe.get(i).getBienso()%></td>
														<td><%=listXe.get(i).getDong()%></td>
														<td><%=listXe.get(i).getDoi()%></td>
														<td><%=listXe.get(i).getMau()%></td>
														
													</tr>
													<%
														}
													%>
												</tbody>
											</table>
										</div>
									</div>
									<div style="display: flex; justify-content: center;">
										<button type="submit" class="btn btn-primary mb-2">Xác
											nhận ký</button>
									</div>

								</form>
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

>
