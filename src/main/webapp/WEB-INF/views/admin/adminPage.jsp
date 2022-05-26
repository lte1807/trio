<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<title>회원관리</title>
<body>
	<div>
		<div class="row">
			<div>
				<h1 class="h2">회원관리</h1>
			</div>
			<div>
				<table>
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Name</th>
							<th scope="col">UserName</th>
							<th scope="col">UserRole</th>
							<th scope="col">UpdateRole</th>
							<th scope="col">UserEmail</th>
							<th scope="col">Useraddress</th>
							<th scope="col">CreateDate</th>
							<th scope="col">Update</th>
						</tr>
					</thead>
					<c:forEach var="user" items="${NormalMemberInfo}">
						<tbody>
							<tr>
								<form action="/user/change/{nid}" method="POST">
									<td>"${NormalMemberInfo.Nid}"</td>
									<td>"${NormalMemberInfo.Nname}"</td>
									<td>"${NormalMemberInfo.Role}"</td>
									<td><select name="role">
											<option value="ROLE_ADMIN">ROLE_ADMIN</option>
											<option value="ROLE_USER">ROLE_USER</option>
									</select></td>
									<td>"${user.Nemail}"</td>
									<td>"${user.Naddress}"</td>
									<td>${user.CreateDate}"</td>
									<td>
										<button type="submit">업데이트</button>
									</td>
								</form>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<script src="/js/scripts.js"></script>
</body>

<%@ include file="../layout/footer.jsp"%>