<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>Sharefolio</title>
    <link rel="stylesheet" href="resource/res/css/portfolio.css" />
    
  </head>
  <script type="text/javaScript" language="javascript" defer="defer">

</script>
  <body>
    <div class="header">
      <div class="title">Sharefolio</div>
      <button class="btnNewPost" onclick="window.location.href='/newshare?user_id=1'">+ �� �� �ۼ�</button>
      <div class="tabs">
        <div class="tab"></div>
        <div class="tab">�� ������</div>
        <div class="tab tabSelect">���� �Խ���</div>
      </div>
    </div>
    <h2 class="boardTitle">���� �Խ��� &nbsp;&nbsp;&nbsp;<select><option value='all' selected>��ü</option><option value='port'>��Ʈ������</option><option value='schedule'>������</option></select>&nbsp;&nbsp;<input type="text" name="id"><a href="javascript:fn_search()"><input type="button" value="�˻�"></a></h2>

    <c:forEach var="result" items="${subjectList}" varStatus="status">
    <div class="cardShare" onclick="location.href='/shareDetail?share_id=${result.share_id}'">
      <div
        class="ptfCoverImg"
        style="background-image: url('${result.img_url}')"
      ></div>
      <div class="ptfContent">
        <div class="ptfTitle">${result.title }</div>
        ${result.coment}
      </div>
      <ul class="ptfStack">
        <li class="ptfTech">   
        <c:set var="hash" value="${fn:split(result.hashtag,'-') }"/>
        <c:forEach var="hashNum" items="${hash}" varStatus="g">
          <span class="techCircle" style="color: rgb(108,184,66);">#</span>
          ${hashNum}
        </li>
        </c:forEach>

      </ul>
          
      <div class="ptfFooter">
        �ڼ���
      </div>
      
      
    </div>
    </c:forEach>
     
