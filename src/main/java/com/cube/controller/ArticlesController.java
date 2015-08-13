package com.cube.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;

import com.cube.dao.ArticlesMapper;
import com.cube.pojo.Articles;
import com.google.gson.Gson;

public class ArticlesController extends BaseController{
	
	@Resource(name="articlesDao")
	private ArticlesMapper articlesDao;
	
	@RequestMapping("test")
	public void find(HttpServletResponse response){
		List<Articles> articles = articlesDao.seletArticles();
		Gson g = new Gson();
		renderText(response, g.toJson(articles));
	};
	
	public void setArticlesDao(ArticlesMapper articlesDao) {
		this.articlesDao = articlesDao;
	}
}
