<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Quản lý thuê xe ô tô</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
  <style>
    .btn1{
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
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="../../index.html">ThuPQ<a>
        <a class="navbar-brand brand-logo-mini" href="../../index.html">Thu</a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="ti-view-list"></span>
        </button>
        
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="images/faces/face5.jpg" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="ti-settings text-primary"></i>
                Cài đặt tài khoản
              </a>
              <a class="dropdown-item">
                <i class="ti-power-off text-primary"></i>
                Đăng xuất
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="ti-view-list"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="../../index.html">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Trang chủ</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="ti-palette menu-icon"></i>
              <span class="menu-title">Danh mục</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="pages/ui-features/buttons.html">Danh mục đối tác</a>
                </li>
                <li class="nav-item"> 
                  <a class="nav-link" href="pages/ui-features/typography.html">Danh mục khách hàng</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="pages/ui-features/typography.html">Danh mục xe</a>
                </li>
                <li class="nav-item"> 
                  <a class="nav-link" href="pages/ui-features/typography.html">Danh mục tài sản cầm cố</a>
                </li>
                <li class="nav-item"> 
                  <a class="nav-link" href="pages/ui-features/typography.html">Danh mục hỏng hóc</a>
                </li>
              </ul>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#hdk1" aria-expanded="false" aria-controls="auth">
              <i class=" ti-pencil-alt menu-icon"></i>
              <span class="menu-title">Hợp đồng ký gửi xe</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="hdk1">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Tạo hợp đồng </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login-2.html"> Xem hợp đồng </a></li>
              </ul>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#hdk2" aria-expanded="false" aria-controls="auth">
              <i class="ti-marker-alt menu-icon"></i>
              <span class="menu-title">Hợp đồng thuê xe đối tác</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="hdk2">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../../pages/hopdong/hopdong.html"> Tạo hợp đồng </a></li>
                <li class="nav-item"> <a class="nav-link" href="../../pages/hopdong/dshopdong.html"> Xem danh sách </a></li>
              </ul>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#hdt" aria-expanded="false" aria-controls="auth">
              <i class=" ti-car menu-icon"></i>
              <span class="menu-title">Hợp đồng thuê xe</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="hdt">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../../pages/Error/error.html"> Tạo hợp đồng </a></li>
                <li class="nav-item"> <a class="nav-link" href="../../pages/Error/error.html"> Xem danh sách </a></li>
              </ul>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#bctk" aria-expanded="false" aria-controls="auth">
              <i class="ti-pie-chart menu-icon"></i>
              <span class="menu-title">Báo cáo thống kê</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="bctk">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> 
                  <a class="nav-link" href="../../pages/Error/error.html"> Thống kê đối tác </a>
                </li>
                <li class="nav-item"> 
                  <a class="nav-link" href="../../pages/Error/error.html"> Thống kê khách hàng </a>
                </li>
                <li class="nav-item"> 
                  <a class="nav-link" href="../../pages/Error/error.html"> Thống kê dòng xe </a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="ti-settings menu-icon"></i>
              <span class="menu-title">Hệ thống</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Quản lý thành viên </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login-2.html"> Vai trò </a></li>
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
                  <p class="card-description">
                  </p>
                  <div class="form-group" style="margin:20px 0px;">
                    <div class="chonhk" style="width:80%; display: flex; flex-wrap: wrap;">
                        <div class="chonhk1" style="line-height: 38px;margin-right: 20px;">
                            <label for="tenmon" style="line-height: 38px;" class="">Chọn dòng xe: </label>
                        </div>
                        <div class="chonhk2" style="width: 250px;">
                            <select class="form-control" name="semester" id="semester" style="color:#000;">
                            	<option selected>Xe Huyndai</option>
                              <option >Xe Honda</option>
                              <option >Xe Vinfast</option>
                            	<!--<option selected></option>
                            	  <option th:each="semester: ${semesters}" th:text="${semester}"></option> -->
                            </select>
                      
                        </div>
                        <div style="margin-left: 15px; border: 1px solid #248afd;">
                          <button style="height: 46px;line-height: 46px;" class="btn btn-info btnsearch" type="submit" data-toggle="tooltip" title="Tìm kiếm">
                            <i class="ti-search " aria-hidden="true"style="display: block;
                              color: #fff;font-size: 1.25rem;">
                            </i>
                          </button>
                        </div>
                    </div>
                    
                  </div>
                  <div class="table-responsive pt-3">
                    <p >Danh sách đối tác theo dòng xe đã chọn</p>
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th style="width: 30px;">
                            STT
                          </th>
                          <th>
                            First name
                          </th>
                          <th>
                            Progress
                          </th>
                          <th>
                            Amount
                          </th>
                          <th>
                            Deadline
                          </th>
                          <th style="width: 60px;">
                            Thao tác
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            1
                          </td>
                          <td>
                            Herman Beck
                          </td>
                          <td>
                            <div class="progress">
                              <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                          </td>
                          <td>
                            $ 77.99
                          </td>
                          <td>
                            May 15, 2015
                          </td>
                          <td>
                            <button type="button" class="btn btn-primary btn1 btn-rounded btn-fw">Chọn</button>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            2
                          </td>
                          <td>
                            Messsy Adam
                          </td>
                          <td>
                            <div class="progress">
                              <div class="progress-bar bg-danger" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                          </td>
                          <td>
                            $245.30
                          </td>
                          <td>
                            July 1, 2015
                          </td>
                          <td>
                            <button type="button" class="btn btn-primary btn1 btn-rounded btn-fw">Chọn</button>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            3
                          </td>
                          <td>
                            John Richards
                          </td>
                          <td>
                            <div class="progress">
                              <div class="progress-bar bg-warning" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                          </td>
                          <td>
                            $138.00
                          </td>
                          <td>
                            Apr 12, 2015
                          </td>
                          <td>
                            <button type="button" class="btn btn-primary btn1 btn-rounded btn-fw">Chọn</button>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            4
                          </td>
                          <td>
                            Peter Meggik
                          </td>
                          <td>
                            <div class="progress">
                              <div class="progress-bar bg-primary" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                          </td>
                          <td>
                            $ 77.99
                          </td>
                          <td>
                            May 15, 2015
                          </td>
                          <td>
                            <button type="button" class="btn btn-primary btn1 btn-rounded btn-fw">Chọn</button>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            5
                          </td>
                          <td>
                            Edward
                          </td>
                          <td>
                            <div class="progress">
                              <div class="progress-bar bg-danger" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                          </td>
                          <td>
                            $ 160.25
                          </td>
                          <td>
                            May 03, 2015
                          </td>
                          <td>
                            <button type="button" class="btn btn-primary btn1 btn-rounded btn-fw">Chọn</button>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            6
                          </td>
                          <td>
                            John Doe
                          </td>
                          <td>
                            <div class="progress">
                              <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                          </td>
                          <td>
                            $ 123.21
                          </td>
                          <td>
                            April 05, 2015
                          </td>
                          <td>
                            <button type="button" class="btn btn-primary btn1 btn-rounded btn-fw">Chọn</button>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            7
                          </td>
                          <td>
                            Henry Tom
                          </td>
                          <td>
                            <div class="progress">
                              <div class="progress-bar bg-warning" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                          </td>
                          <td>
                            $ 150.00
                          </td>
                          <td>
                            June 16, 2015
                          </td>
                          <td>
                            <button type="button" class="btn btn-primary btn1 btn-rounded btn-fw">Chọn</button>
                          </td>
                        </tr>
                      </tbody>
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
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Custom © by PhamQuangThu</span>
            <span class="float-none text-muted float-sm-right d-block mt-1 mt-sm-0 text-center">MSV:B17DCCN590_Nhom3</span>
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
