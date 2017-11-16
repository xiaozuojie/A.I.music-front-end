<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="bootstrap/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/musicjs/script.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/musicjs/audio.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap/js/jquery.hoveraccordion.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/mymusic.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/audio.css"/>
		<title></title>
  <script>

  	function tiaozuan1(){
  		location.href="Mainpage.jsp";
  	}
  </script>
	</head>
	<body >
<!--头部logo以及导航栏开始-->
		<div id="header"  >
		 <div id="headerone">	
			<div class="container">
				<div class="row clearfix">
					
					<div class="col-md-2 logo" >   
			        <ul>
			         	<li>
			         	<img src="bootstrap/musicimage/mainpageimage/musiclogp.png" style="height: 41px;width: 41px;"/>					
			         	</li>
			         	<li>			    
			         	 	A.I.爱音乐		         		
			         	</li>
			        </ul>		   
					</div>
					
					<div class="col-md-6 column xcenter" >
						<div class="col-md-5 xcenterone" >
						 <ul>
						 	<li class="daohang daohang2" onclick="tiaozuan1()"><span class="glyphicon glyphicon-home"><a>首页</a></li>
						 	<li class="daohang daohang1" onclick="tiaozuan()"><a>我的音乐</a></li>	
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
 <div class="arrow-up">
     <!--向上的三角-->
</div>

   <div id="headertwo">
   	 
  
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
<div class="container"  id="main1">
	<div class="row clearfix">
		<div class="col-md-12 column" style=" width: 83%; ">
			
					<!--
	作者：offline
	时间：2017-11-11
	描述：左侧的内容
-->	
			
		<div class="col-md-4 column" id="left" >
		<div class="container-fluid">


		<div class="span12" id="left1">
			<div class="accordion" id="accordion-858200">
				<div class="accordion-group">
					<div class="accordion-heading">
					<a href="Mymusic1singer.jsp" target="mymusic" ><img src="bootstrap/musicimage/mymusic/4.png" style="width: 50px; height: 40px;"/>我的歌手</a>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
		<a href="Mymusic2faverite.jsp" target="mymusic" class="accordion-toggle collapsed" > <img src="bootstrap/musicimage/mymusic/3.png" style="width: 45px; height: 40px;"/>我喜欢的音乐</a>
					</div>
				
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a href="Mymusic3faverite.jsp" target="mymusic"> <img src="bootstrap/musicimage/mymusic/5.png" style="width: 40px; height: 35px;" hr/>  收藏的专辑</a>
					</div>
					
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						 <a  href="Mymusic4image.jsp" target="mymusic"><img src="bootstrap/musicimage/mymusic/6.png" style="width: 45px; height: 40px;"/>我的消息</a>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div>
				
		<!--
	作者：offline
	时间：2017-11-11
	描述：左侧的内容结束
-->				
		
		<div class="col-md-1 column" id="midden">		 
			</div>
	
<!--
	作者：offline
	时间：2017-11-12
	描述：右侧的iframe
-->
            <div class="col-md-7 column" id="main2" >
            	
            	<iframe src="Mymusic4image.jsp" name="mymusic" width="100%" height="100%"id="iframepage" frameborder="0" scrolling="no"  onLoad="iFrameHeight()"></iframe>
            </div>

						
	     </div>
		</div>
	</div>
</div>
















	</div>
	 </div>  
	</div>  	
</div> 
	
	
	
	
<!--
	作者：offline
	时间：2017-11-11
	描述：音乐播放器开始
-->	


	<div class="audio-box">
		<div class="audio-container">
			<div class="audio-view">
				<div class="audio-cover" ></div>
				<div class="audio-body">
					<h3 class="audio-title">未知歌曲</h3>
					<div class="audio-backs">
						<div class="audio-this-time">00:00</div>
						<div class="audio-count-time">00:00</div>
						<div class="audio-setbacks">
							<i class="audio-this-setbacks">
								<span class="audio-backs-btn"></span>
							</i>
							<span class="audio-cache-setbacks">
							</span>
						</div>
					</div>
				</div>
				<div class="audio-btn">
					<div class="audio-select">
						<div class="audio-prev"></div>
						<div class="audio-play"></div>
						<div class="audio-next"></div>
						<div class="audio-menu"></div>
						<div class="audio-volume"></div>
					</div>
					<div class="audio-set-volume">
						<div class="volume-box">
							<i><span></span></i>
						</div>
					</div>
					<div class="audio-list">
						<div class="audio-list-head">
							<p>歌单</p>
							<span class="menu-close">关闭</span>
						</div>
						<ul class="audio-inline">
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>





<!--
	作者：offline
	时间：2017-11-11
	描述：音乐播放器结束
-->	
</body>
	
<script type="text/javascript"> 
$(document).ready(function(){
	$('#accoradion01').hoverAccordion({
		activateItem:5,	     //默认下设置第4个滑动门展开	 
		onClickOnly:false,   //点击或悬停触发"false"、"true" 
		speed:'fast'         //滑动门切换过渡效果"fast"、"slow"、"normal"
	}); 
});
</script>
<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}
/* accoradion */

</style>
<script type="text/javascript">
   	$(function(){
  
   	$("#vistor").hide();
    $("#userxra").show();
   	$(".logo").hover().css("cursor", "pointer");
   	$(".daohang").hover().css("cursor", "pointer"); 
   	$(".xialabioa").hover().css("cursor", "pointer"); 
   	
   	$(".daohang1").addClass("xcenteroneone");//先设置推荐是点击的	 	
    $(".lefelist").first().addClass("navsearch");//先设置推荐是点击的	
   /**
    * 导航栏的点击事件
    */
   $(".lefelist").click(function(){
   	$(this).addClass('navsearch').siblings().removeClass('navsearch');

   })
   $(".daohang").click(function(){
   	$(this).addClass('xcenteroneone').siblings().removeClass('xcenteroneone');
   	$(".arrow-up1").hide();
   	$(".arrow-up").show();
   }) 
 /*   $(".daohang1").click(function(){
   	$(".arrow-up").hide();
   	$(".arrow-up1").show();
   })*/ 
   $(".daohang2").click(function(){
   	$(".arrow-up1").hide();
   	$(".arrow-up").show();
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
   
   
});
/**
 * 播放器点击事件
 */
$(function(){
/**
 * 添加歌曲事件，可以陆续添加
 */
	var song = [
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面1.jpg',
			'src' : 'bootstrap/music/王力宏-第一个清晨.mp3',
			'title' : '王力宏-第一个清晨'
		},
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面3.jpg',
			'src' : 'bootstrap/music/薛之谦 - 意外.mp3',
			'title' : '薛之谦 - 意外'
		},
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面4.jpg',
			'src' : 'bootstrap/music/王力宏-花田错.mp3',
			'title' : '王力宏-花田错'
		},	
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面5.jpg',
			'src' : 'bootstrap/music/陶喆 - Angel.mp3',
			'title' : '陶喆 - Angel'
		},	
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面6.jpg',
			'src' : 'bootstrap/music/陶喆 - Melody.mp3',
			'title' : '陶喆 - Melody'
		},	
	];

	var audioFn = audioPlay({
		song : song,
		autoPlay : false  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
	});

	/* 向歌单中添加新曲目，
	 * 第二个参数true为新增后立即播放该曲目，false则不播放
	 * 意识是，当你在听第一首歌的时候，列表还有很多歌没放，但是当你在浏览的网页的歌曲时候，突然发现有立刻想听的歌曲，然后添加列表中，如果为true，则点击
	 * 下一首时，会立刻播放刚刚添加的这首，如果为false则，默认最后播放
	 * 
	 * */
	audioFn.newSong({
		'cover' : 'bootstrap/musicimage/mainpageimage/封面2.jpg',
		'src' : 'bootstrap/music/王力宏-大城小爱.mp3',
		'title' : '王力宏-大城小爱'
	},false);

	/* 暂停播放 */
	//audioFn.stopAudio();

	/* 开启播放 */
	//audioFn.playAudio();

	/* 选择歌单中索引为3的曲目(索引是从0开始的)，第二个参数true立即播放该曲目，false则不播放 */
	
	//audioFn.selectMenu(3,true);

	/* 查看歌单中的曲目 */
	//console.log(audioFn.song);

	/* 当前播放曲目的对象 */
	//console.log(audioFn.audio);
});
	

	
</script>
</html>
