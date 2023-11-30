<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>과목 상세페이지 
                  수정
    </title>
    <link type="text/css" rel="stylesheet" href="/resource/res/css/sample.css"/>
    
    <!--For Commons Validator Client Side-->
    <script type="text/javascript" src=""></script>
    <script type="text/javascript"> 
	
     var bCancel = false; 

    function validateSampleVO(form) {                                                                   
        if (bCancel) 
      return true; 
        else 
       return validateRequired(form); 
   } 

    function required () { 
     this.aa = new Array("name", "카테고리명 은 필수 입력값입니다.", new Function ("varName", " return this[varName];"));
     this.ab = new Array("description", "설명 은 필수 입력값입니다.", new Function ("varName", " return this[varName];"));
     this.ac = new Array("regUser", "등록자 은 필수 입력값입니다.", new Function ("varName", " return this[varName];"));
    } 
	function fn_regSubject(){
		document.listForm.action="/regSubject.do";
		document.listForm.submit();
	}
	function fn_regist(){
		document.detailForm.action="/registSubject.do";
		document.detailForm.submit();
	}

</script>


    
    <script type="text/javaScript" language="javascript" defer="defer">
        
    </script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">

<form id="detailForm" name="detailForm" action="/sample/updateSampleView.do" method="post">
    <div id="content_pop">
    	<!-- 타이틀 -->
    	<div id="title">
    		<ul>
    			<li><img src="/resource/res/img/title_dot.gif" alt=""/>
                    
                    수정
                </li>
    		</ul>
    	</div>
    	<!-- // 타이틀 -->
    	<div id="table">
    	<table width="100%" border="1" cellpadding="0" cellspacing="0" style="bordercolor:#D3E2EC; bordercolordark:#FFFFFF; BORDER-TOP:#C2D0DB 2px solid; BORDER-LEFT:#ffffff 1px solid; BORDER-RIGHT:#ffffff 1px solid; BORDER-BOTTOM:#C2D0DB 1px solid; border-collapse: collapse;">
    		<colgroup>
    			<col width="150"/>
    			<col width="?"/>
    		</colgroup>
    		
        		<tr>
        			<td class="tbtd_caption"><label for="id">No</label></td>
        			<td class="tbtd_content">
        				<input id="id" name="id" class="essentiality" readonly="readonly" type="text" value="${detailBoard.ID }" maxlength="10"/>
        			</td>
        		</tr>
    		
    		<tr>
    			<td class="tbtd_caption"><label for="name">과목명</label></td>
    			<td class="tbtd_content">
    				<input id="subject" name="subject" class="txt" type="text" value="${detailBoard.SUBJECT }" maxlength="30"/>
    				&nbsp;
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption"><label for="name">학년</label></td>
    			<td class="tbtd_content">
    				<input id="grade" name="grade" class="txt" type="text" value="${detailBoard.GRADE}" maxlength="30"/>
    				&nbsp;
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption"><label for="useYn">개설여부</label></td>
    			<td class="tbtd_content">
    				<select id="useYn" name="useYn" class="use">
    					<option value="Y" selected="selected">Yes</option>
    					<option value="N">No</option>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption"><label for="description">설명</label></td>
    			<td class="tbtd_content">
    				<textarea id="description" name="description" rows="5" cols="58">${detailBoard.DESCRIPTION }</textarea>&nbsp;
                </td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption"><label for="regUser">등록자</label></td>
    			<td class="tbtd_content">
                    
        				<input id="regUser" name="regUser" class="essentiality" readonly="readonly" type="text" value="${detailBoard.REG_USER }" maxlength="10"/>
        				&nbsp;</td>
    		</tr>
    	</table>
      </div>
    	<div id="sysbtn">
    		<ul>
    			<li>
                    <span class="btn_blue_l">
                        <a href="">목록</a>
                        <img src="/resource/res/img/btn_bg_r.gif" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
    			<li>
                    <span class="btn_blue_l">
                        <a href="">
                            
                            수정
                        </a>
                        <img src="/resource/res/img/btn_bg_r.gif" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
    			
                    <li>
                        <span class="btn_blue_l">
                            <a href="">삭제</a>
                            <img src="/resource/res/img/btn_bg_r.gif" style="margin-left:6px;" alt=""/>
                        </span>
                    </li>
    			
    			<li>
                    <span class="btn_blue_l">
                        <a href="">재설정</a>
                        <img src="/resource/res/img/btn_bg_r.gif" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
            </ul>
            <ul>
            	<li><span class="btn_blue_l"><a href="javascript:fn_regSubject()">등록</a> <img src="/resource/res/img/btn_bg_r.gif" style="margin-left:6px;" alt=""/>
            	</span>
            	</li>
            	<li>
            		<span class="btn_blue_l">
            			<a href="javascript:fn_regist()">등록</a>
            			<img src="/resource/res/img/btn_bg_r.gif" style="margin-left:6px;" alt=""/>
            		</span>
            	</li>
            </ul>
    	</div>
    </div>
    <!-- 검색조건 유지 -->
    <input type="hidden" name="searchCondition" value="1"/>
    <input type="hidden" name="searchKeyword" value=""/>
    <input type="hidden" name="pageIndex" value="1"/>
</form>
</body>
</html>