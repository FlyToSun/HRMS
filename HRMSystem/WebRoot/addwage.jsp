<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>人力资源管理系统</title>
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
      <h1>薪酬管理</h1>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box" style="width: 715px; height: 674px; ">
<div class="widget-title" style="width: 699px; "> <span class="icon"> <i class="fa fa-th"></i> </span>
            <h5>新增薪酬</h5>
          </div>
          <div class="widget-content nopadding">
          <form action="addWage" method="post" class="form-horizontal">
              <tbody>
  				<tr class="even gradeC" style="width: 1042px; height: 556px; ">
				  <label for="员工姓名">员工姓名:</label>
				  <div class="controls">
				      <select style = "width:220px;" name="emp_name">
				      <option></option>
					  <option>张伟</option>
					  <option>王五</option>
					  <option>李四</option>
					  </select>
					  </div>
              <label>基础工资:</label>
                    <input type="text" name="base_pay" id="number">
                  <label>职位工资:</label>
              <input type="text" name="post_pay" id="number2">
	              <label>加班工资:</label>
                  <input type="text" name="overtime_pay" id="number5">
	              <label>奖金:</label>
                  <input type="text" name="bonus" id="number6">
                  <label>津贴:</label>
                  <input type="text" name="allowance" id="number7"><br/>
	             <div class="form-actions">
              <button type="submit" class="btn btn-success">保存</button>
  
              <button type="submit" class="btn btn-success"><a href=".jsp">重置</a></button>
            </div>
			    </tr>      
			</tbody>
			</form>
            
          </div>
</div></div></div></div></div>
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
