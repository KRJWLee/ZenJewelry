<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ZEN Jewerly</title>
<link href="/css/mobile.css" rel="stylesheet">  
<script src="/script/jquery-3.6.0.js"></script>
<script src="/script/mobile.js"></script>
</head>
<body>

<div id="wrap1">
	<div id="logo"><!-- 메인 로고 이미지 -->
		<a href="/">
			<img src="images/logo_yw.png"  height="200" />
		</a>
	</div>
	<form method="post" name="hdfrm">
		<div id="search"><!-- 돋보기모양 검색창 -->
			<input id= "s-box" type="text" name="key" value="${key}" />
			<img  id= "s-img" src="images/search1.png" width="50px" onClick='go_search("hdfrm");' />
		</div>
	</form>
	
	<nav id="top_menu"><!-- 상단 메뉴 : 로그인 CART MyPage 등-->
		<ul>
			<c:choose>
				<c:when test="${empty loginUser}">
					<li><a class="Rm" href="mloginForm">LOGIN</a></li>
					<li><a class="Rm" href="mcontract">JOIN</a></li>
				</c:when>
				<c:otherwise>
					<li><a class= "Rm">${loginUser.NAME}(${loginUser.ID})</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</nav>
</div>
	
<img id="hmBtn" src="images/Hbutton_mobile.png" style="cursor:pointer" width="70" height="70" />
	<!-- 햄버거 카테고리 수직메뉴(드롭다운) -->
<div class="dropdown">
	<div class="ddBtn"><a href="mbestProductList?sub='y'">&nbsp;&nbsp;&nbsp;BEST</a></div>
	<div class="ddBtn"><a href="mproductList?kind=1&sub='y'">&nbsp;&nbsp;&nbsp;RING</a></div>
	<div class="ddBtn"><a href="mproductList?kind=2&sub='y'">&nbsp;&nbsp;&nbsp;EARRINGS</a></div>
	<div class="ddBtn"><a href="mproductList?kind=3&sub='y'">&nbsp;&nbsp;&nbsp;NECKLACE</a></div>
	<div class="ddBtn"><a href="mproductList?kind=4&sub='y'">&nbsp;&nbsp;&nbsp;BRACELET</a></div>
	<div class="ddBtn"><a href="mcartList">&nbsp;&nbsp;&nbsp;CART</a></div>
	<div class="ddBtn"><a href="mboardList?sub='y'">&nbsp;&nbsp;&nbsp;BOARD</a></div>
	<div class="ddBtn"><a href="mqnaList?sub='y'">&nbsp;&nbsp;&nbsp;Q&amp;A</a></div>
	<c:if test="${not empty loginUser}">
		<div class="ddBtn"><a href="mmyPage">&nbsp;&nbsp;&nbsp;MYPAGE</a></div>
		<div class="ddBtn"><a href="meditForm">&nbsp;&nbsp;&nbsp;EDIT</a></div>
		<div class="ddBtn"><a href="mlogout">&nbsp;&nbsp;&nbsp;LOGOUT</a></div>
	</c:if>
</div>	


