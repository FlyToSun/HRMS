<%@ page language="java" import="java.util.*,hrms.entity.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
      prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>人力资源管理</title>
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
      <h1>工资管理</h1>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
      <form action="searchWage" method="post" class="form-horizontal">
            <div class="control-group" style="width: 320px; ">
              <label class="control-label">名字 :</label>
              <div class="controls" style="width: 271px; ">
                <input type="text" class="span5" name="name">
              </div>
            </div>
            <input type="submit" class="btn btn-success" value="查询">
            </form>
            ${msg }
        <div class="widget-box" style="width: 1000px; height: 400px; ">
          <div class="widget-title"> <span class="icon"> <i class="fa fa-th"></i> </span>
            <h5>工资列表</h5>
          </div>
          <div class="widget-content nopadding">
          <form action="delWage" method="post">
            <table class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>编号</th>
                  <th>员工姓名</th>
                  <th>基础工资</th>
                  <th>职位工资</th>
                  <th>加班工资</th>
                  <th>奖金</th>
                  <th>津贴</th>
                </tr>
              </thead>
              
              <tbody>
              <c:forEach items="${wages }" var="w">
                <tr class="odd gradeX">
                  <td><input type="checkbox" name="ids" value="${w.wage_id }">${w.wage_id }</td>
                  <td>${w.emp_name }</td>
                  <td>${w.base_pay }</td>
                  <td>${w.post_pay }</td>
                  <td>${w.overtime_pay }</td>
                  <td>${w.bonus }</td>
                  <td>${w.allowance }</td>
                </tr>
                </c:forEach>
              </tbody>
              
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
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.tables.js"></script>
</body>
</html>
