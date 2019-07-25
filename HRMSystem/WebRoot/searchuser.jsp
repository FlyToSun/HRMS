<%@ page language="java" import="java.util.*,hrms.entity.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
      prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>管理用户</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/colorpicker.css" />
<link rel="stylesheet" href="css/datepicker.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/matrix-iframe.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link rel="stylesheet" href="css/bootstrap-wysihtml5.css" />
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

<style>
	.control-group .controls label{
		display:inline-block;
	}
</style>
</head>
<body>

<div id="content">
  <div id="content-header">
      <h1>管理用户</h1>
  </div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="widget-box" style="width: 873px; height: 800px; ">
          <form action="searchUserByNameAndStatus" method="post" class="form-horizontal">
            <div class="control-group" style="width: 320px; ">
              <label class="control-label">用户名 :</label>
              <div class="controls" style="width: 271px; ">
                <input type="text" class="span5" name="user_name">（支持模糊查询）
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
            
            <div class="control-group" style="width: 320px;">
              <label class="control-label">状态:</label>
              <div class="controls">
                <select name="status">
                  <option></option>
                  <option>正常</option>
                  <option>非正常</option>
                </select>
              </div>
            </div>
            <div class="form-actions">
            <input type="submit" class="btn btn-success" value="查询">
            </div>
            </form>
            ${msg }
            <div class="widget-box">
          <div class="widget-title"> 
            <h5 align="center">用户列表</h5>
          </div>
          <form action="delUser" method="post">
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped with-check" border="1">
              <thead>
                <tr>
                  <th>编号</th>
                  <th>姓名</th>
                  <th>角色</th>
                  <th>状态</th>
                  <th>操作</th>
                </tr>
              </thead>
              <c:forEach items="${users }" var="u">
              <tbody>
              
                <tr>
                  <td style="width: 120px; height: 24px; ">
                  <input type="checkbox" name="ids" value="${u.user_id }"/>
                  ${u.user_id }</td>
                  <td>${u.user_name }</td>
                  <td>${u.role_id }</td>
                  <td>${u.status }</td>
                  <td>
                  <a href="#" class="btn btn-danger btn-xs">删除</a> 
                  <a href="allocaterole.jsp" class="btn btn-danger btn-xs">分配角色</a></td>
                </tr>
                
              </tbody>
              </c:forEach>
              
            </table>
          </div>
          <input type="submit" value="删除">
        </div>
        </form>
      </div>
  </div>
</div>
</div>
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/bootstrap-colorpicker.js"></script> 
<script src="js/bootstrap-datepicker.js"></script> 
<script src="js/jquery.toggle.buttons.html"></script> 
<script src="js/masked.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_common.js"></script> 
<script src="js/wysihtml5-0.3.0.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/bootstrap-wysihtml5.js"></script> 
<script>
	$('.textarea_editor').wysihtml5();
</script>
</body>
</html>
