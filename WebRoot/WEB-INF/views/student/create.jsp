<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<jsp:include page="../share/_header.jsp"></jsp:include>
<title>请修改标题</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h2 class="page-header">新增</h2>
				<form action="${pageContext.request.contextPath}/admin/student/save" method="post">
					<div class="form-group">
						<label for="studentNumber">学号</label>
						<input type="text" id="studentNumber" name="studentNumber" placeholder="学号" class="form-control" required="required" /> 
					</div>
					<div class="form-group">
						<label for="studentName">姓名</label>
						<input type="text" id="studentName" name="studentName" placeholder="姓名" class="form-control" required="required"/> 
					</div>
					<div class="form-group">
						<label>性别</label>
						<div class="radio">
							<label>
								<input type="radio" id="gender" name="gender" value="男">男
							</label>
							<label>
								<input type="radio" id="gender" name="gender" value="女">女
							</label>
						</div> 
					</div>
					<div class="form-group">
						<label>出生日期</label> 
            			<div class='input-group date' id='birthday'>  
                			<input type='text' class="form-control"/>  
                			<span class="input-group-addon">
                    			<span class="glyphicon glyphicon-calendar"></span>  
                			</span>
            			</div>   
					</div>
					<div class="form-group">
						<label for="email">邮箱</label>
						<input type="email" id="email"  name="email" placeholder="邮箱" class="form-control" /> 
					</div>
					<div class="form-group">
						<label for="mobile">联系方式</label>
						<input type="text" id="mobile"  name="mobile" placeholder="联系方式" class="form-control" /> 
					</div>
					<div class="form-group">
						<label for="province">省份</label>
						<input type="text" id="province"  name="province" placeholder="省份" class="form-control" /> 
					</div>
					<div class="form-group">
						<label for="city">城市</label>
						<input type="text" id="city"  name="city" placeholder="城市" class="form-control" /> 
					</div>
					<div class="form-group">
						<label for="address">详细地址</label>
						<input type="text" id="address"  name="address" placeholder="详细地址" class="form-control" /> 
					</div>
					<a href="" class="btn btn-default">取消</a>
					<button type="submit" class="btn btn-default">保存</button>
				</form>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<jsp:include page="../share/_footer.jsp" />
	
	<script type="text/javascript">
		$(function(){
			$('#birthday').datepicker({  
		        language: "zh-CN",
		        format: 'yyyy-mm-dd'
		    });
		});
	</script>
</body>
</html>