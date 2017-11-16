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
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/mainpage.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/lunbocss.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap/Musiccss/audio.css"/>
		<title></title>
  
  <script>
  	function tiaozuan(){
  		location.href="Mymusic.jsp";
  	}
  	
  	function tiaozuan1(){
  		location.href="Mainpage.jsp";
  	}
  </script>
	</head>
	<body style="background-color:rgb(245,245,245);">
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
			         	 	A.I.爱音乐			         		
			         	</li>
			        </ul>		   
					</div>
					
					<div class="col-md-6 column xcenter" >
						<div class="col-md-5 xcenterone" >
						 <ul>
						 	<li class="daohang" id="li1" onclick="tiaozuan1()" ><span class="glyphicon glyphicon-home"><a  href="#">首页</a></li>
						 	<li class="daohang" id="li2" onclick="tiaozuan()"><a>我的音乐</a></li>	
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
   	  <div class="col-md-3">  
   	  </div>
   	<!--推荐、排行榜、歌单等-->  
   	  <div class="col-md-5 headertwotwo" >  
      <div class="list lefelist" style="border: none;">
				<a href="tuijpage.jsp" class="list-group" target="vistorcontent">
				<div>						
				推荐
				</div>			
				</a>
	  </div>
	  <div class="list lefelist" style="border: none;">
				<a href="Paihangbang.jsp" class="list-group " target="vistorcontent">
				<div>						
				排行榜
				</div>			
				</a>
	  </div>
	  <div class="list lefelist" style="border: none;">
				<a href="gedan.jsp" class="list-group " target="vistorcontent">
				<div>						
				歌单
				</div>			
				</a>
	  </div>
	  <div class="list lefelist" style="border: none;">
				<a href="singermorepage.jsp" class="list-group " target="vistorcontent">
				<div>						
				歌手
				</div>			
				</a>

	  </div>
	  <div class="list lefelist" style="border: none;">
				<a href="xindieshangjia.jsp" class="list-group " target="vistorcontent">
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
<div class="container" ">
	<div class="row clearfix">
		<div class="col-md-10 column" >	    
		     <iframe id="musicmainpage" name="vistorcontent"
						 scrolling="no"
						src="tuijpage.jsp" width="1400px" height="2200px" scrolling="no"
						frameborder="0">
	     </iframe> 
	             
	</div>  	
</div> 
	
	
	
		
<!--
	作者：offline
	时间：2017-11-11
	描述：音乐播放器开始
-->	


	<div class="audio-box" style="border: 1px solid red;">
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
  
  $.extend({'judgelogin':function(th){	  
    if(th!=null){
    	var funk="keyi";
		$.aaa(funk);
		}
  }});  


$.extend({'aaa':function(funk){
	alert("歌曲列表");
	var song = [
	
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面1.jpg',
			'src' : 'bootstrap/music/第一个清晨.mp3',
			'title' : '陶喆-太平盛世'
		},
		{
			'cover' : 'bootstrap/musicimage/mainpageimage/封面3.jpg',
			'src' : 'bootstrap/music/花田错.mp3',
			'title' : '王力宏-花田错'
		},
		
	];

	var audioFn = audioPlay({
		song : song,
		autoPlay : true  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
	});

	/* 向歌单中添加新曲目，
	 * 第二个参数true为新增后立即播放该曲目，false则不播放
	 * 意思是，当你在听第一首歌的时候，列表还有很多歌没放，但是当你在浏览的网页的歌曲时候，突然发现有立刻想听的歌曲，然后添加列表中，如果为true，则点击
	 * 下一首时，会立刻播放刚刚添加的这首，如果为false则，默认最后播放
	 * 
	 * */
	audioFn.newSong({
		'cover' : 'bootstrap/musicimage/mainpageimage/封面2.jpg',
		'src' : 'bootstrap/music/伯牙绝弦.mp3',
		'title' : '王力宏-伯牙绝弦'
	},false);


	/* 暂停播放 */
	//audioFn.stopAudio();

	/* 开启播放 */
	//audioFn.playAudio();

	/* 选择歌单中索引为3的曲目(索引是从0开始的)，第二个参数true立即播放该曲目，false则不播放 */
	

}});

 });	
</script>
</html>
