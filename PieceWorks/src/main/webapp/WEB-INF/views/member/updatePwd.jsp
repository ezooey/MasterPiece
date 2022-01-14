<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>New Password</title>

    <!-- Custom fonts for this template-->
    <link href="resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="resource/css/sb-admin-2.css" rel="stylesheet">
</head>
<style>

	.col-lg-6{
		max-width: 100%;
		flex: 0px;
	}

    .user-input{
        width: 50%;
        margin: 0 auto;
    }
</style>
<body class="bg-gradient-primary">
    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h1 text-gray-900 mb-4">PIECE WORKS</h1>
                                        <h1 class="h4 text-gray-900 mb-2">비밀번호 재설정</h1>
                                    </div>
                                    <form class="user" id="updatePwdForm" action="updatePwd.me" method="post">
                                        <div class="user-input">
                                            <div class="form-group">
                                            <input type="password" class="form-control form-control-user" name="pwd"
                                                    id="newPwd" placeholder="비밀번호 입력" required>
                                            <br>
                                            <input type="password" class="form-control form-control-user" name="pwdCheck"
                                                    id="newPwdCheck" placeholder="비밀번호 확인" required>
                                            </div>
                                            <input type="submit" class="btn btn-primary btn-user btn-block" onclick="moveLogin();" value="확인">
                                            <input type="button" class="btn btn-cancle btn-user btn-block" onclick="cancle();" value="취소">
                                        	<input type="hidden" name="email" value="${ email }">
                                        </div>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="signUpView.me">아이디가 없으신가요?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="login.me">이미 계정이 있습니다!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <script>
    
    	userPwd = false;
    	checkPwd = false;
    	
    	function newPwdCheck(){
    		var regExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{5,}$/;
    		var newPwd = document.getElementById("newPwd");
    		var newCheckPwd = documnet.getElementById("newCheckPwd");
    		var message = document.getElementById("newPwdMsg");
    	}
    	
        function moveLogin(){
            var login = confirm('비밀번호 재설정이 완료되었습니다.');
            if(login){
                location.href = "loginView.me";
            }
        }         
        
        function cancle(){
            location.href = "";
        }
    </script>
</body>

</html>