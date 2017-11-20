package com.etc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.etc.entity.Song;
import com.etc.service.BlogService;
import com.etc.service.SongService;


@Controller
public class BlogController {

	@Resource
	private BlogService bs;
	
	@Resource
	private SongService ss;
	/**
	 * 首页
	 */
	@RequestMapping(value="/list",method = RequestMethod.GET)
	public String listBlog(Model model)
	{		
		return "Mainpage";
	}
	/**
	 * 推荐页面
	 */
	@RequestMapping(value="/tuijinalist",method = RequestMethod.GET)
	public String listtuijian(Model model)
	{		
		return "tuijpage";
	}
	
	
	
	/**
	 * 排行榜页面
	 */
	@RequestMapping(value="/paihanglist",method = RequestMethod.GET)
	public String listpaihang(Model model)
	{	List<Song>  list=new ArrayList<Song>();
 		list=ss.getsong();
 		System.out.println(list);
 		model.addAttribute("list", list);
		return "Paihangbang";
	}
	

	
	
	/**
	 * 歌单页面
	 */
	@RequestMapping(value="/gedanlist",method = RequestMethod.GET)
	public String listgedan(Model model)
	{		
		return "gedan";
	}
	/**
	 * 歌手页面
	 */
	@RequestMapping(value="/singermorepagelist",method = RequestMethod.GET)
	public String listsinger(Model model)
	{		
		return "singermorepage";
	}
	/**
	 * 新碟专辑页面
	 */
	@RequestMapping(value="/xindieshangjialist",method = RequestMethod.GET)
	public String listzhuanji(Model model)
	{		
		return "xindieshangjia";
	}
	
	
	
	
	/**
	 * 我的音乐
	 */
	@RequestMapping(value="/mymusiclist",method = RequestMethod.GET)
	public String listmymusic(Model model)
	{		
		return "Mymusic";
	}
	/**
	 * 我的音乐到我的歌手
	 */
	@RequestMapping(value="/mymusicsinger",method = RequestMethod.GET)
	public String mymusicsingerlist(Model model)
	{		
		return "Mymusicsinger";
	}
	
	/**
	 * 我的音乐到我喜欢的歌曲
	 */
	@RequestMapping(value="/mymusicgequ",method = RequestMethod.GET)
	public String mymusicgequlist(Model model)
	{		
		return "Mymusicfaveritemusic";
	}
	
	
	/**
	 * 我的音乐到我喜欢的专辑
	 */
	@RequestMapping(value="/mymusiczhuanji",method = RequestMethod.GET)
	public String mymusiczhuanjilist(Model model)
	{		
		return "Mymusicfaveritezhuaji";
	}
	
	
	
	/**
	 * 我的音乐到我的消息
	 */
	@RequestMapping(value="/mymusicxiaoxi",method = RequestMethod.GET)
	public String mymusicxiaoxilist(Model model)
	{		
		return "Mymusicxiaoxi";
	}
	
	
}
