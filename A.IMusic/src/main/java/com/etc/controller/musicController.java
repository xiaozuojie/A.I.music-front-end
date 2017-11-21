package com.etc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		list = ss.getSongByPaiHang(20);
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
		if(typename.equals("所有")) {
			listajax=ps.getallplaylistbytypename("");
		}else {
			listajax=ps.getallplaylistbytypename(typename);
		}
	
		return listajax;
	}

	/**
	 * 歌手页面
	 */
	@RequestMapping(value = "/singermorepagelist", method = RequestMethod.GET)
	public String listsinger(Model model) {

		List<Singer> listsingerten=new ArrayList<Singer>();
		List<Singer> listsingerremen=new ArrayList<Singer>();
		//获取前面10个人作为入驻歌手
		listsingerten=sis.getSingerbysten();
		//获取收藏前面的10个人作为热门的歌手
		
		listsingerremen=sis.getSingerbyremen();
		model.addAttribute("listsingerremen",listsingerremen);
		model.addAttribute("listsingerten",listsingerten);		
		return "singermorepage";
	}
	/**
	 * 歌手页面的ajax返回值 所有的入驻歌手信息
	 * @param typename
	 * @return
	 */
	@RequestMapping(value = "/geshouall", method = RequestMethod.GET)
	@ResponseBody
	public List<Singer> listSingerallsinger(){
		List<Singer> listallsinger=new ArrayList<Singer>();
		listallsinger=sis.getallsinger();
		return listallsinger;
	}
/**
 * 歌手页面的ajax 返回值是所有的推荐歌手的信息
 * 
 */
	@RequestMapping(value="/tuijiandegeshouxinxi", method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> listgetallsingertuijian(){
		List<Singer> listbyshouchang=new ArrayList<Singer>();		
		listbyshouchang=sis.getallSingerbyshouchang();
		return listbyshouchang;
	}
	/**
	 * 歌曲页面跳转到详情页面
	 */
	@RequestMapping(value="/xiangqingjiemian",method=RequestMethod.GET)
	public String listgetallsingerinfo(int op,Model model){
		List<Singer> listSinger=new ArrayList<Singer>();
		List<Song> listsong=new ArrayList<Song>();
	
		//获取歌手的基本信息
	    listSinger=sis.getallSinerbyId(op);
	 
		//获取歌手的编号
		String Singername=listSinger.get(0).getSingerName();
	    //获取歌手的热门歌曲信息
        listsong=ss.getsongbysingerName(Singername);
	
	    model.addAttribute("listsong", listsong);
		model.addAttribute("listSinger", listSinger);
		return "singermore";
	}
	/**
	 * 歌手详情界面的ajax返回值(热门的歌曲)
	 */
	
	@RequestMapping(value="/remendanqu",method=RequestMethod.GET)
	@ResponseBody
	public List<Song> listgetallsingerturnyourself(String a){
		List<Song> listsong=new ArrayList<Song>();
		//根据歌手的姓名来获取歌手的热门歌曲
		listsong=ss.getsongbysingerName(a);
		return listsong;
	}
	/**
	 * 歌手详情界面的ajax返回值(歌手的个人信息 个人简介)
	 */
	
	@RequestMapping(value="/remendanqu123",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> listgetallsingertings(String a){
		List<Singer> listsingername=new ArrayList<Singer>();
		//根据歌手的姓名来获取歌手个人简介
		listsingername=sis.getallsingerinfobysingername(a);
		return listsingername;
	}	
	/**
	 * 歌手详情界面的ajax返回值(歌手的专辑信息)
	 */
	
	@RequestMapping(value="/zhuanjixinxi",method=RequestMethod.GET)
	@ResponseBody
	public List<Albums> listgetallzhuanji(String a){
		List<Albums> listgetallzhuanji=new ArrayList<Albums>();
		//根据歌手的姓名来获取歌手个人简介
		listgetallzhuanji=as.getallalbumsbysingername(a);
		return listgetallzhuanji;
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
	

	/**
	 * 获取收藏数量前十的歌曲作为排行榜前十
	 */
	@RequestMapping(value = "/tuijianpaihang", method = RequestMethod.GET)
	@ResponseBody
	public List<Song> getSongByPaiHang() {
		List<Song> biaoshenlist = ss.getSongByPaiHang(10);
		return biaoshenlist;
	}

	/**
	 * 获取新歌榜前十（倒序前十）
	 */
	@RequestMapping(value = "/tuijiannewsong", method = RequestMethod.GET)
	@ResponseBody
	public List<Song> getNewSong() {
		List<Song> newsonglist = ss.getNewSong(10);
		return newsonglist;
	}
	
	/**
	 * 获取新歌榜前十（倒序前十）
	 */
	@RequestMapping(value = "/paihangnewsong", method = RequestMethod.GET)
	@ResponseBody
	public List<Song> getPaihangNewSong() {
		List<Song> newsonglist = ss.getNewSong(20);
		return newsonglist;
	}
	
	/**
	 * 获取收藏数量前十的歌曲作为排行榜前十
	 */
	@RequestMapping(value = "/paihangbiaoshen", method = RequestMethod.GET)
	@ResponseBody
	public List<Song> getSongByBiaoshen() {
		List<Song> biaoshenlist = ss.getSongByPaiHang(20);
		return biaoshenlist;
	}
	
}
