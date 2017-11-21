package com.etc.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.etc.entity.Albumscomment;
import com.etc.entity.Comments;
import com.etc.entity.Playlist;
import com.etc.entity.Singer;
import com.etc.entity.Song;
import com.etc.service.AlbumsService;
import com.etc.service.Albumscommentservice;
import com.etc.service.CommentsService;
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
	@Resource
	private Albumscommentservice ace;
   //ר������
	@Resource
	private CommentsService coms;
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
		if (listgedan.size() > 8) {
			listgedannumber = listgedan.subList(0, 8);
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
		list = ss.getsong();
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
		return "singermorepage";
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
	 * ����ר��id��ȡ������ҳ��
	 */
    @RequestMapping(value="/zhuanjixiangqing",method=RequestMethod.GET) 
	public String zhuanjimore(int zhuanjiid,Model model){	
    	//ר������
    	List<Albums> albumsmore=as.getallalbumsid(zhuanjiid);
    	String albumsname=albumsmore.get(0).getAlbumsName();
    	String singername=albumsmore.get(0).getSingerName();
        //ר��������
        List<Albumscomment> Albumscomment=ace.getallalbumscomment(zhuanjiid);  
    	//���ݸ���������ֵ���ص�ר��
    	List<Albums> albumsother=as.getallalbumssingername(singername);         
    	//����ר������ר������ĸ���
    	
    	List<Song> albumssinger=ss.getsongalbumsid(albumsname);   	
        model.addAttribute("albumsmore", albumsmore);
    	model.addAttribute("Albumscomment", Albumscomment);
    	model.addAttribute("albumsother", albumsother);
    	model.addAttribute("albumssinger", albumssinger);
		return "zhuangjipage";	
	}
    /**
     * �����¼���
     */
    @RequestMapping(value = "/albumsdianzan", method = RequestMethod.GET)
    @ResponseBody
	public String albumddianzan(int commentid,int zannumber) {
    	zannumber=zannumber+1;
    	
    	return "Mymusic";
	}
    /**
     * ר������
     */
    @RequestMapping(value="/zhuanjipinglun/{zhuanjiid}", method = RequestMethod.GET)
    @ResponseBody
    public List<Albumscomment> addcomment(@PathVariable(value="zhuanjiid")int zhuanjiid,String usercomment){	
    	//��ȡ�û���ǰ����ʱ��
    	Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//���Է�����޸����ڸ�ʽ
		String usernow = dateFormat.format(now); 
    	Comments usercomments=new Comments(4, usernow, usercomment, "����", zhuanjiid);
    	coms.gaddcomments(usercomments);
    	List<Albumscomment> zhuajiajax=ace.getallalbumscomment(zhuanjiid); 
    	return zhuajiajax;
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

}
