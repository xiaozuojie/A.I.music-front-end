<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/musicjs/script.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/musicjs/audio.js" type="text/javascript" charset="utf-8"></script> 
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/gedangxiangqing.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/lunbocss.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/audio.css"/>
	    <style type="text/css">
    	.remengedan li {
	     height: 70px;
}
    </style>
	</head>

	<body onload="init()" style="background-color: rgb(245,245,245);">
<!--头部logo以及导航栏开始-->
		<div id="header">
		 <div id="headerone">	
			<div class="container">
				<div class="row clearfix">
					
					<div class="col-md-2 logo" >   
			        <ul>
			         	<li>
			         	<img src="bootstrap/musicimage/mainpageimage/musiclogp.png" style="height: 41px;width: 41px;"/>					
			         	</li>
			         	<li>			    
			         	 	网易云音乐			         		
			         	</li>
			        </ul>		   
					</div>
					
					<div class="col-md-6 column xcenter" >
						<div class="col-md-5 xcenterone" >
						 <ul>
						 	<li class="daohang"><span class="glyphicon glyphicon-home"><a  href="#">首页</a></li>
						 	<li class="daohang"><a  href="#">我的音乐</a></li>	
						 </ul>
						</div>
					</div>
					<div class="col-md-4 column xright" >		
						<ul>
							<li><input type="text" id="" placeholder="搜王力宏新专"  value="" style=" width: 188px; background:white;outline:none; "/></li>
							<li id="vistor"><a href="">登录</a><a href="">注册</a></li>
			
		<!--
        	作者：offline
        	时间：2017-11-11
        	描述：用户头像和下拉列表开始
        -->	
			
			
							<li class="dropdown" id="userxra">
							<img src="bootstrap/musicimage/mainpageimage/头像.jpg" width="44px" height="40px"  />												
							<span class="caret" style="color: rgb(119,136,153);" ></span>
	<!--
    	作者：offline
    	时间：2017-11-11
    	描述：鼠标移动到头像右侧处下拉列表开始
    -->								
									
		<ul class="dropdown-menu xialaliebiao "   style="background-color: rgb(36,36,36);height: 120px;text-align: center;color: rgb(119,136,153);">      
          <div class="xialabioa" style="text-align: left; height: 38px;line-height: 38px;">
            <p style="margin-left: 40px;"><span class="glyphicon glyphicon-user" ></span>个人主页</p>  
          </div>
          
          <div class="xialabioa"  style="text-align: left; height: 38px;line-height: 38px;">
          	 <p style="margin-left: 40px;"><span class="glyphicon glyphicon-asterisk"></span>个人设置</p>    
          </div>
          <div class="xialabioa" id="userleave"  style="text-align: left; height: 38px;line-height: 38px;">
          <p style="margin-left: 40px;"><span class="glyphicon glyphicon-off"></span>退出</p> 
          </div>
           
	   </ul>	
									
	<!--
    	作者：offline
    	时间：2017-11-11
    	描述：下拉列表结束
    -->									
								
	</li>
	
	<!--
        	作者：offline
        	时间：2017-11-11
        	描述：用户头像和下拉列表结束
        -->	
						</ul>							
				   </div>
	
			</div>
		</div>
	</div>
<!--
	导航二开始
-->
   <div id="headertwo">
   	  <div class="col-md-3">  
   	  </div>
   	<!--推荐、排行榜、歌单等-->  
   	  <div class="col-md-5 headertwotwo" >  
      <div class="list lefelist" style="border: none;">
				<a href="#" class="list-group">
				<div>						
				推荐
				</div>			
				</a>
	  </div>
	  <div class="list lefelist" style="border: none;">
				<a href="#" class="list-group ">
				<div>						
				排行榜
				</div>			
				</a>
	  </div>
	  <div class="list lefelist" style="border: none;">
				<a href="#" class="list-group ">
				<div>						
				歌单
				</div>			
				</a>
	  </div>
	  <div class="list lefelist" style="border: none;">
				<a href="#" class="list-group ">
				<div>						
				歌手
				</div>			
				</a>

	  </div>
	  <div class="list lefelist" style="border: none;">
				<a href="#" class="list-group ">
				<div>						
				新碟上架
				</div>			
				</a>			
	  </div>
   	  </div>
    <!--推荐、排行榜、歌单等结束--> 	  
   	   <div class="col-md-3">  
   	  </div>
   </div>
<!--
	导航二结束
-->
 </div>   
<!--头部logo以及导航栏结束-->	
<!--
	作者：offline
	时间：2017-11-11
	描述：下方内容开始
-->	
<div class="container">
	<div class="row clearfix">
		<div class="col-md-10 column">	
	          <div  class="content">
		
<!--
	作者：offline
	时间：2017-11-11
	描述：下面内容开始
-->	
<div class="container" style="" >
	<div class="row clearfix">
		<div class="col-md-12 column" style=" width: 83%;background-color:white" >
			<div class="row clearfix">
<!--
	作者：offline
	时间：2017-11-11
	描述：专辑图片以及一些属性
-->	
			<div class="col-md-8 column" style=" width: 75%;margin: 0px;padding: 0px;border: 1px solid gray;">		
		<c:forEach items="${requestScope.playlist}" var="pl">
				<div  class="zhuyao"  style="width: 90%;float: right; height: 40px; ">
					<img id="tupian4" width="170px" height="170px" src="http://192.168.9.248:8080/AlMusic/${pl.playlistImage}"/>
					<div id="tupian4-1" >					
         				 <span><img src="bootstrap/musicimage/mymusic/icon.png"/></span>
     					 <h3>${pl.playlistName}</h3><br />
						 <span><img src="bootstrap/musicimage/mainpageimage/touxiang1.jpg"/>&nbsp;&nbsp;&nbsp;<a>Taylor Swift</a> </span>
						 &nbsp;&nbsp;&nbsp;&nbsp;
						 <span>发行时间:&nbsp;&nbsp;&nbsp; ${pl.playlistCreateTime}</span><br />
						 <button type="button" class="btn btn-default btn-sm "><i class="fa fa-caret-square-o-right fa-inverse-red">播放</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-plus-square">收藏</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-external-link">转发(21312)</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-arrow-circle-down">下载</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-commenting-o">(23123)</i></button><br /><br />
						 <span id="biaoqian">标签：
			    		 <input type="button" class="btn btn-default btn-sm" id="bq" value="华语" style="border-radius: 12px;"/>
			    		 <input type="button" class="btn btn-default btn-sm" id="bq" value="流行" style="border-radius: 12px;"/>			    	 	
			    		 </span><br />
					</div>
		           
			   </div>
			   
			    <div id="content"  class="zhuyao1"  style="width: 90%;float: right;">
			    	<h5 style="font-weight:bold;">歌单介绍:</h5>
					<span id="wenzi1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${pl.playlistProfile}</span>
				</div>
					</c:forEach>
			  <div class="yllist" style="width: 90%;float: right;">
			  	<h4>&nbsp;</h4>
			  	<h3 style="font-weight:bold;">包含歌曲列表
			  		
			  		<small style="float: right; margin-top: 10px;">播放:
			  			<span id="bofangcishu" style="color: red;">
			  			53020
			  			</span>次
			  		</small>
			  	</h3>
			  	<div style="border-top: 2px solid red;"></div>
			  </div>
			  <!--
              	作者：offline
              	时间：2017-11-12
              	描述：歌曲的表格
              -->
			  <div class="musicList" style="width: 90%;" >
			  	<table class="table table-striped table-hover" >
	<thead>
		<tr>
			<th>歌曲编号</th>
			<th>歌曲编曲</th>
			<th>歌曲时长</th>
			<th>歌手</th>
			<th>专辑</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.songlist}" var="song">
		<tr>
			<td>1</td>
			<td>${song.songName}</td>
			<td>${song.songTime}</td>
			<td>${song.singerName}</td>
			<td>${song.albumsName}</td>
			<td class='yinyue'><h4 hidden  class="songid">${song.songId}</h4>
	    				                     <a href="#"><span class="glyphicon glyphicon-music"></span></a>
	    				                     </td>
	    				                     <td><a href="#"><span class="glyphicon glyphicon-plus"></span></a></td>
													  <td> <a class="glyphicon glyphicon-save" style="color: rgb(51,122,183)" href="http://192.168.9.248:8080/AlMusic/${song.songlocation}" download="${song.songName}"></a></td>
		
		</tr>
		</c:forEach>
	</tbody>
</table>
 </div>
 
 
			   <div class="pinglun" style="width: 90%;" > 
			   	<h4>&nbsp;</h4>
			   	<h3 style="font-weight:bold;">评论<small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;共1234评论</small></h3>
			   	<div style="border-top: 2px solid red;"></div>
			  </div>
			<!--
            	作者：offline
            	时间：2017-11-12
            	描述：评论开始
            -->
              <div class="pinglunStar" style="width: 90%;" >
       <form>    
    	<div>    
            <p id="face" style="position:absolute;margin-left: 10px;margin-top: 10px;"><img width="55px" height="55px" src="bootstrap/musicimage/mainpageimage/cover.png" class="current" /></p>
            <textarea  class="teratext"   style="margin-top: 15px;width:85px;height:50px; width: 580px;margin-left: 70px;border: 1px solid #D9D9D9;"></textarea>           
    	</div>
        <div class="tr">
            <p>
                <input id="sendBtn" type="button" value="评论" style="background-color: rgb(255,192,159);color: white;float: right;margin-right: 10px;" title="快捷键 Ctrl+Enter" />
            </p>
        </div>
      </form>
            	
   
       <h4>&nbsp;</h4>
       <h5 style="font-weight:bold;">精彩评论</h5>
       <div style="border-top: 1px solid gray;"></div>
        <div id="plh">        
        		<ul class="zhuanjilun">
        		<c:if test="${Albumscomment!=null}">
        		<c:forEach items="${Albumscomment}" var="Albumscomment">
        		<li style="margin-left: -35px;">
        		<div  class="tupian1" style=" float: left;" >
        			<img height="55px" width="55px" src="http://192.168.9.248:8080/AlMusic/${Albumscomment.userImage}"/>
        		</div>	
        		
        		<div id="personpl" style="width: 80%;" >
        		   <div class="userName"><a href="#" style="color: orangered;">${Albumscomment.userName}</a>:<span >${Albumscomment.commentsContent}</span></div> 
        		    <span>${Albumscomment.commentsDate}</span><a id="dianz"><i class="fa fa-thumbs-up"></i></a> <span style="color:#080808;"  class="glyphicon glyphicon-thumbs-up zhuanjidianzan">${Albumscomment.commentzan}        		            		  	    
        		    </span>&nbsp;|&nbsp;<span><a>回复</a></span>
        		</div>
        		</li>
        		</c:forEach>
        		</c:if>
        	</ul>
        	
        	
        </div>
       
       
       
	   </div>

			</div>
				
		
	
		
<!--
	作者：offline
	时间：2017-11-11
	描述：热门推荐结束
-->			
<!--
	作者：offline
	时间：2017-11-12
	描述：右侧的
-->
            <div class="col-md-4 column" style="width:25%;">		
            <div id="youbian" >
            	<span style="font-weight: bold;">热门歌单</span>
            </div>
            <div style="border-top: 2px solid gray;"></div>
               	<span >&nbsp;</span>              
                <ul class="remengedan">
                	<c:forEach items="${requestScope.remengedan}" var="gd">
            		<li>
            			<div id="tupian3" style=" float: left;">
            				<img  width="55px" height="55px"  src="http://192.168.9.248:8080/AlMusic/${gd.playlistImage}"/>
            			</div>
            			<div class="tupianmingzi">
            				<input type="hidden" class="playlistId" value="${gd.playlistId}">
            				<span style="font-size: 10px;color: black;">&nbsp;&nbsp;&nbsp;<a href="#" class="gdn">${gd.playlistName}</a></span><br />
            			</div>
            		</li>
            		</c:forEach>
            	</ul>
            
            
            </div>

						
	     </div>
		</div>
	</div>
</div>


<!--
	作者：offline
	时间：2017-11-13
	描述：底部
-->
    
   










<!--
	作者：offline
	时间：2017-11-11
	描述：热门推荐结束
-->	
	</div>
	 </div>  
	</div>  	
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
   /**
    * 导航栏的点击事件
    */
   $(".lefelist").click(function(){
   	$(this).addClass('navsearch').siblings().removeClass('navsearch');
   })
   $(".daohang").click(function(){
   	$(this).addClass('xcenteroneone').siblings().removeClass('xcenteroneone');
   }) 
   /**
    * 鼠标滑动弹出下拉列表事件
    */
  $(".caret").mouseover(function(){
    $(this).next("ul").slideDown(500);
  });
  $(".dropdown").mouseleave(function(){
    $(this).children("ul").slideUp(500);
  });
   $("#userleave").click(function(){
   		$("#vistor").show();
        $("#userxra").hide();
   })
   $(".tupianxe").click(function(){
   	alert($(this).text());  	 
   })
   
   
   
  /*  
    
	   $(document).on("click",".tupianmingzi",function(){
		   alert("aa");
		   
	   }) */
	   $(".tupianmingzi").click(function(){
		  
		  var playlistId = $(this).find(".playlistId").val();
		  location.href="gedanxiangqing1?playlistId="+playlistId;
	   });
   
   
   
 //音乐播放的歌曲编号传递到父页面
	$(document).on("click",".yinyue",function(){ 
		//这里需要获取这首歌曲的音频地址、图片地址、歌曲名、歌手名、和trackAlbum : "Single" 这里只能用list
		//歌曲的编号
	var a=$(this).find(".songid").text();
   window.parent.$.judgeloginsong(a); 
	});

 
 
	$("#sendBtn").click(function(){
	    var usercomment=$(".teratext").val();
	    var zhuanjiid=parseInt($("#pinglunzhuanjiid").text());
	    if(usercomment!=("")){	
	   			$(".zhuanjilun li").remove();
	   		    $.get("zhuanjipinglun/"+zhuanjiid+"?usercomment="+usercomment,function(zhuajiajax,status){					
	 			$.each(zhuajiajax, function(index,zhuanjicomment) {
	 				$(".zhuanjilun").append("<li style='margin-left: -35px;'>"+
	 		        		"<div  class='tupian1' style=' float: left;' >"+
	 		        			"<img height='55px' width='55px' src='http://192.168.9.248:8080/AlMusic/"+zhuanjicomment.userImage+"' />"+
	 		        		"</div>"+	
	 		        		"<div id='personpl' style='width: 80%;' >"+
	 		        		   "<div class='userName'><a href='#' style='color: orangered;'>"+zhuanjicomment.userName+"</a>:<span >"+zhuanjicomment.commentsContent+"</span></div>"+ 
	 		        		    "<span>"+zhuanjicomment.commentsDate+"</span>  <a id='dianz'><i class='fa fa-thumbs-up'></i></a> <span class='glyphicon glyphicon-thumbs-up'>"+zhuanjicomment.commentzan+"</span>&nbsp;&nbsp;|&nbsp;&nbsp;<span><a>回复</a></span>"+
	 		        		"</div>"+
	 		        		"</li>");  	   	
	 
	 			});	
	 			});	

	    }else{
	    	alert("内容不能为空");
	    }
	    
	    $(".teratext").val("");
	})
	
 
 
   
});


	   
	 
</script>     
</html>
