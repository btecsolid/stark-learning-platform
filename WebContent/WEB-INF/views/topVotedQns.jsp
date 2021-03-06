<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Top Voted Question of the Year Report</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css"> 
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/topVotedQns.css">		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<jsp:useBean id="now" class="java.util.Date" />
		<fmt:formatDate var="nowDate" value="${now}" pattern="yyyy-MM-dd" />
		<!-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/topVotedQns.js"></script> -->
		
		<style>
		@media print {
		  #printingBtn, #backToForumLink {
		    display: none;
		  }
		  .hr {
		  	background-color: #455A64 !important;
		  	-webkit-print-color-adjust: exact;
		  }
		}
		</style>
	</head>	
	<body>
		<!-- Start of Page Container -->
		<div class="pageCon">
			<div class="container-fluid">
				<div class="row">
					<div class="d-flex w-100 mt-2">
						<div class="col-md-12 d-flex align-items-center justify-content-start">
							<a href="moderatorForum?username=${loggedInUser}" id="backToForumLink" style="color: #ea8a8a;"><i class="far fa-hand-point-left mr-1"></i>Back to Forum</a>
						</div>
					</div>
				</div>
			
				<div class="row">
					<div class="col text-center py-3">
						<h3 class="font-weight-bolder">Top Voted Question Of The Year Report</h3>
						<p id="yearId">${requestedYear}</p>
					</div>
				</div>
				
				<div class="row pt-1">
					<div class="col-sm-2"></div>
					<div class="col-sm-8 container-fluid">
						<div class="row text-center">
							<div class="col">
								<p>
									<b>Requested By:</b>
									<span id="userId" class="pl-2">${loggedInUser}</span>
								</p>
							</div>						
							<div class="col">
								<p>
									<b>Date Requested:</b>
									<span id="reportDate" class="pl-2">${nowDate}</span>
								</p>
							</div>
						</div>
						<hr class="hr" style="background-color: #455A64;">
					</div>
					<div class="col-sm-2"></div>
				</div>
				
				<c:forEach items="${yearList}" var="question" varStatus="loop">
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8 container-fluid">
						<h5 class="text-left"><b>Question</b></h5>
						<p id="qnsId">
							${question.title}
						</p>
						<hr>
					</div>
					<div class="col-sm-2"></div>
				</div>
				
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8 container-fluid">
						<h5 class="text-left"><b><u>Details</u></b></h5>
						<div class="row">
							<div class="col">
								<p>
									Posted By:<span id="userId" class="pl-2">${question.stud_username}</span>
									<br>
									Date Posted:<span id="qnsDate" class="pl-2">${question.date_posted}</span>
									<br>
									No. of Votes:<span id="voteCount" class="pl-2">${question.total_votes}</span>
								</p>
							</div>
							<!--<div class="col">
								<p>
									No. of Answers:<span id="ansCount" class="pl-2">3</span>
									<br>
									No. of Comments:<span id="commentCount" class="pl-2">20</span>
								</p>
							</div>-->
						</div>
						<hr class="hr" style="background-color: #455A64;">
					</div>
					<div class="col-sm-2"></div>
				</div>
				</c:forEach>
				
				<div class="row">
					<div class="col text-center mt-3 mb-3">
						<button type="submit" id="printingBtn" class="btn btn-primary" onclick="window.print()">Print Report</button>					
					</div>
				</div>
				
			</div>
		</div>
		<!-- End of Page Container -->
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>      	
	
	</body>
</html>