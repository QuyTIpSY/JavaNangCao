
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Di động</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="#">Trang chủ</a></li>
	      <li><a href="#">Giỏ hàng</a></li> 
	      <li><a href="#">Thanh toán</a></li>
	      <li><a href="#">Lịch sử mua hàng</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
	      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	    </ul>
	  </div>
	</nav>
	
	<table width="1000" align="center">
 	<tr>
 		<td width="800" valign="top" >
 			 <table class="table table-hover">
      	 	<%
      	 		ArrayList<loaibean> dsdidong = (ArrayList<loaibean>) request.getAttribute("dsdidong");
      	 	   	int n = dsdidong.size();
      	 		for(int i=0;i<n;i++){
      	 			loaibean s=dsdidong.get(i);
      	 			%>
	      	 		<tr>
	      	 		   <td>
		      	 		   <img src="<%=s.getAnh() %>"><br>
		      	 		  <b> Mã điện thoại: </b> <%=s.getMadidong() %> <br>
		      	 		  <b> Tên điện thoại:</b> <%=s.getTendidong() %> <br>
		      	 		   <b>Giá: </b><%=s.getGia() %> <br>
		      	 		   <b>Số lượng: </b><%=s.getSoluong() %> <br>
		      	 		   <b>Thành tiền:</b> <%=s.getSoluong()*s.getGia() %> <br>
	      	 		   </td>
	      	 		   <%i++;
	      	 		   if(i<n){
	      	 			s=dsdidong.get(i);
	      	 		     %>
	      	 		   <td>
		      	 		   <img src="<%=s.getAnh() %>"><br>
		      	 		   <b> Mã điện thoại: </b> <%=s.getMadidong() %> <br>
		      	 		  <b> Tên điện thoại:</b> <%=s.getTendidong() %> <br>
		      	 		   <b>Giá: </b><%=s.getGia() %> <br>
		      	 		   <b>Số lượng: </b><%=s.getSoluong() %> <br>
		      	 		   <b>Thành tiền:</b> <%=s.getSoluong()*s.getGia() %> <br>
	      	 		   <%} %>	 		  
	      	 		</tr>
	      	 	<%} %>
      	 	</table>
 			 </td>
 		
 		
 		<td width="200" valign="top" class="form-control"> 
 			 <form action="htdidongController" method="post">
				  <input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
				  <input name="butt" type="submit" value="Search" class="btn-primary">
			</form>

 		</td>
 		
 	</tr>
 </table>
</body>
</html>