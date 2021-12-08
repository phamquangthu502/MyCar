<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập </title>
    <link rel="shortcut icon" href="images/favicon.png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        * {
			margin: 0;
			box-sizing: border-box;
			padding: 0;
		}
		
		dangnhap {
			display: block;
			width: 100%;
			position: relative;
		}
		
		.toast{
			position: absolute;
			z-index: 100;
			right:40%;
		}
		
		.container {
			padding-top: 10%;
		}
		
		.container label {
			color: #fff;
		}
		
		.container .dangnhap {
			margin: auto;
			background-color: #0000003b;
			border-radius: 12px;
			width: 40%;
			height: 55vh;
			border: 1px solid #ffffffc4;
		}
		
		.dangnhap .dn-title {
			background-color: #fffefe9e;
			border-radius: 10px;
			padding: 20px;
			text-align: center;
			color: #163e0b;
		}
		
		.dangnhap .dn-body {
			padding: 20px;
		}
		
		.dangnhap .dn-body .input-group {
			margin-bottom: 15px;
		}
		
		.dn-body {
			margin-top: 20px;
		}
		
		.dn-body .form-check {
			line-height: 20px;
		}
		
		.btn-dn {
			display: flex;
			justify-content: space-around;
			margin-top: 30px;
		}
		
		.btn-dn button {
			width: 60%;
		}
		
		body {
			background: url('images/img1.jpg') no-repeat center;
			background-size: cover;
			position: relative;
			min-height: 100vh;
		}
		
		footer {
			position: absolute;
			width: 100%;
			bottom: 10px;
			text-align: center;
			color: #fff;
		}
		
		.form1 {
			padding: 15px 30px;
			border: 1px solid #17a2b8;
		}
    </style>

</head>

<body>
<%
      if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("timeout")){
          %> <h4>Hết phiên làm việc. Làm ơn đăng nhập lại!</h4><%
      }
      else if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("fail")){
          %> <h4 color="red">Sai tên đăng nhập/mật khẩu!</h4><%
      }
 %>
	<dangnhap>
		<div class="toast">
		    <div class="toast-header">
		      Lỗi!
		    </div>
		    <div class="toast-body">
		      Tài khoản hoặc mật khẩu sai!
		    </div>
		  </div>
		<div class="container">
            <div class="dangnhap">
                <div class="dn-title">
                    <h2>Quản lý cửa hàng ô tô</h2>
                </div>
                <div class="dn-body">
                    <form class="user" name="dangnhap" action="doDangnhap.jsp" method="post">
                    	<p class="error" style="color:red" hidden>Tài khoản hoặc mật khẩu sai!</p>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fa fa-user-circle" aria-hidden="true"></i>
                                </span>
                            </div>
                            <input class="form-control" placeholder="Nhập tên đăng nhập" type="text" name="username"  id="iduser">
                        </div>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fa fa-key" aria-hidden="true"></i>
                                </span>
                            </div>
                            <input type="password" name="passwords" class="form-control" autofocus placeholder="Mật khẩu" id="passwords">
                        </div>
                        <div class="form-group form-check">
                            <label class="form-check-label"> 
                            	<input class="form-check-input" type="checkbox"> Lưu mật khẩu
                            </label>
                        </div>
                        <div class="btn-dn">
                            <button type="submit" class="btn btn-info">Đăng nhập</button>
                        </div>
                    </form>
                </div>
            </div>
		</div>
	</dangnhap>
    <script>
    document.onload=function(){
   	 	document.getElementById("iduser").focus();
   	}
    var url = window.location.href;
    var myArray = url.split("?"); 
    /* if(myArray[1]=='error') {
    	$('.toast').toast('show');
    } */
    $(document).ready(function(){
    	if(myArray[1]=='error') {
        	$('.toast').toast('show');
        } 
   	});

    </script>
</body>
</html>
