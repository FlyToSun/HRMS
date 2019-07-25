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
      <h1>增加职位</h1>
  </div>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span6">
        <div class="widget-box" style="width: 817px; height: 753px; ">
          <div class="widget-title"> <span class="icon"> <i class="fa fa-sign-out"></i> </span>
            <h5>职位信息</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="addPosition" name="basic_validate" id="basic_validate" novalidate="novalidate">
              <div class="control-group">
                <label class="control-label">职位编号：</label>
                <div class="controls">
                  <input type="text" name="post_no" id="required">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">职位名称：</label>
                <div class="controls">
                  <input type="text" name="post_name" id="email">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">职务描述：</label>
                <div class="controls">
                  <input type="text" name="post_desc" id="date">
                </div>
              </div>
              <div class="control-group">
              <label class="control-label">所属部门:</label>
              <div class="controls">
                <select name="dept_id">
                  <option value="0">  </option>
                  <option value="1">财务部</option>
                  <option></option>
                </select>
              </div>
            </div>
              <div class="control-group">
                <label class="control-label">编制人数：</label>
                <div class="controls">
                  <input type="text" name="limit_no" id="url">
                </div>
              </div>
              <div class="form-actions">
                <input type="submit" value="提交" class="btn btn-success">
                <input type="submit" value="重置" class="btn btn-success">
              </div>
            </form>
            ${msg }
          </div>
        </div>
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
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.form_validation.js"></script>
</body>
</html>
