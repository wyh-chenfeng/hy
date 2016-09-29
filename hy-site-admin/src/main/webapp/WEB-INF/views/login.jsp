<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>环域</title>
<%@include file="./layout/resource.jsp"%>
</head>
<body>
	<div class="container-fluid">
	<c:if test="${not empty param.error}">
	    <div class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
           <strong>警告！</strong> 用户名或密码错误。
       </div>
	</c:if>
	<div class="row" style="padding-top: 15%;">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			
			<form class="form-horizontal" role="form" action="${HY_CONTEXT}/login" method="post">
				<div class="form-group">
					<label for="username" class="col-sm-3 control-label">用户名</label>
					<div class="col-sm-9">
						<input type="text" name="username" class="form-control" placeholder="用户名" required autofocus/>
					</div>
				</div>
				<div class="form-group">
					 
					<label for="password" class="col-sm-3 control-label">密码</label>
					<div class="col-sm-9">
						<input type="password" name="password" class="form-control" placeholder="密码" required/>
					</div>
				</div>
				<!-- <div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label><input type="checkbox" /> 记住密码</label>
						</div>
					</div>
				</div> -->
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-9">
						<button type="submit" class="btn btn-default">登录</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-4">
		</div>
	</div>
</div>
</body>
</html>