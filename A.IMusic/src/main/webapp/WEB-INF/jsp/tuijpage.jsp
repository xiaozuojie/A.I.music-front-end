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
	href="bootstrap/Musiccss/tuijpage.css" />
<link rel="stylesheet" type="text/css"
	href="bootstrap/Musiccss/lunbocss.css" />

	
<title></title>
</head>
<body style="background-color: #FAF4FF;">
	<div class="content"
		style="margin-right: 0px; border: 1px solid #C0C0C0;">
		<!--
	作者：offline
	时间：2017-11-11
	描述：轮播滚动开始
-->			
	<div id="box">
    <pre class="prev">prev</pre>
    <pre class="next">next</pre>
    <ul>
    <c:if test="${listzhuanjinumber!=null}">
    <c:forEach items="${listzhuanjinumber}" var="zhuanji">
        <li class="tupianxe" ><img width="240px" height="240px" src="http://192.168.9.248:8080/AlMusic/${zhuanji.albumsImage}" />${zhuanji.albumsId}     
        </li>
    </c:forEach>
   </c:if>
    </ul>
     </div>
		
<!--

	作者：offline
	时间：2017-11-11
	描述：轮播滚动结束
-->

		<!--
	作者：offline
	时间：2017-11-11
	描述：下面内容开始
-->
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column"
					style="width: 83%; height: 1600px; margin-top: 10px;">
					<div class="row clearfix">
						<!--
	作者：offline
	时间：2017-11-11
	  描述：热门推荐开始

         -->	
						<div class="col-md-8 column"
							style="width: 75%; margin: 0px; padding: 0px; padding-left: 10px; margin-right: 10px;">

							<div class="rementuijian">
								<ul>
									<li><span class="glyphicon glyphicon-record"
										style="color: red; font-weight: 1000;"></span><a href="#"
										style="text-decoration: none; font-weight: 600; font-size: 17px; color: #202020;">热门推荐</a></li>
									<li><a href="gedanlist">流行</a></li>
									<li><a href="gedanlist">古风</a></li>
									<li><a href="gedanlist">民谣</a></li>
									<li><a href="gedanlist">摇滚</a></li>
									<li><a href="gedanlist">电子</a></li>
								</ul>
							</div>
							<div id="" class="rementuijiangengduo" style="width: 30%;">
								<a href="gedanlist">更多</a><span
									class="glyphicon glyphicon-arrow-right"
									style="color: red; margin-right: 10px;"></span>
							</div>

							<!-- 描述：横线   -->
							<div id=""
								style="border-top: 2px solid #D80000; margin-top: 40px; margin-right: 10px;">
							</div>
							<!--

                    	作者：offline
                    	时间：2017-11-12
                    	描述：热门推荐下方的歌单内容开始
                    -->

							<div id=""
								style="height: 400px; margin-right: 10px; margin-top: 10px;">
								<!--
                	作者：offline
                	时间：2017-11-12
                	描述：第一歌单开始

                -->	
                 <c:if test="${listgedannumber!=null}">
                <c:forEach items="${listgedannumber}" var="gedan">
			    <div id="" class="rementuibofangqi"  style="float:left; width: 25%;height: 200px;padding-bottom: 8px; text-align: left;padding-right: 8px;" >
			    
		               <div title="${gedan.playlistName}" id=""  style="padding-bottom: 5px;">
		               	<a  href="javascript:void();" class="dagedantupian"><img src="http://192.168.9.248:8080/AlMusic/${gedan.playlistImage}"/ height="150px" width="100%">	
		          </a>
		               <div class="bofangtubiao" style="position: absolute;margin-top: -20px;">
		             	  <span class="glyphicon glyphicon-headphones" style="margin-left: 25px;"></span>	          	  	
		             	  	${gedan.playlistComments}		               
		                   <span class="glyphicon glyphicon-expand rementupianbobiao" style="margin-left: 80px;color: white">		                   		           
		                      
		                      <h5 class="gedanid" hidden>${gedan.playlistId}</h5>
		                   </div>
		                   </span>           
		             	   		             			             	  		             	
		             </div>    <div class="gedanid1">         
		             	 	 <h5 class="gedanid" hidden>${gedan.playlistId}</h5>    	
			           <a  href="javascript:void();" style="color:RGB(72,72,72);">${gedan.playlistName}</a>
			           </div>				   					    	
			    </div>
			    </c:forEach>
			    </c:if>

			     




							</div>
							<!--
	作者：offline
	时间：2017-11-11
	描述：热门推荐结束
	
-->


							<!--
	作者：offline
	时间：2017-11-12
	描述：新碟上架开始
-->



  <div id="" style="height: 260px;width: 100%;border: 1px solid white;margin-top: 70px;">
              	<div  class="rementuijian" >
				<ul>
					<li><span class="glyphicon glyphicon-record" style="color: red;font-weight: 1000;"></span><a href="#" style="text-decoration: none;font-weight: 600; font-size: 17px;color: #202020;">新碟上架</a></li>
				</ul>
			    </div>
              		    <div id="" class="rementuijiangengduo" style="width: 30%;">
			    	<a href="xindieshangjialist">更多</a><span class="glyphicon glyphicon-arrow-right" style="color: red;margin-right: 10px;"></span>
			    </div>
			              	        
             
  
								<!-- 描述：横线   -->
								<div id=""
									style="border-top: 2px solid #D80000; margin-top: 40px; margin-right: 10px;">
								</div>
								<div id=""
									style="height: 200px; background-color: rgb(245, 245, 245); margin-right: 10px; margin-top: 15px; border: 1px solid #E0E0E0;">
									<c:if test="${listzhuanjitime!=null}">
										<c:forEach items="${listzhuanjitime}" var="zhuanji">
										
											<div id="" class="xindiediyi"
												style="float: left; width: 20%; height: 200px; padding-bottom: 8px; text-align: center; padding-right: 8px; margin-top: 20px;">
												<div id="" style="">
													<a class="zhuanjitupian"><img
														src="http://192.168.9.248:8080/AlMusic/${zhuanji.albumsImage}"
														 height="135px" width="100%">
														 
														<h5 class="zhuanid">${zhuanji.albumsId}</h5>
														  </a>
													<div style="position: absolute; margin-top: -30px;">
														
															 <span
																class="glyphicon glyphicon-expand botupiao"
																style="color: #FFF5EE;margin-left: 114px; margin-top: 8px;color: #C7254E
																">
																<h5 class="zhuanname" hidden>${zhuanji.albumsName}</h5>
																</span>
																
															
														
													</div>
												</div>
												<a href="" style="color: RGB(72, 72, 72);">${zhuanji.singerName}</a>
											</div>
										</c:forEach>
									</c:if>







								</div>

							</div>
							<!--
	作者：offline
	时间：2017-11-12
	描述：新碟上架结束
-->
							<!--
	作者：offline
	时间：2017-11-12
	描述：榜单开始
-->
							<div id=""
								style="height: 600px; width: 100%; border: 1px solid white; margin-top: 70px;">

								<div class="rementuijianbandan">
									<ul>
										<li><span class="glyphicon glyphicon-record"
											style="color: red; font-weight: 1000;"></span><a href="#"
											style="text-decoration: none; font-weight: 600; font-size: 17px; color: #202020;">榜单</a></li>
									</ul>
								</div>
								<div id="" class="rementuijiangengduobandan" style="width: 30%;">
									<a href="">更多</a><span class="glyphicon glyphicon-arrow-right"
										style="color: red; margin-right: 10px;"></span>
								</div>
								<!-- 描述：横线   -->
								<div id=""
									style="border-top: 2px solid #D80000; margin-top: 40px; margin-right: 10px;">
								</div>

								<div id=""
									style="height: 510px; background-color: rgb(245, 245, 245); margin-right: 10px; margin-top: 15px; border: 1px solid #E0E0E0; text-align: center;">
									<div id=""
										style="height: 500px; width: 49%; padding: 10px; float: left; margin-top: 15px;">
										<div id="">
											<img src="bootstrap/musicimage/mymusic/飙升榜.jpg" />
											<a href="paihanglist"
												style="color: #696969; font-size: 14px; font-weight: 700;">A.I.爱音乐飙升榜</a>
										</div>
										<div id="" class="aibiaosheng">
											<table class="table table-striped"
												style="margin-top: 40px; text-align: left;">
												<tbody id="biaoshen">
												
												</tbody>
											</table>
										</div>
									</div>
									<div id=""
										style="height: 500px; width: 49%; float: left; padding: 10px; margin-top: 15px;">
										<div id="">
											<img  src="bootstrap/musicimage/mymusic/新歌榜.jpg" />
											<a href="paihanglist"
												style="color: #696969; font-size: 14px; font-weight: 700;">A.I.爱音乐新歌榜</a>
										</div>
										<div id="">
											<table class="table table-striped"
												style="margin-top: 40px; text-align: left;">
												<tbody id="newsong">
												
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<!--
	作者：offline
	时间：2017-11-12
	描述：榜单结束
-->
						</div>
						<!--
	作者：offline
	时间：2017-11-12
	描述：右侧的歌手推荐表
-->

            <div class="col-md-4 column xraright" style="border: 1px solid #C0C0C0 ;width:23%; height: 500px;">
			<div id="" class="youcegeshou" >
			    <h6 style="display: inline-block;color: black;">入驻歌手</h6>
			   <h6 style="display: inline-block;margin-left: 80px;"><a href="singermorepagelist" style="color:#A9A9A9; ">查看更多></a></h6>
			</div>
			
							<!--横线-->
							<div id="" style="border-top: 1px solid #D3D3D3;"></div>
							<!--

           	作者：offline
           	时间：2017-11-13
           	描述：歌手头像、名字、介绍开始
           -->
							<div  style="height: 510px;">
								<c:forEach items="${listsinger}" var="listsinger">
								<div class="woshigeshou">
								<h5  class='dianjibianhao12345' hidden >${listsinger.singerId}</h5>
									<!-- 第一个-->
									<div id="" style="height: 80px; margin: 5px 0px;">
										<div  id="" style="float: left;">
											<!-- 歌手头像-->
											<a href='javascript:void(0);'><img  height="75px" width="85px"
												src="http://192.168.9.248:8080/AlMusic/${listsinger.singerImage}" /></a>
										</div>
										<div id="" style="float: right; text-align: center;">
											<!--名字、介绍 -->
											<a href='javascript:void(0);'><h4 style="margin-top: 14px; margin-right: 35px">${listsinger.singerName}</h4></a>
											<a href='javascript:void(0);'><h5 style="margin-top: 14px; margin-right: 50px">${listsinger.location}</h5></a>
										</div>
									</div>
									</div>
								</c:forEach>
								</div>
							</div>
							<!--
           	作者：offline
           	时间：2017-11-13
           	描述：歌手头像、名字、介绍结束
           -->


						</div>

					</div>
				</div>
			</div>


		</div>


	</div>
	<script type="text/javascript">
	 	 /**
    * 鼠标移到专辑上，显示播放器，移走掩藏
    */

   $(function(){
	   $(document).on("click",".woshigeshou",function(){
			
			//注意参数的传递 json格式		
			 var a= $(this).find(".dianjibianhao12345").text();
		  	location.href="xiangqingjiemian?op="+a;     
			
			});		
	   
   	$(".botupiao").hide();
   	$(".albumsName").hide();
   	$(".singerName").hide();
   	$(".zhuanid").hide();
   	$(".botupiao").hover().css("cursor", "pointer");
   	$(".rementupianbobiao").hover().css("cursor", "pointer");
	$(".zhuanjitupian").hover().css("cursor", "pointer");
	$(".zhuanjibofang").hover().css("cursor", "pointer");
   	$(".xindiediyi").mouseover(function(){
        $(this).find(".botupiao").show();
     });
    $(".xindiediyi").mouseleave(function(){
         $(this).find(".botupiao").hide();
    });	
     
 })
   //推荐轮播点击详情页事件
   $(".tupianxe").click(function(){
	   var zhuanjiid=parseInt($(this).text());
	   location.href="zhuanjixiangqing?zhuanjiid="+zhuanjiid;
    })  
  //推荐歌单播放点击事件
   $(".rementupianbobiao").click(function(){
	   var gedanid=$(this).find(".gedanid").text(); 
	   window.parent.$.judgelogin(gedanid);//调用父页面自定义的jQuery方法 
    }) 
    //新碟上架点击事件
    $(".zhuanjitupian").click(function(){
        var zhuanjiid=parseInt($(this).find(".zhuanid").text());
        location.href="zhuanjixiangqing?zhuanjiid="+zhuanjiid;
    });	
  //新碟上架点击播放事件
  $(".botupiao").click(function(){
	  var zhuanjname=$(this).find(".zhuanname").text();
	  window.parent.$.judgezhuanji(zhuanjname);
	 
  })

   </script>
   <script type="text/javascript">
	$(function(){
	    $.get("tuijianpaihang",function(biaoshenlist,status){
	    	$("#biaoshen tr").remove();
	    	var i=0;
	    	$.each(biaoshenlist,function(index,biaoshenlist){
	    		i++
	    		$("#biaoshen").append("<tr><td>"+i+"</td>"+
	    				"<td>"+biaoshenlist.songName+"</td>"+
	    				"<td class='yinyue'>"+
	    				"<div class='biaoshengban'>"+
	    				"<h4 hidden  class='songid'>"+biaoshenlist.songId+"</h4>"+
	    				"<a href='javascript:void(0);'><span class='glyphicon glyphicon-music'></span></a></td></div>"+
	    				"<td><a href='javascript:void(0);'><span class='glyphicon glyphicon-plus'></span></a></td>"+
	    	            "<td> <a class='glyphicon glyphicon-save' style='color: rgb(51,122,183)' href='"+"http://192.168.9.248:8080/AlMusic/"+biaoshenlist.songlocation+"' download='"+biaoshenlist.songName+"'></a></td>"+
                        "</tr>");
	    	});
	    });
	   });
	
	$(function(){
	    $.get("tuijiannewsong",function(newsonglist,status){
	    	$("#newsong tr").remove();
	    	var i=0;
	    	$.each(newsonglist,function(index,newsonglist){
	    		i++
	    		$("#newsong").append("<tr><td>"+i+"</td>"+
	    				"<td>"+newsonglist.songName+"</td>"+
	    				"<td class='yinyue'>"+
	    				"<div class='paihangban'>"+
	    				"<h4 hidden  class='songid'>"+newsonglist.songId+"</h4>"+
	    				"<a href='javascript:void(0);'><span class='glyphicon glyphicon-music'></span></a></td></div>"+
	    				"<td><a href='javascript:void(0);'><span class='glyphicon glyphicon-plus'></span></a></td>"+
	    				"<td> <a class='glyphicon glyphicon-save' style='color: rgb(51,122,183)' href='"+"http://192.168.9.248:8080/AlMusic/"+newsonglist.songlocation+"' download='"+newsonglist.songName+"'></a></td>"+
	    				"</tr>");
	    	});
	    });
	   });
	
	//音乐新歌榜被点击的时候
	$(document).on("click",".paihangban",function(){ 
		//这里需要获取这首歌曲的音频地址、图片地址、歌曲名、歌手名、和trackAlbum : "Single" 这里只能用list
		//歌曲的编号
	var a=$(this).find(".songid").text();
	window.parent.$.judgeloginsong(a);
	});
	//音乐飙升榜被点击的时候
	$(document).on("click",".biaoshengban",function(){ 
		//这里需要获取这首歌曲的音频地址、图片地址、歌曲名、歌手名、和trackAlbum : "Single" 这里只能用list
		//歌曲的编号
	var a=$(this).find(".songid").text();
	window.parent.$.judgeloginsong(a);
	});
	
	$(document).on("click",".gedanid1",function(){ 
		//歌单播放
		//歌曲的编号
	var playlistId=$(this).find(".gedanid").text();
	location.href="gedanxiangqing1?playlistId="+playlistId;     
	
	});
	 	
	
	</script>
</body>
</html>
