<%@ page language="java" import="java.util.*,hrms.entity.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" 
      prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>机构管理</title>
<link rel="stylesheet" type="text/css" href="css/content.css"/>
</head>

<body>
<div style="padding-left:4px;">
  <table width="830" border="0" cellpadding="0" cellspacing="0">
    <tr height="30">
      <td width="270" background="images/title01.jpg"  bgcolor="#d9f0ff"class="txt">&gt;&gt;管理机构</td>
      <td width="530" bgcolor="#d9f0ff" class="txt">&nbsp;</td>
    </tr>
  </table>
  <br />
  <table width="820" border="0" cellpadding="0" cellspacing="0">
    <tr height="30">
    
      <td align="right" bgcolor="#F8F4FF" >
      <form action="searchDepartmentByNoAndName" method="post">
      部门编号：<input type="text" name="dept_no" size=10 />
      部门名：<input type="text" name="dept_name" size=10 />
        <input value="查找" type="submit"  />
        </form>
        </td>
        
    </tr>
  </table>
<div style="width:50%;margin:0 auto">
<p><h3>信息列表</h3></p>
</div>
<form action="delDepartment" method="post">
<table width="820" border="1" cellpadding="0" cellspacing="0"  style="text-align:center; line-height:30px;">
  <tr>
        <th width="110" bgcolor=#cccccc scope="col">编号</th>
        <th width="220" bgcolor=#cccccc scope="col">部门名称</th>
        <th width="237" bgcolor=#cccccc scope="col">上级部门</th>
        <th width="170" bgcolor=#cccccc scope="col">负责人</th>
        <th width="71" align="middle" bgcolor=#cccccc scope="col">操作</th>
      </tr>
      <c:forEach items="${departs }" var="d">
      <tr align="middle">
        <td align="middle"><input type="checkbox" name="ids" value="${d.dept_id }">${d.dept_id }</td>
        <td align="middle">${d.dept_name }</td>
        <td align="middle">${d.parent }</td>
        <td align="middle">${d.manager }</td>
        <td align="middle"><input type="submit" value="删除"></td>
      </tr>
      </c:forEach>
      <tr align="middle">
      </tr>
    </table>
    <input type="submit" value="删除">
    </form>
    <table width="820" border="0" cellpadding="0" cellspacing="0" style="line-height:50px">
      <tbody>
        <tr>
          <td width="40%">&nbsp;</td>
          <td align="right"><a ="disabled">首 页</a>  <a  disabled="disabled">上一页</a>  <a disabled="disabled">下一页</a>  <a disabled="disabled">未 页</a>跳到
            <select id="ye"  name="ye">
              <option selected="selected" value="0">1</option>
            </select>
            页 </td>
        </tr>
      </tbody>
    </table>
   
</div>
</body>
</html>
