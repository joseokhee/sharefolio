<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>Document</title>
    <link rel="stylesheet" href="resource/res/css/detailPortfolio.css" />
  </head>
  <script> 

  </script>
  <body>
    <div class="header">
      <div class="title">Sharefolio</div>
    </div>
    <div class="postHeader">
      <div class="postHeaderHost">${selectOne[0].user_name}</div>
      <b>&nbsp;/&nbsp;</b>
      <div class="postHeaderTitle">
       ${selectOne[0].title }
      </div>
      <div class="postHeaderButtons">
        <a href="/update?share_id=${selectOne[0].share_id} &user_id=${selectOne[0].user_id}"><button class="btnUpdate">수정</button></a>
        <a href="/delete?share_id=${selectOne[0].share_id}"><button class="btnDelete">삭제</button></a>
      </div>
    </div>
    <div class="postHeader">
      <div class="postHeaderHost">
       ${selectOne[0].coment }<br><br>
      <c:set var="hash" value="${fn:split(selectOne[0].hashtag,'-') }"/>
       <c:forEach var="hashNum" items="${hash}" varStatus="g">
       <span class="tech"># ${hashNum }</span> 
        </c:forEach>
      </div>
      
    </div>
    <div class="techStackWrapper">
      <b>이 프로젝트의 Tech Stack</b>
      <br />
      <c:set var="hash" value="${fn:split(selectOne[0].tech,'-') }"/>
       <c:forEach var="hashNum" items="${hash}" varStatus="g">
       <span class="tech"># ${hashNum }</span> 
        </c:forEach>
    </div>
    <div class="postCard">
      <div class="postCardTitle">
        ${selectOne[0].head }
      </div>
      <div class="postCardContent">
     	${selectOne[0].content}
     </div>
      <div class="postCardDate">
        2019년 6월 2일
      </div>
      <ul class="postCardImages">
        <li>
          <img
            src="${selectOne[0].img_url} "
            alt="project image"
            class="postCardImage"
          />
        </li>
      </ul>
    </div>
  </body>
</html>
