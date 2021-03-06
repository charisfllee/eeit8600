<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- **加入5個css ref，請按照此順序** -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/metisMenu.min.css" rel="stylesheet">
<link href="/css/sb-admin-2.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="/css/bms-customize.css" rel="stylesheet" >


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Review List</title>
<style>
table{border:3px solid black; 
 	  width:900px;} 

th,td{border:1px solid black; 
 	  text-align:center;} 

</style>
</head>
<body>

<!-- 內文全部用wrapper包起來 -->
<div id="wrapper">

<!-- 加入上方及側邊Nav-Bar -->	
<c:import url="../bms_header.jsp" />
<c:import url="../bms_navbar-side.jsp" />
<!-- ?? url有沒有更好的寫法 ?? -->


<!-- Page Content --> 
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">DashBoard</h1>   <!-- **內文中的標題，請修改** -->
                <!-- **每頁不同的內容從這裡開始** -->

<h2>Review List</h2>
<!-- <input type="button" name="add" value="add" onClick="location='/reviews/add'"> -->
<table>
<thead align='center'>
	<tr>
		<th>心得id</th>
		<th>會員id</th>
		<th>產品id</th>
		<th>心得標題</th>
		<th>內文</th>
		<th>評分</th>
		<th>Img Path</th>	
		<th width="50">圖片</th>		
		<th>發布時間</th>
		<th>收藏數</th>
		<th>flag</th>
	</tr>
</thead>
<tbody align='center'>
	<c:forEach var='review' items="${reviews}">
	<tr>
		<td>${review.reviewId}</td>
		<td>${review.memberId}</td>
		<td>${review.prodId}</td>
		<td>${review.reviewTitle}</td>
		<td>${review.review}</td>
		<td>${review.reviewRating}</td>
		<td>${review.reviewImg}</td>
		<td><img height="30" src="/reviews/show?reviewId=${review.reviewId}"></td>
		<td>${review.reviewTime}</td>
		<td>${review.rewCollect}</td>
		<td>${review.reviewShow}</td>
		<td><input type="button" name="edit" value="edit" onClick="location='/reviews/edit?reviewId=${review.reviewId}'"></td>
		<td><input type="button" name="delete" value="delete" onClick="location='/reviews/delete?reviewId=${review.reviewId}'"></td>
	</tr>	
</c:forEach>
</tbody>
</table>


<!-- **每頁不同的內容 end** -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->


<!-- **加入4個js，請按照此順序** -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/metisMenu.min.js"></script>
<script src="/js/sb-admin-2.js"></script>

</body>
</html>