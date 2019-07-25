<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>人力管理系统</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="css/matrix-style.css" />
    <link rel="stylesheet" href="css/matrix-media.css" />
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    
</head>
<body>
    <!--Header-part-->
    <div id="header">
      <h1><a href="dashboard.html">人力资源管理系统</a></h1>
    </div>
    <!--close-Header-part--> 

    <!--top-Header-menu-->
    <div id="user-nav" class="navbar navbar-inverse">
        <ul class="nav">
            <li  class="dropdown" id="profile-messages" >
                <a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle">
                    <i class="fa fa-user"></i>&nbsp;
                    <span class="text">欢迎你，${ADMIN_SESSION.aname }</span>&nbsp;
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="fa fa-user"></i> 个人资料</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-check"></i> 我的任务</a></li>
                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath }/logout"><i class="fa fa-key"></i> 退出系统</a></li>
                </ul>
            </li>
            <li class="dropdown" id="menu-messages">
                <a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle">
                    <i class="fa fa-envelope"></i>&nbsp;
                    <span class="text">我的消息</span>&nbsp;
                    <span class="label label-important">4</span>&nbsp; 
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a class="sAdd" title="" href="#"><i class="fa fa-plus"></i> 新消息</a></li>
                    <li class="divider"></li>
                    <li><a class="sInbox" title="" href="#"><i class="fa fa-envelope"></i> 收件箱</a></li>
                    <li class="divider"></li>
                    <li><a class="sOutbox" title="" href="#"><i class="fa fa-arrow-up"></i> 发件箱</a></li>
                    <li class="divider"></li>
                    <li><a class="sTrash" title="" href="#"><i class="fa fa-trash"></i> 回收站</a></li>
                </ul>
            </li>
            <li class=""><a title="" href="#"><i class="fa fa-cog"></i> <span class="text">&nbsp;设置</span></a></li>
            <li class=""><a title="" href="${pageContext.request.contextPath }/logout"><i class="fa fa-power-off"></i> <span class="text">&nbsp;退出系统</span></a></li>
        </ul>
    </div>
    <!--close-top-Header-menu-->

    <!--start-top-serch-->
    <div id="search">
        <input type="text" placeholder="搜索..."/>
        <button type="submit" class="tip-bottom" title="Search"><i class="fa fa-search fa-white"></i></button>
    </div>
    <!--close-top-serch-->

    <!--sidebar-menu-->
    <div id="sidebar" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;">
        <ul>
            <li class="submenu active">
                <a class="menu_a" link="welcome.jsp"><i class="fa fa-home"></i> <span class="menu1_name">控制面板</span></a> 
            </li>
            
            <li class="submenu"> 
                <a href="#">
                    <i class="fa fa-table"></i> 
                    <span class="menu1_name">用户管理</span> 
                    <span class="label label-important">1</span>
                </a>
                <ul>
                    <li><a class="menu_a" link="adduser.jsp"><i class="fa fa-caret-right"></i>新增用户</a></li>
                    <li><a class="menu_a" link="searchuser.jsp"><i class="fa fa-caret-right"></i>管理用户</a></li>
                </ul>
            </li>
            <li class="submenu">
				<a href="#">
                    <i class="fa fa-tv"></i> 
                    <span class="menu1_name">组织机构管理</span> 
                    <span class="label label-important">2</span>
                </a>
				<ul>
                    <li><a class="menu_a" link="adddepart.jsp"><i class="fa fa-caret-right"></i> 新增机构</a></li>
                    <li><a class="menu_a" link="managedepart.jsp"><i class="fa fa-caret-right"></i>管理机构</a></li>
                </ul>
            </li>
            <li class="submenu"> 
                <a href="#">
                    <i class="fa fa-cog"></i> 
                    <span class="menu1_name">职位管理</span> 
                    <span class="label label-important">3</span>
                </a>
                <ul>
                    <li><a class="menu_a" link="addposition.jsp"><i class="fa fa-caret-right"></i>新增职位</a></li>
                    <li><a class="menu_a" link="searchposition.jsp"><i class="fa fa-caret-right"></i>管理职位</a></li>
                </ul>
            </li>
            <li class="submenu"> 
                <a href="#">
                    <i class="fa fa-file-o"></i> 
                    <span class="menu1_name">薪酬管理</span> 
                    <span class="label label-important">4</span>
                </a>
                <ul>
                    <li><a class="menu_a" link="addwage.jsp"><i class="fa fa-caret-right"></i>新增薪酬</a></li>
                    <li><a class="menu_a" link="managewage.jsp"><i class="fa fa-caret-right"></i>管理薪酬</a></li>
                    
                </ul>
            </li>
            
            
        </ul>
    </div>
    <!--sidebar-menu-->

    <!--main-container-part-->
    <div id="content">
        <!--breadcrumbs-->
        <div id="content-header">
          <div id="breadcrumb"> 
            <a href="index.jsp" title="回首页" class="tip-bottom"><i class="fa fa-home"></i> 系统</a>
            <a href="#" class="tip-bottom"> 首页</a>
        </div>
        </div>
        <!--End-breadcrumbs-->
        <iframe src="welcome.jsp" id="iframe-main" frameborder='0' style="width:100%;"></iframe>
    </div>
    <!--end-main-container-part-->

    <script src="js/excanvas.min.js"></script> 
    <script src="js/jquery.min.js"></script> 
    <script src="js/jquery.ui.custom.js"></script> 
    <script src="js/bootstrap.min.js"></script> 
    <script src="js/matrix.js"></script> 
</body>
</html>

