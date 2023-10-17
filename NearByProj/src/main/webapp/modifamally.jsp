<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dto.Family" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
   href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
   rel="stylesheet">
<title>NearByDocHeader</title>

<style>
#container {
  /* background-color: #CFE8F7; */
  background-color: white;
  margin: 10px  auto;
  width:430px;
  height:684;
  padding-top: 5px;
}

#famallymanage>span{
  font-size: 22px;
}


input{
  width: 57px;
  height: 36px;
  border-radius: 10px; 
}

.delete{
  background: #DAD9D9;
  color: black;
  border: 1px solid #16151562;
}


#famlist{
  margin-top: 10px;
}

#detailfam{
  width: 320px;
  height: auto;
  margin: 20px auto;
}

#detailfam span{
  margin-left: 5px;
  font: bolder;
}

textarea{
  font-size: 10pt;
}

table{
  background-color: white;
  border-radius: 10px;
  width: 320px;
  text-align: center;
}

table tr td:nth-child(1){
  background-color: #CFE8F7;
  padding-right: 5px;
}

tr>td{
	height: 40px;
}


.modi {
	background: white;
    color: #2188C4;
    border: 1px solid #16151562;
}
</style>

<script> 
$(function(){
    $(".delete").click(function(){
        console.log("삭제 버튼 클릭");
        var famName = $(this).closest("div#detailfam").find("input[type='text']").val();
        console.log(famName);
        if (confirm("삭제하시겠습니까??") == true) {
            $.ajax({
                url: 'deletafam',
                type: 'post',
                data: {'fname': famName},
                success: function(response) {
                    console.log("success");
                    alert("삭제되었습니다");
                    location.href = "modifamally";
                },
            });
        } else {
            return false;
        }
    });
    
    
    $(".modi").click(function() {
        console.log("수정 버튼 클릭");
        if (confirm("수정하시겠습니까??") == true) {

        	console.log($("#fname").val());
        	console.log($("#ftel").val());
        	console.log($("#faddress").val());
        	console.log($("#fidnum").val());
            // Send familyList to the servlet using AJAX
            $.ajax({
                url: 'modifamally',
                type: 'post',
                data: {
                    'fname': $("#fname").val()
                  , 'ftel' : $("#ftel").val()
                  , 'faddress' : $("#faddress").val()
                  , 'fidnum' : $("#fidnum").val()
                },
                success: function(response) {
                    console.log("success");
                    alert("수정되었습니다");
                    location.href = "modifamally";
                }
            });
        } else {
            return false;
        }
    });    
});
	  

  </script> 
</head>

<body>
   <!-- 헤더 -->
   <%
	pageContext.include("thinheader.jsp");
	%>
   <div id="container">
    <div id="famallymanage">
      <span style="text-align: left; margin:10px 0 10px 10px">가족관리</span>
      <span class="material-symbols-outlined" onClick="history.go(-1)" style="margin-left: 300px;">
        arrow_back
        </span> 
      <hr>
      <div id="famlist">
      <c:forEach items="${familys}" var="family">
        <div id="detailfam">
          <table>
            <tr>
              <td>
                이름
              </td>
              <td>
                <textarea name="" id="fname" rows="2" cols="22">${family.name }</textarea>
                <input id="fidnum" type="text" value="${family.id}" style="display:none;">
              </td>
              <td rowspan="4" colspan="3">
			      <input style="cursor: pointer;" class="modi" type="button" value="수정"
       data-name="${family.name}" data-tel="${family.tel}" data-address="${family.address}">
			      <input style="cursor: pointer;" class="delete" type="button" value="삭제">
			      <input id="hiddenPidnum" type="text" value="${family.name}" style="display:none;">
    		  </td>
            </tr>

            <tr>
              <td>
                <span>전화번호</span>
              </td>
              <td>
                <textarea name="" id="ftel" rows="2" cols="22">${family.tel }</textarea>
              </td>
            </tr>

            <tr>
              <td>
                <span>주소</span>
              </td>
              <td>
                <textarea name="" id="faddress" rows="2" cols="22">${family.address }</textarea>
              </td>
            </tr>
          </table>
        </div>
        </c:forEach>


      </div>
      <br>
      
    </div>

    
   </div>

</body>

</html>