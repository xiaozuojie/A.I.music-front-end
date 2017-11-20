package com.etc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.etc.entity.Albums;
import com.etc.entity.Playlist;
import com.etc.entity.Singer;
import com.etc.entity.Song;
import com.etc.service.AlbumsService;
import com.etc.service.PlayListService;
import com.etc.service.SingerService;
import com.etc.service.SongService;

@Controller
public class musicController {
	@Resource
	private AlbumsService as;
	@Resource
	private PlayListService ps;
	@Resource
	private SongService ss;
	@Resource
	private SingerService sis;

	/**
	 * 首页
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listBlog(Model model) {
		return "Mainpage";
	}

	/**
	 * 推荐页面
	 */
	@RequestMapping(value = "/tuijinalist", method = RequestMethod.GET)
	public String listtuijian(Model model) { // 按照收藏率获取前七张专辑
		List<Albums> listzhuanjinumber = new ArrayList<Albums>();
		List<Albums> alllistzhuanji = as.getallalbums();
		if (alllistzhuanji.size() > 6) {
			listzhuanjinumber = alllistzhuanji.subList(0, 6);
		}
		// 按照发布时间获取五张专辑
		List<Albums> listzhuanjitime = new ArrayList<Albums>();
		List<Albums> alllistzhuanjiti = as.getallalbumstime();
		if (alllistzhuanjiti.size() > 5) {
			listzhuanjitime = alllistzhuanjiti.subList(0, 5);
		}
		// 按照歌单的收藏数，获取前10张歌单
		List<Playlist> listgedannumber = new ArrayList<Playlist>();
		List<Playlist> listgedan = ps.getallplaylist();
		if (listgedan.size() > 10) {
			listgedannumber = listgedan.subList(0, 10);
		} else {
			listgedannumber = listgedan.subList(0, listgedan.size());
		}
		// 入驻歌手获取前面6个人
		List<Singer> listsinger=new ArrayList<Singer>();
		listsinger=sis.getSingerbysix();
		if (listsinger.size()<5) {
			listsinger = listsinger.subList(0, listsinger.size());
		}
		
		model.addAttribute("listsinger", listsinger);
		model.addAttribute("listzhuanjinumber", listzhuanjinumber);
		model.addAttribute("listzhuanjitime", listzhuanjitime);
		model.addAttribute("listgedannumber", listgedannumber);
		return "tuijpage";
	}

	/**
	 * 排行榜页面
	 */
	@RequestMapping(value = "/paihanglist", method = RequestMethod.GET)
	public String listpaihang(Model model) {
		List<Song> list = new ArrayList<Song>();
		list = ss.getsong();
		model.addAttribute("list", list);
		return "Paihangbang";
	}

	/**
	 * 歌单页面（推荐页面点击时）
	 */
	@RequestMapping(value = "/gedanlist", method = RequestMethod.GET)
	public String listgedan(Model model) {
		List<Playlist> listgedan = ps.getallplaylistbytypename("");
		model.addAttribute("listgedan", listgedan);
		return "gedan";
	}

	/**
	 * 歌单页面（ajax点击时）
	 */
	@RequestMapping(value = "/gedanlist/{typename}", method = RequestMethod.GET)
	@ResponseBody

public List<Playlist> listgedanajax(@PathVariable(value="typename")String typename)
	{	
		List<Playlist> listajax=new ArrayList<Playlist>();

		System.out.println("到了");
		if(typename.equals("所有")) {
			listajax=ps.getallplaylistbytypename("");
		}else {
			listajax=ps.getallplaylistbytypename(typename);
		}
		System.out.println(listajax);
		return listajax;
	}

	/**
	 * 歌手页面
	 */
	@RequestMapping(value = "/singermorepagelist", method = RequestMethod.GET)
	public String listsinger(Model model) {
		return "singermorepage";
	}

	/**
	 * 新碟专辑页面
	 */
	@RequestMapping(value = "/xindieshangjialist", method = RequestMethod.GET)
	public String listzhuanji(Model model) {
		List<Albums> listzhuanjitime = new ArrayList<Albums>();
		List<Albums> alllistzhuanjiti = as.getallalbumstime();
		model.addAttribute("alllistzhuanjiti", alllistzhuanjiti);
		return "xindieshangjia";
	}

	/**
	 * 我的音乐
	 */
	@RequestMapping(value = "/mymusiclist", method = RequestMethod.GET)
	public String listmymusic(Model model) {
		return "Mymusic";
	}

	/**
	 * 我的音乐到我的歌手
	 */
	@RequestMapping(value = "/mymusicsinger", method = RequestMethod.GET)
	public String mymusicsingerlist(Model model) {
		return "Mymusicsinger";
	}

	/**
	 * 我的音乐到我喜欢的歌曲
	 */
	@RequestMapping(value = "/mymusicgequ", method = RequestMethod.GET)
	public String mymusicgequlist(Model model) {
		return "Mymusicfaveritemusic";
	}

	/**
	 * 我的音乐到我喜欢的专辑
	 */
	@RequestMapping(value = "/mymusiczhuanji", method = RequestMethod.GET)
	public String mymusiczhuanjilist(Model model) {
		return "Mymusicfaveritezhuaji";
	}

	/**
	 * 我的音乐到我的消息
	 */
	@RequestMapping(value = "/mymusicxiaoxi", method = RequestMethod.GET)
	public String mymusicxiaoxilist(Model model) {
		return "Mymusicxiaoxi";
	}

	/**
	 * 注册页面
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String listregister(Model model) {
		return "register";
	}

	/**
	 * 个人中心界面
	 */

	@RequestMapping(value = "/gerenzhongxin", method = RequestMethod.GET)
	public String gerenzhongxin(Model model) {
		return "gerenzhongxin";
	}

}
