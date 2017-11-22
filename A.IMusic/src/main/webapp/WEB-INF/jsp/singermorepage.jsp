<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript"
	charset="utf-8"></script>
<script src="bootstrap/js/bootstrap.js" type="text/javascript"
	charset="utf-8"></script>
<script src="bootstrap/musicjs/script.js" type="text/javascript"
	charset="utf-8"></script>
<script src="bootstrap/musicjs/audio.js" type="text/javascript"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/Musiccss/singerpage.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/Musiccss/lunbocss.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/Musiccss/audio.css" />
<title></title>

<script>
	$(function(){

			$("#li456").hover().css("cursor", "pointer");
			$("#li123").hover().css("cursor", "pointer");
		//获取歌曲的编号
	 	$(document).on("click",".neirong",function(){
		//注意参数的传递 json格式		
		 var a= parseInt( $(this).find(".dianjibianhao1").html());
	 	location.href="xiangqingjiemian?op="+a; 
		
		});		 
					
	 	
	 	
	 	$(document).on("click","#beijiandi1",function(){
			//注意参数的传递 json格式		
			 var a= parseInt( $(this).find(".dianjibianhao12").html());
		 	location.href="xiangqingjiemian?op="+a; 
			
			});		
			
			
	
		});
		
	//点击推荐歌手	
		$(function(){
			$("#li456").click(function(){
				$("#h1").text("推荐歌手");
				$(".img div").remove();
				  $(".img1 div").remove();
				  $("#xiabain").remove();
				//这里做ajax请求
			$.get("tuijiandegeshouxinxi",function(listbyshouchang,status){
				
				$.each(listbyshouchang,function(index,listbyshouchang){
					
					$(".img").append("<div style=' float: left;  width: 20%; height: 200px; border: 0px solid black;' class='nicaibucai'>"+
							"<div style='padding: 17px; width: 100%; height: 154px; border: 0px solid #3E8F3E;' align='center'>"+
							"<h5  class='dianjibianhao12345' hidden >"+listbyshouchang.singerId+"</h5>"+
							"<a href='#' title='"+listbyshouchang.singerName+"'><img src='http://192.168.9.248:8080/AlMusic/"+listbyshouchang.singerImage+"' style='width:170px ;height:160px;padding:10px' /></a>"+
						"</div>"+
						"<p style='margin-top: 14px;' align='center'>"+
							"<a href='#' title='"+listbyshouchang.singerName+"' style='font-size: 20px;'>"+listbyshouchang.singerName+"</a>"+
						"</p>"+
					"</div>");
					
				})
				
				
			})
			//获取并传值	
			$(document).on("click",".nicaibucai",function(){
			
				//注意参数的传递 json格式		
				 var a= $(this).find(".dianjibianhao12345").text();
				
			 	location.href="xiangqingjiemian?op="+a;   
				
				});		
				  
				
			})
		})
		
		//点击入驻歌手
		$(function(){
			$("#li123").click(function(){
				$("#h1").text("入驻歌手");
				 $(".img div").remove();
				  $(".img1 div").remove();
				  $("#xiabain").remove();
//这边做一个ajax请求
$.get("geshouall",function(listallsinger,status){
    $.each(listallsinger,function(index,listallsinger){
   	 
        $(".img").append("<div style=' float: left;  width: 20%; height: 200px; border: 0px solid black;' class='nicai1'>"+
    				"<div style='padding: 17px; width: 100%; height: 154px; border: 0px solid #3E8F3E;' align='center'>"+
    				"<h5  class='dianjibianhao1234' hidden >"+listallsinger.singerId+"</h5>"+
    					"<a href='#' title='"+listallsinger.singerName+"'><img src='http://192.168.9.248:8080/AlMusic/"+listallsinger.singerImage+"'  style='width:170px ;height:160px;padding:10px' /></a>"+
    				"</div>"+
    				"<p style='margin-top: 14px;' align='center'>"+
    					"<a href='#' title='"+listallsinger.singerName+"' style='font-size: 20px;'>"+listallsinger.singerName+"</a>"+
    				"</p>"+
    		"</div>")
       	 
        
        }) 
	
	
	})

			//获取并传值	
	$(document).on("click",".nicai1",function(){
	
		//注意参数的传递 json格式		
		 var a= $(this).find(".dianjibianhao1234").text();
		
	 	location.href="xiangqingjiemian?op="+a;   
		
		});		 
			
			
			
			
			})
})
		
		
		
		
		
</script>
</head>
<body style="background-color: #FAF4FF;">
	<!--头部logo以及导航栏开始-->

	<!--头部logo以及导航栏结束-->
	<!--
	作者：offline
	时间：2017-11-11
	描述：下方内容开始
-->
	<div class="content">
		<!--
	作者：offline
	时间：2017-11-11
	描述：下面内容开始
-->
		<div class="container"
			style="height: 1100px; width: 100%; padding: 0px; margin: 0px;">
			<div class="col-md-12 column"
				style="height: 100%; border: 0px solid red; width: 100%; margin: 0px; padding: 0px;">
				<div class="left"
					style="float: left; width: 18%; height: 100%; margin: 0px; padding: 0px;">
					<div class="row clearfix"
						style="border: 0px solid darkviolet; width: 100%; margin: 0px; padding: 15px;">
						<div id="liebiao" class="col-md-12 column"
							style="width: 100%; height: 100%; margin-top: 30px; border-bottom: 1px solid orangered; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgba(0, 0, 0, 0.3);">
							<h3 id="h31">推荐</h3>
							<ul>
								<li id="li123"><a class="a_singer" target="iframe_singer">入驻歌手</a>
								</li>
								<li id="li456"><a class="a_singer" target="iframe_singer">推荐歌手</a>
								</li>
							</ul>
						</div>

					</div>
				</div>
				<div class="right" style="float: left; width: 82%; height: 100%;">
					<div class="tit"
						style="margin: 20px; margin-top: 50px; border: 0px solid #269ABC; height: 60px; border-bottom: 1px solid orangered; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: orangered;">
						<h1 style="margin-top: 10px;" id="h1">入驻歌手</h1>
						<p style="float: right; margin-top: -30px;">
							<a href="settledSinger.html">更多></a>
						</p>
					</div>
					<div class="img"
						style="height: 400px; border: 0px solid red; margin: 0px; padding: 0px; margin-top: 15px;">
						<c:forEach items="${listsingerten}" var="listsingerten">
							
							<div class="neirong"
								style="float: left; width: 20%; height: 200px; border: 0px solid black;">
								<div  class="dianjibianhao1" hidden>${listsingerten.singerId}</div>
								<div
									style="padding: 17px; width: 100%; height: 154px; border: 0px solid #3E8F3E;"
									align="center">
									<a href="#" title="${listsingerten.singerName}"><img
										src="http://192.168.9.248:8080/AlMusic/${listsingerten.singerImage}"  style="width:170px ;height:160px;padding:10px"/></a>
								</div>
								<p style="margin-top: 14px;" align="center">
									<a href="#" title="${listsingerten.singerName}"
										style="font-size: 20px;">${listsingerten.singerName}</a>
								</p>
							</div>
						</c:forEach>

					</div>
					<div class="tit" id="xiabain"
						style="margin: 20px; margin-top: 20px; border: 0px solid #269ABC; height: 60px; border-bottom: 1px solid orangered; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: orangered;">
						<div id="remenggeshou">
							<h1 style="margin-top: 10px;">热门歌手</h1>
						</div>
					</div>
					<div class="img1"
						style="height: 400px; border: 0px solid red; margin: 0px; padding: 0px; margin-top: 15px;">
						<c:forEach items="${listsingerremen}" var="listsingerremen">
						<div id="beijiandi1">
						<div  class="dianjibianhao12" hidden>${listsingerremen.singerId}</div>
							<div style="float: left; width: 20%; height: 200px; border: 0px solid black;">
							
								<div
									style="padding: 17px; width: 100%; height: 154px; border: 0px solid #3E8F3E;"
									align="center">
									<img src="http://192.168.9.248:8080/AlMusic/${listsingerremen.singerImage}"  style="width:170px ;height:160px;padding:10px" />
								</div>
								<p style="margin-top: 14px;" align="center">
									<a href="#">${listsingerremen.singerName}</a>
								</p>
							</div>
							</div>
						</c:forEach>

					</div>
				</div>
			</div>
		</div>
		<!--
	作者：offline
	时间：2017-11-11
	描述：热门推荐结束
-->
	</div>


</body>


<script type="text/javascript">
   	$(function(){
   	$("#vistor").hide();
    $("#userxra").show();
   	$(".logo").hover().css("cursor", "pointer");
   	$(".daohang").hover().css("cursor", "pointer"); 
   	$(".xialabioa").hover().css("cursor", "pointer"); 
   	
   	$(".daohang").first().addClass("xcenteroneone");//先设置推荐是点击的	 	
    $(".lefelist").first().addClass("navsearch");//先设置推荐是点击的	
  
   

});
	

	
</script>
</html>
