<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<%@include file="/WEB-INF/views/admin/include/header.jsp" %>
	</head>
	<body>
	<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
		
		<%@ include file="/WEB-INF/views/admin/include/topbar.jsp" %>
				
        <%@ include file="/WEB-INF/views/admin/include/nav.jsp" %>
             
		<div class="page-wrapper">
    <!-- Container Fluid -->
					<div class="container-fluid" id="container-wrapper">
						<div class="d-sm-flex align-items-center justify-content-between mb-4">
							<h1 class="h3 mb-0 text-gray-800">유저 유니즈포인트확인</h1>
						</div>
	
						<!-- row -->
						<div class="row">
							<div class="col-lg-6">
								<div class="card mb-4">
									<div class="card-header py-3">
										<h6 class="m-0 font-weight-bold text-primary">상세정보</h6>
									</div>
									<div class="card-body">
										<form id="codeForm">
											
											<div class="form-group">
												<label for="unizSn">유니즈번호</label>
												<input class="form-control  mb-3" type="text" id="unizSN" name="unizSn" placeholder="" readonly ="readonly">
											</div>
	
											<div class="form-group">
												<label for="unizKeyword">유니즈키워드</label>
												<input class="form-control  mb-3" type="text" id="unizKeyword" name="unizKeyword" placeholder="">
											</div>
		
												<div class="form-group">
												<label for="point">포인트</label>
												<input class="form-control  mb-3" type="text" id="point" name="point" placeholder="">
											</div>
											
											<input class="form-control" type="hidden" id="userSN" name="userSN" value="${userSN}"/>
											
										</form>
										<div class="text-right">
											<button type="button" onClick="formClear();" id="btnClear" class="btn btn-primary mb-1">초기화</button>
											<button type="button" id="btnIns" class="btn btn-success mb-1">입력</button>
											<button type="button" id="btnUpd" class="btn btn-warning mb-1">수정</button>
											<button type="button" id="btnDel" class="btn btn-danger mb-1">삭제</button>
										</div>
									</div>
								</div>
							</div>
								
							<div class="col-lg-6">
								<div class="card mb-4">
									<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
										<h6 class="m-0 font-weight-bold text-primary">목록</h6>
									</div>
									<div class="table-responsive p-3">
										<table class="ui table" style="width:100%" id="codeTable">
											<thead class="thead-light">
												<tr>
													<th>유니즈SN</th>
													<th>유니즈키워드</th>
													<th>포인트</th>
													<th>생성일</th>
													<th>변경일</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- row -->
					</div>
					
					<%@ include file="/WEB-INF/views/admin/include/footer.jsp" %>
					<!-- Container Fluid -->
				</div>
					<!-- Container Fluid -->
		</div>
		<%@include file="/WEB-INF/views/admin/include/scripts.jsp" %>
		
		
		<script type="text/javascript" src="/resources/js/js/mypoint.js"></script>
		<script>
       
			 $(document).ready(function() {
				formClear();
				codeList();
				
			}); 
			 
			 $("#codeTable").on("click", "tr", function(){
					rowData = $("#codeTable").DataTable().row(this).data();
					if(rowData !== null){
						formChange();
					}
				});
			 
		</script>

	</body>
</html>
