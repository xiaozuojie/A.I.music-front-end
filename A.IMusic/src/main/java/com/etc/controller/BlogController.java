package com.etc.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.etc.entity.Blog;
import com.etc.service.BlogService;

@Controller
public class BlogController {

	@Resource
	private BlogService bs;
	
	@RequestMapping(value="/list",method = RequestMethod.GET)
	public String listBlog(Model model)
	{
		
		List<Blog> list = bs.getAllBlog();
		model.addAttribute("list", list);
		return "Mainpage";
	}
}
