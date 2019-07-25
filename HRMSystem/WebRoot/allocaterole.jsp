<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Matrix Admin</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/matrix-iframe.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>

<div id="content">
  <div id="content-header">
      <h1>分配角色</h1>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="fa fa-sign-out"></i> </span>
            <h5>个人信息</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="updateUser" name="basic_validate" id="basic_validate" novalidate="novalidate">
              <div class="control-group">
                <label class="control-label">用户编号：</label>
                <div class="controls">
                  <input type="text" name="user_id" id="required">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">用户名：</label>
                <div class="controls">
                  <input type="text" name="user_name" id="required">
                </div>
              </div>
              <div class="control-group" style="width: 320px; ">
              <label class="control-label">角色:</label>
              <div class="controls">
                <select name="role_id">
                  <option value="0"></option>
                  <option value="1">系统管理员</option>
                  <option value="2">人事管理</option>
                  <option value="4">全部</option>
                </select>
              </div>
            </div>
             
              <div class="form-actions">
                <input type="submit" value="保存" class="btn btn-success">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="row-fluid">
      <div class="span12">
        
      </div>
      <div class="row-fluid">
        <div class="span12">
          
        </div>
      </div>
    </div>
  </div>
</div>

<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_validation.js"></script>
</body>
</html>
