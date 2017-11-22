<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/zhuanji.css"/>
<style type="text/css">
     .dianzanred{
			color: red;
		}

</style>
    
	</head>

	<body onload="init()" style="background-color: rgb(245,245,245);">
<!--头部logo以及导航栏开始-->
		
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
				<c:if test="${albumsmore!=null}">
				<c:forEach items="${albumsmore}" var="zhuanji">
				<div  class="zhuyao"  style="width: 90%;float: right; height: 40px; ">
					<img id="tupian4" width="170px" height="170px" src="http://192.168.9.248:8080/AlMusic/${zhuanji.albumsImage}"/>
					<div id="tupian4-1" >
          <span class="glyphicon glyphicon-align-right"style="  color: red;"></span>
     <h3>${zhuanji.albumsName}</h3><br />
     <h5 id="pinglunzhuanjiid">${zhuanji.albumsId}</h5>
						 <span>歌手:&nbsp;&nbsp;&nbsp;&nbsp; <a>${zhuanji.singerName}</a> </span><br />
						 <span>发行时间:&nbsp;&nbsp;&nbsp;&nbsp; ${zhuanji.issueTime}</span><br />
						 <button type="button" class="btn btn-default btn-sm "><i class="fa fa-caret-square-o-right fa-inverse-red">播放</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-plus-square">收藏(${zhuanji.collectionnumber})</i></button>
						 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-arrow-circle-down">下载</i></button>
					</div>
		           
			   </div>
			   
			    <div id="content"  class="zhuyao1"  style="width: 90%;float: right;">
			    <h5 style="font-weight:bold;">专辑介绍:</h5>${zhuanji.albumsProfile}
			<span id="wenzi1"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 </span></div>
			 </c:forEach>
			 </c:if>
			  <div class="yllist" style="width: 90%;float: right;">
			  	<h4>&nbsp;</h4>
			  	<h3 style="font-weight:bold;">包含歌曲列表<small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</small></h3>
			  	<div style="border-top: 2px solid red;"></div>
			  </div>
			  <!--
              	作者：offline
              	时间：2017-11-12
              	描述：歌曲的表格
              -->
			  <div class="musicList" style="width: 90%;" >
			  	<table class="table" >
	<thead>
		<tr>
			<th>歌曲编号</th>
			<th>歌曲编曲</th>
			<th>歌曲时长</th>
			<th>歌手</th>
		</tr>
	</thead>
	<tbody>
	<c:if test="${albumssinger!=null}">
	<c:forEach items="${albumssinger}" var="zhuanjige" varStatus="xh">
		<tr class="succes">
			<td>${xh.count}</td>
			<td>${zhuanjige.songName}</td>
			<td>${zhuanjige.songTime}</td>
			<td>${zhuanjige.singerName}</td>
		</tr>
	</c:forEach>
	</c:if>
	</tbody>
</table>
 </div>
 
 
			   <div class="pinglun" style="width: 90%;" > 
			   	<h4>&nbsp;</h4>
			   	<h3 style="font-weight:bold;">评论<small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</small></h3>
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
            	<span style="font-weight: bold;">相关热门专辑</span> <span id="quanbu"><a>全部</a></span>
            </div>
            <div style="border-top: 1px solid gray;"></div>
               	<span >&nbsp;</span>              
                   <ul >
                   <c:if test="${albumsother!=null}">
                   <c:forEach items="${albumsother}" var="albumsother">
            	<li style="margin-left: -25px;">
            		<div id="tupian3" style=" float: left;">
            			<img  width="55px" height="55px"  src="http://192.168.9.248:8080/AlMusic/${albumsother.albumsImage}"/>
            		</div>
            		<div id="tupianmingzi">
            			<span style="margin-top: 5px;">&nbsp;&nbsp;&nbsp;&nbsp;${albumsother.albumsName}</span><br /><br />
            			<span style="margin-left: 20px;">${albumsother.issueTime}</span>
            		</div>            		
            	</li>
            	</c:forEach>
            </c:if>
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
   	$(".zhuanjidianzan").hover().css("cursor", "pointer");
   	$(".commentid").hide();
   	$("#pinglunzhuanjiid").hide();
   	
		$(".zhuanjidianzan").click(function(){
			if ($(this).css("color")=="#080808") {
				$(this).css("color", "#C12E2A");
			}else{
				$(this).css("color", "#080808");
			}	
		})
	$("#sendBtn").click(function(){
		    var usercomment=$(".teratext").val();
		    var zhuanjiid=parseInt($("#pinglunzhuanjiid").text());
		    if(usercomment!=("")){	
		            alert(zhuanjiid);
				    alert(usercomment);
		   			$(".zhuanjilun li").remove();
		   		    $.get("zhuanjipinglun/"+zhuanjiid+"?usercomment="+usercomment,function(zhuajiajax,status){					
		 			$.each(zhuajiajax, function(index,zhuanjicomment) {
		 				$(".zhuanjilun").append("<li style='margin-left: -35px;'>"+
		 		        		"<div  class='tupian1' style=' float: left;' >"+
		 		        			"<img height='55px' width='55px' src='bootstrap/musicimage/mainpageimage/cover.png'/>"+
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
	  
   	})

});

/**style="color:#080808;"
 * 专辑介绍的文字展开和收起
 */
 function init(){  
      var len =200;      //默认显示字数  
      var ctn = document.getElementById("content");  //获取div对象  
      var content = ctn.innerHTML;                   //获取div里的内容  
      
      //alert(content);  
      var span = document.createElement("span");     //创建<span>元素  
      var a = document.createElement("a");           //创建<a>元素  
      span.innerHTML = content.substring(0,len);     //span里的内容为content的前len个字符  
      a.innerHTML = content.length>len?"....展开":"";  //设置a的显示  
      a.href = "javascript:void(0)";  
      a.onclick = function(){  
          if(a.innerHTML.indexOf("展开")>0){    //如果a中含有"展开"则显示"收起"  
            a.innerHTML = "收起";  
            span.innerHTML = content;  
          }else{  
              a.innerHTML = "...展开";  
              span.innerHTML = content.substring(0,len);  
          }  
      }  
      // 设置div内容为空，span元素 a元素加入到div中  
      ctn.innerHTML = "";  
      ctn.appendChild(span);  
      ctn.appendChild(a);  
        
   }  
</script>     
</html>
