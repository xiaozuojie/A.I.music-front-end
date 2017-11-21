<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/musicjs/script.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/musicjs/audio.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/gedangpage.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/lunbocss.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/audio.css"/>
		<title></title>

	</head>
	<body style="background-color:#FAF4FF;">
		 <div  class="content" style="margin-right: 0px;border: 1px solid #C0C0C0;">		
<div style="margin-left: 40px; margin-top: 20px;  ">
<ul class="m-cvrlst f-cb" id="m-pl-container">
<c:if test="${alllistzhuanjiti!=null}">
<c:forEach items="${alllistzhuanjiti}" var="zhuanji">
<li>
<div class="u-cover u-cover-1"style="border: 1px ; width: 20%; height: 200px; float: left;">
<a  class="msk"><img class="j-flag" title="${zhuanji.albumsName}" height="145px" width="150px" src="bootstrap/musicimage/mainpageimage/封面2.jpg">
<h5 class="zhuanid">${zhuanji.albumsId}</h5>
</a>
<div class="bottom" style="border: 1px; text-overflow:ellipsis; white-space:nowrap;overflow:hidden;width:140px;">
<a class="icon-play f-fr" title="播放" href="javascript:;" data-res-type="13" data-res-id="937264651" data-res-action="play"></a>
<span class="icon-headset"></span>
<p class="dec">
<a title="${zhuanji.albumsName}" class="zhuanjimingcheng" class="tit f-thide s-fc0">${zhuanji.albumsName}
</a>
</p>
<p><span class="s-fc4">by</span> <a title="${zhuanji.singerName}" href="#" class="nm nm-icn f-thide s-fc3">${zhuanji.singerName}</a> </p>
</div>
</div>
</li>
</c:forEach>
</c:if>
</ul>
</div>
		
				
			</div>
<script type="text/javascript">
	$(function(){
		$(".zhuanid").hide();
	   	$(".msk").hover().css("cursor", "pointer");
	   	$(".msk").click(function(){
	   		var zhuanjiid=parseInt($(this).find(".zhuanid").text());
	 	    location.href="zhuanjixiangqing?zhuanjiid="+zhuanjiid;		
	   	})
		
	})		
			
			
			
			
</script>
	</body>
</html>
