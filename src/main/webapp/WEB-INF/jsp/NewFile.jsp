<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>Sharefolio</title>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
      integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="resource/res/css/newPortfolio.css" />
    <script>
		function fn_regist(){
			document.detailForm.submit();
			}
    </script>
  </head>
  <body>
    <div class="header">
      <div class="title">Sharefolio</div>
    </div>

    <h2 class="newTitle">자유 게시글 작성</h2>
<form id="form" name="form" action="/shareC?">
    <div class="inputWrapper">
      <div class="inputTitle">*제목</div>
      <div class="inputContent">
        <input
          type="text"
          name="title"
          aria-required="true"
          aria-invalid="false"
        />
      </div>

    </div>
    <div class="inputWrapper">
      <div class="inputTitle">내용</div>
      <div class="inputContent">
        <textarea name="coment" rows="3"></textarea>
      </div>
    </div>
    <div class="inputWrapper">
      <div class="inputTitle">*해쉬 태그</div>
      <div class="inputContent">
        <input
          type="text"
          name="hash"
          aria-required="true"
          aria-invalid="false"
        />
      </div>
    </div>
    <h1>프로젝트를 선택해 주세요 <br></h1>
    
    <c:forEach var="result" items="${project}" varStatus="status">
    <div style=float:left;>
	<input type="radio" name="radio_btn" value="${result.portfolio_id}">
    </div>
    <div class="cardShare">
      <div
        class="ptfCoverImg"
        style="background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png')"
      ></div>
      <div class="ptfContent">
        <div class="ptfTitle">${result.title }</div>
        ${result.content}
      </div>
      <ul class="ptfStack">
        <li class="ptfTech">   
        <c:set var="hash" value="${fn:split(result.tech,'-') }"/>
        <c:forEach var="hashNum" items="${hash}" varStatus="g">
          <span class="techCircle" style="color: rgb(108,184,66);">·</span>
          ${hashNum}
        </li>
		</c:forEach>
	 	
      </ul>
   
      <div class="ptfFooter">
        자세히
      </div>
      </div>
    </c:forEach>  
  
    <a href="javascript:fn_regist()">
     </form>       
   <button class="btnCreate" >+ 게시글 생성</button>
    </a>
   
  </body>
</html>
