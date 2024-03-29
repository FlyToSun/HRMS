<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>登录页面</title><meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="css/matrix-login.css" />
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"  />
    <script language="javascript">
    	function check() {
    		var uname = $("#aname").val();
    		var password = $("#adminpwd").val();
    		if(uname=="" || password==""){
    			$("#message").text("账号或密码不能为空！")
    			return false;
    		}
    		return true;
    	}
    	
    </script>
</head>
<body onkeydown="keydown()">
    <div id="loginbox"> 
        <div class="control-group normal_text"> 
            <h2>人力资源管理系统</h2>
            <span>版权所有 &copy; 2015-2018 iProg网络科技有限公司</span>
        </div>  
		<font color="red">
			<span id="message">${msg }</span>
		</font>
        <form action="${pageContext.request.contextPath }/login" method="post" 
        onsubmit="return check()" class="form-vertical">
            <div class="control-group">
                <label class="control-label">输入账号</label>
                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_lg"><i class="fa fa-user"></i></span>
                        <input type="text" name="aname" id="aname" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">登陆密码</label>
                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_ly"><i class="fa fa-key"></i></span>
                        <input type="password" name="adminpwd" id="password"/>
                    </div>
                </div>
            </div>
            <div class="form-actions">
                <span class="pull-left">
                    <a id="to-recover" href="#"/>忘记密码？</a>
                </span>
                <span class="pull-right">
                    <input type="submit" id="checkBtn" onclick="checkLogin()" class="btn btn-success" value="登&nbsp;&nbsp;录"/>
                </span>
            </div>
            <div class="control-group normal_text">
                推荐使用支持HTML5的浏览器，如chrome、IE9+等
            </div>
        </form>

        <form id="recoverform" action="#" class="form-vertical">
    		<div class="controls-group">
                <label class="control-label">登陆账号</label>
                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_lg"><i class="fa fa-user"></i></span><input type="text" name="fg_account" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">180字留言（电话、姓名、问题等）</label>
                <div class="controls">
                    <div class="main_input_box">
                        <textarea name='fg_message' id="fg_message" placeholder="说点啥吧 ..."></textarea>
                    </div>
                </div>
            </div>
            <div class="form-actions">
                <span class="pull-left">
                    <a id="to-login" href="#">&laquo; 返回登录</a>
                </span>
                <span class="pull-right">
                    <input type="button" id="leaveMsg" class="btn btn-info" value="给管理员留言"/>
                </span>
            </div>
            <div class="control-group normal_text">
                推荐使用支持HTML5的浏览器，如chrome、IE9+等
            </div>
        </form>
    </div> 

    <script src="js/jquery.min.js"></script>
    <script src="js/matrix.login.js"></script>   

	<script type="text/javascript">
	if(window.location.href!=window.parent.location.href){
		window.parent.location.href="/HRMSystem/addUser";
	}
	</script>

</body>
</html>
