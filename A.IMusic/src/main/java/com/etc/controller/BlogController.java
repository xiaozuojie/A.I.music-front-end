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
	 * ��ҳ
	 */
	@RequestMapping(value="/list",method = RequestMethod.GET)
	public String listBlog(Model model)
	{		
		return "Mainpage";
	}
	/**
	 * �Ƽ�ҳ��
	 */
	@RequestMapping(value="/tuijinalist",method = RequestMethod.GET)
	public String listtuijian(Model model)
	{		
		return "tuijpage";
	}
	
	
	
	/**
	 * ���а�ҳ��
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
	 * �赥ҳ��
	 */
	@RequestMapping(value="/gedanlist",method = RequestMethod.GET)
	public String listgedan(Model model)
	{		
		return "gedan";
	}
	/**
	 * ����ҳ��
	 */
	@RequestMapping(value="/singermorepagelist",method = RequestMethod.GET)
	public String listsinger(Model model)
	{		
		return "singermorepage";
	}
	/**
	 * �µ�ר��ҳ��
	 */
	@RequestMapping(value="/xindieshangjialist",method = RequestMethod.GET)
	public String listzhuanji(Model model)
	{		
		return "xindieshangjia";
	}
	
	
	
	
	/**
	 * �ҵ�����
	 */
	@RequestMapping(value="/mymusiclist",method = RequestMethod.GET)
	public String listmymusic(Model model)
	{		
		return "Mymusic";
	}
	/**
	 * �ҵ����ֵ��ҵĸ���
	 */
	@RequestMapping(value="/mymusicsinger",method = RequestMethod.GET)
	public String mymusicsingerlist(Model model)
	{		
		return "Mymusicsinger";
	}
	
	/**
	 * �ҵ����ֵ���ϲ���ĸ���
	 */
	@RequestMapping(value="/mymusicgequ",method = RequestMethod.GET)
	public String mymusicgequlist(Model model)
	{		
		return "Mymusicfaveritemusic";
	}
	
	
	/**
	 * �ҵ����ֵ���ϲ����ר��
	 */
	@RequestMapping(value="/mymusiczhuanji",method = RequestMethod.GET)
	public String mymusiczhuanjilist(Model model)
	{		
		return "Mymusicfaveritezhuaji";
	}
	
	
	
	/**
	 * �ҵ����ֵ��ҵ���Ϣ
	 */
	@RequestMapping(value="/mymusicxiaoxi",method = RequestMethod.GET)
	public String mymusicxiaoxilist(Model model)
	{		
		return "Mymusicxiaoxi";
	}
	
	
}
