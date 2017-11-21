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
	 * ��ҳ
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listBlog(Model model) {
		return "Mainpage";
	}

	/**
	 * �Ƽ�ҳ��
	 */
	@RequestMapping(value = "/tuijinalist", method = RequestMethod.GET)
	public String listtuijian(Model model) { // �����ղ��ʻ�ȡǰ����ר��
		List<Albums> listzhuanjinumber = new ArrayList<Albums>();
		List<Albums> alllistzhuanji = as.getallalbums();
		if (alllistzhuanji.size() > 6) {
			listzhuanjinumber = alllistzhuanji.subList(0, 6);
		}
		// ���շ���ʱ���ȡ����ר��
		List<Albums> listzhuanjitime = new ArrayList<Albums>();
		List<Albums> alllistzhuanjiti = as.getallalbumstime();
		if (alllistzhuanjiti.size() > 5) {
			listzhuanjitime = alllistzhuanjiti.subList(0, 5);
		}
		// ���ո赥���ղ�������ȡǰ10�Ÿ赥
		List<Playlist> listgedannumber = new ArrayList<Playlist>();
		List<Playlist> listgedan = ps.getallplaylist();
		if (listgedan.size() > 10) {
			listgedannumber = listgedan.subList(0, 10);
		} else {
			listgedannumber = listgedan.subList(0, listgedan.size());
		}
		// ��פ���ֻ�ȡǰ��6����
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
	 * ���а�ҳ��
	 */
	@RequestMapping(value = "/paihanglist", method = RequestMethod.GET)
	public String listpaihang(Model model) {
		List<Song> list = new ArrayList<Song>();
		list = ss.getSongByPaiHang(20);
		model.addAttribute("list", list);
		return "Paihangbang";
	}

	/**
	 * �赥ҳ�棨�Ƽ�ҳ����ʱ��
	 */
	@RequestMapping(value = "/gedanlist", method = RequestMethod.GET)
	public String listgedan(Model model) {
		List<Playlist> listgedan = ps.getallplaylistbytypename("");
		model.addAttribute("listgedan", listgedan);
		return "gedan";
	}

	/**
	 * �赥ҳ�棨ajax���ʱ��
	 */
	@RequestMapping(value = "/gedanlist/{typename}", method = RequestMethod.GET)
	@ResponseBody

public List<Playlist> listgedanajax(@PathVariable(value="typename")String typename)
	{	
		List<Playlist> listajax=new ArrayList<Playlist>();
		if(typename.equals("����")) {
			listajax=ps.getallplaylistbytypename("");
		}else {
			listajax=ps.getallplaylistbytypename(typename);
		}
	
		return listajax;
	}

	/**
	 * ����ҳ��
	 */
	@RequestMapping(value = "/singermorepagelist", method = RequestMethod.GET)
	public String listsinger(Model model) {

		List<Singer> listsingerten=new ArrayList<Singer>();
		List<Singer> listsingerremen=new ArrayList<Singer>();
		//��ȡǰ��10������Ϊ��פ����
		listsingerten=sis.getSingerbysten();
		//��ȡ�ղ�ǰ���10������Ϊ���ŵĸ���
		
		listsingerremen=sis.getSingerbyremen();
		model.addAttribute("listsingerremen",listsingerremen);
		model.addAttribute("listsingerten",listsingerten);		
		return "singermorepage";
	}
	/**
	 * ����ҳ���ajax����ֵ ���е���פ������Ϣ
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
 * ����ҳ���ajax ����ֵ�����е��Ƽ����ֵ���Ϣ
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
	 * ����ҳ����ת������ҳ��
	 */
	@RequestMapping(value="/xiangqingjiemian",method=RequestMethod.GET)
	public String listgetallsingerinfo(int op,Model model){
		List<Singer> listSinger=new ArrayList<Singer>();
		List<Song> listsong=new ArrayList<Song>();
	
		//��ȡ���ֵĻ�����Ϣ
	    listSinger=sis.getallSinerbyId(op);
	 
		//��ȡ���ֵı��
		String Singername=listSinger.get(0).getSingerName();
	    //��ȡ���ֵ����Ÿ�����Ϣ
        listsong=ss.getsongbysingerName(Singername);
	
	    model.addAttribute("listsong", listsong);
		model.addAttribute("listSinger", listSinger);
		return "singermore";
	}
	/**
	 * ������������ajax����ֵ(���ŵĸ���)
	 */
	
	@RequestMapping(value="/remendanqu",method=RequestMethod.GET)
	@ResponseBody
	public List<Song> listgetallsingerturnyourself(String a){
		List<Song> listsong=new ArrayList<Song>();
		//���ݸ��ֵ���������ȡ���ֵ����Ÿ���
		listsong=ss.getsongbysingerName(a);
		return listsong;
	}
	/**
	 * ������������ajax����ֵ(���ֵĸ�����Ϣ ���˼��)
	 */
	
	@RequestMapping(value="/remendanqu123",method=RequestMethod.GET)
	@ResponseBody
	public List<Singer> listgetallsingertings(String a){
		List<Singer> listsingername=new ArrayList<Singer>();
		//���ݸ��ֵ���������ȡ���ָ��˼��
		listsingername=sis.getallsingerinfobysingername(a);
		return listsingername;
	}	
	/**
	 * ������������ajax����ֵ(���ֵ�ר����Ϣ)
	 */
	
	@RequestMapping(value="/zhuanjixinxi",method=RequestMethod.GET)
	@ResponseBody
	public List<Albums> listgetallzhuanji(String a){
		List<Albums> listgetallzhuanji=new ArrayList<Albums>();
		//���ݸ��ֵ���������ȡ���ָ��˼��
		listgetallzhuanji=as.getallalbumsbysingername(a);
		return listgetallzhuanji;
	}	
	
	
	
	/**
	 * �µ�ר��ҳ��
	 */
	@RequestMapping(value = "/xindieshangjialist", method = RequestMethod.GET)
	public String listzhuanji(Model model) {
		List<Albums> listzhuanjitime = new ArrayList<Albums>();
		List<Albums> alllistzhuanjiti = as.getallalbumstime();
		model.addAttribute("alllistzhuanjiti", alllistzhuanjiti);
		return "xindieshangjia";
	}

	/**
	 * �ҵ�����
	 */
	@RequestMapping(value = "/mymusiclist", method = RequestMethod.GET)
	public String listmymusic(Model model) {
		return "Mymusic";
	}

	/**
	 * �ҵ����ֵ��ҵĸ���
	 */
	@RequestMapping(value = "/mymusicsinger", method = RequestMethod.GET)
	public String mymusicsingerlist(Model model) {
		return "Mymusicsinger";
	}

	/**
	 * �ҵ����ֵ���ϲ���ĸ���
	 */
	@RequestMapping(value = "/mymusicgequ", method = RequestMethod.GET)
	public String mymusicgequlist(Model model) {
		return "Mymusicfaveritemusic";
	}

	/**
	 * �ҵ����ֵ���ϲ����ר��
	 */
	@RequestMapping(value = "/mymusiczhuanji", method = RequestMethod.GET)
	public String mymusiczhuanjilist(Model model) {
		return "Mymusicfaveritezhuaji";
	}

	/**
	 * �ҵ����ֵ��ҵ���Ϣ
	 */
	@RequestMapping(value = "/mymusicxiaoxi", method = RequestMethod.GET)
	public String mymusicxiaoxilist(Model model) {
		return "Mymusicxiaoxi";
	}

	/**
	 * ע��ҳ��
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String listregister(Model model) {
		return "register";
	}

	/**
	 * �������Ľ���
	 */

	@RequestMapping(value = "/gerenzhongxin", method = RequestMethod.GET)
	public String gerenzhongxin(Model model) {
		return "gerenzhongxin";
	}
	

	/**
	 * ��ȡ�ղ�����ǰʮ�ĸ�����Ϊ���а�ǰʮ
	 */
	@RequestMapping(value = "/tuijianpaihang", method = RequestMethod.GET)
	@ResponseBody
	public List<Song> getSongByPaiHang() {
		List<Song> biaoshenlist = ss.getSongByPaiHang(10);
		return biaoshenlist;
	}

	/**
	 * ��ȡ�¸��ǰʮ������ǰʮ��
	 */
	@RequestMapping(value = "/tuijiannewsong", method = RequestMethod.GET)
	@ResponseBody
	public List<Song> getNewSong() {
		List<Song> newsonglist = ss.getNewSong(10);
		return newsonglist;
	}
	
	/**
	 * ��ȡ�¸��ǰʮ������ǰʮ��
	 */
	@RequestMapping(value = "/paihangnewsong", method = RequestMethod.GET)
	@ResponseBody
	public List<Song> getPaihangNewSong() {
		List<Song> newsonglist = ss.getNewSong(20);
		return newsonglist;
	}
	
	/**
	 * ��ȡ�ղ�����ǰʮ�ĸ�����Ϊ���а�ǰʮ
	 */
	@RequestMapping(value = "/paihangbiaoshen", method = RequestMethod.GET)
	@ResponseBody
	public List<Song> getSongByBiaoshen() {
		List<Song> biaoshenlist = ss.getSongByPaiHang(20);
		return biaoshenlist;
	}
	
}
