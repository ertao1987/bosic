<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<jsp:include page="../share/_header.jsp"></jsp:include>
<title>学生管理</title>
<style type="text/css">
	.table {
		margin-top: 10px;
	}
	.table > thead > tr > th {
		border-bottom-width: 0px;
		text-align: center;
		vertical-align: middle !important;
	}
	.pagination {
		margin-top: -10px;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="page-header">学员基本信息</h2>
			</div>
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-8">
						<a href="${pageContext.request.contextPath }/admin/student/create" class="btn btn-primary"> <span
							class="glyphicon glyphicon-plus" aria-hidden="true"> 新增</span>
						</a>
						<button class="btn btn-danger" onclick="confirmBatDelete()">
							<span class="glyphicon glyphicon-minus" aria-hidden="true"> 删除</span>
						</button>
					</div>
					<div class="col-md-4">
						<div class="input-group right">
							<input type="text" class="form-control" placeholder="需要查询的内容..."> <span class="input-group-btn">
								<button class="btn btn-default" type="button">查询</button>
							</span>
						</div>
					</div>
				</div>
				<form action="${pageContext.request.contextPath }/admin/student/delete" method="post">
					<table class="table table-bordered table-condensed table-hover">
						<thead>
							<tr>
								<th rowspan="2">
									<input type="checkbox" onclick="selectAll(this.checked)" />
								</th>
								<th rowspan="2">ID</th>
								<th rowspan="2">学号</th>
								<th rowspan="2">姓名</th>
								<th rowspan="2">性别</th>
								<th rowspan="2">出生日期</th>
								<th rowspan="2">邮箱</th>
								<th rowspan="2">联系方式</th>
								<th colspan="3">家庭住址</th>
								<th rowspan="2">操作</th>
							</tr>
							<tr>
								<th>省</th>
								<th>市</th>
								<th>地址</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="s" items="${students.rows}">
								<tr>
									<td>
										<input type="checkbox" name="ids" value="${s.id}" />
									</td>
									<td>${s.id }</td>
									<td>${s.studentNumber }</td>
									<td>${s.studentName }</td>
									<td>${s.gender }</td>
									<td>
										<fmt:formatDate value="${s.birthday }" pattern="yyyy年MM月dd"/>
									</td>
									<td>${s.email }</td>
									<td>${s.mobile }</td>
									<td>${s.province }</td>
									<td>${s.city }</td>
									<td>${s.address }</td>
									<td>
										<a href="${pageContext.request.contextPath }/admin/student/edit?id=${s.id}" class="btn btn-xs btn-success">
											<span class="glyphicon glyphicon-edit" aria-hidden="true"> 编辑</span>
										</a>
										<a href="#" class="btn btn-xs btn-danger" onclick="confirmDelete('${pageContext.request.contextPath }/admin/student/delete?id=${s.id}')">
											<span class="glyphicon glyphicon-minus"> 删除</span>
										</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
				<nav>
					<ul class="pagination navbar-right">
						<li><a href="${pageContext.request.contextPath }/admin/student/index?id=${students.prev}" aria-label="前一页"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<c:forEach begin="1" end="${students.total }" step="1" var="i">
							<c:choose>
								<c:when test="${i == students.index }">
									<li class="active"><a href="${pageContext.request.contextPath }/admin/student/index?id=${i}">${i}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="${pageContext.request.contextPath }/admin/student/index?id=${i}">${i}</a></li>						
								</c:otherwise>
							</c:choose>

						</c:forEach>
						<li><a href="${pageContext.request.contextPath }/admin/student/index?id=${students.next}" aria-label="后一页"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<jsp:include page="../share/_footer.jsp" />

	<script>
		// 全选/全取消
		function selectAll(checked) {
			var ids = document.getElementsByName('ids');

			for (var i = 0; i < ids.length; i++) {
				ids[i].checked = checked;
			}
		}

		// 删除单条记录
		function confirmDelete(url) {
			if (confirm('确认删除吗？')) {
				window.location.href = url;
			}
		}

		// 批量删除
		function confirmBatDelete() {
			if (confirm('确认删除吗？')) {
				document.forms[0].submit();
			}
		}
	</script>
</body>
</html>