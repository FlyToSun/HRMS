<%@ page language="java" import="java.util.*,hrms.entity.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
      prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>管理职位</title>
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
      <h1>管理职位</h1>
  </div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="widget-box" style="width: 873px; height: 800px; ">
          <form action="searchPosition" method="post" class="form-horizontal">
            <div class="control-group" style="width: 320px; ">
              <label class="control-label">职位名称 :</label>
              <div class="controls" style="width: 271px; ">
                <input type="text" class="span5" name="pname">（支持模糊查询）
              </div>
            </div>
            <div class="form-actions">
            <input type="submit" class="btn btn-success" value="查询">
            </div>
            </form>
            ${msg }
            <div class="widget-box">
          <div class="widget-title"> 
            <h5 align="center">职位列表</h5>
          </div>
          
          <div class="widget-content nopadding">
          <form action="delPosition" method="post">
            <table class="table table-bordered table-striped with-check" border="1">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>职位编号</th>
                  <th>职位名称</th>
                  <th>角色描述</th>
                  <th>所属部门</th>
                  <th>编制人数</th>
                </tr>
              </thead>
              <c:forEach items="${positions }" var="p">
              <tbody>
              
                <tr>
                  <td style="width: 120px; height: 24px; ">
                  <input type="checkbox" name="ids" value="${p.post_id }"/>
                  ${p.post_id }</td>
                  <td>${p.post_no }</td>
                  <td>${p.post_name }</td>
                  <td>${p.post_desc }</td>
                  <td>${p.dept_id }</td>
                  <td>${p.limit_no }</td>
                </tr>
                
              </tbody>
              </c:forEach>
            </table>
            <input type="submit" value="删除">
            </form>
          </div>
        </div>
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
