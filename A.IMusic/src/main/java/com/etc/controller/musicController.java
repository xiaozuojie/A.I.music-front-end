package com.etc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.etc.entity.Albums;
import com.etc.entity.Playlist;
import com.etc.entity.Song;
import com.etc.service.AlbumsService;
import com.etc.service.PlayListService;
import com.etc.service.SongService;



@Controller
public class musicController {
	@Resource
    private AlbumsService as;
	@Resource
	private PlayListService ps;
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
	{	//�����ղ��ʻ�ȡǰ����ר��	
		List<Albums> listzhuanjinumber=new ArrayList<Albums>();
		List<Albums> alllistzhuanji=as.getallalbums();	
		if(alllistzhuanji.size()>6) {
			listzhuanjinumber=alllistzhuanji.subList(0, 6);
		}
		//���շ���ʱ���ȡ����ר��
		List<Albums>listzhuanjitime=new ArrayList<Albums>();
		List<Albums> alllistzhuanjiti=as.getallalbumstime();
		if(alllistzhuanjiti.size()>5) {
			listzhuanjitime=alllistzhuanjiti.subList(0, 5);
		}
		//���ո赥���ղ�������ȡǰ10�Ÿ赥
		List<Playlist> listgedannumber=new ArrayList<Playlist>();
		List<Playlist> listgedan=ps.getallplaylist();
		if(listgedan.size()>10) {
			listgedannumber=listgedan.subList(0, 10);
		}else {
			listgedannumber=listgedan.subList(0, listgedan.size());
		}
		model.addAttribute("listzhuanjinumber", listzhuanjinumber);
		model.addAttribute("listzhuanjitime", listzhuanjitime);
		model.addAttribute("listgedannumber", listgedannumber);
		return "tuijpage";
	}
	/**
	 * ���а�ҳ��
	 */
	@RequestMapping(value="/paihanglist",method = RequestMethod.GET)
	public String listpaihang(Model model)
	{	List<Song>  list=new ArrayList<Song>();
 		list=ss.getsong();
 		model.addAttribute("list", list);
		return "Paihangbang";
	}
	
	/**
	 * �赥ҳ��
	 */
	@RequestMapping(value = "/gedanlist",method = RequestMethod.GET)
	public String listgedan(Model model)
	{	
		List<Playlist> listgedan=ps.getallplaylistbytypename("");
		model.addAttribute("listgedan", listgedan);
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
		List<Albums>listzhuanjitime=new ArrayList<Albums>();
		List<Albums> alllistzhuanjiti=as.getallalbumstime();
		model.addAttribute("alllistzhuanjiti", alllistzhuanjiti);
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
