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
      <h1>新增机构</h1>
  </div>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="fa fa-align-justify"></i> </span>
          <h5>个人信息</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="addDepartment" method="post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">部门编号:</label>
              <div class="controls">
                <input type="text" class="span11" placeholder="" name="dept_no"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">部门名称:</label>
              <div class="controls">
                <input type="text" class="span11" placeholder="" name="dept_name"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">上级部门：</label>
              <div class="controls">
                <input type="text"  class="span11" placeholder="" name="parent"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">部门负责人：</label>
              <div class="controls">
                <input type="text"  class="span11" placeholder="" name="manager"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">部门电话：</label>
              <div class="controls">
                <input type="text"  class="span11" placeholder="" name="telephone"/>
              </div>
            </div>
            
            <div class="control-group">
              <label class="control-label">Email:</label>
              <div class="controls">
                <input type="text"  class="span11" placeholder="" name="email"/>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">部门职责:</label>
              <div class="controls">
                <input type="text"  class="span11" placeholder="" name="duty"/>
              </div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">保存</button>
  
              <button type="submit" class="btn btn-success"><a href="adddepart.jsp">重置</a></button>
            </div>
          </form>
          ${msg }
        </div>
      </div>
      
      
    </div>
    <div class="span6">
      
      
      
    </div>
  </div>
  <div class="row-fluid">
    
  </div>
</div></div>

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
