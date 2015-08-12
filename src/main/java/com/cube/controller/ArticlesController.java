package com.cube.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cube.dao.ArticlesMapper;
import com.cube.pojo.Articles;
import com.google.gson.Gson;

@RequestMapping("articles")
public class ArticlesController extends BaseController{
	
	@Resource(name="articlesDao")
	private ArticlesMapper articlesDao;
	
	@RequestMapping("find")
	public void find(HttpServletResponse response){
		Articles articles = articlesDao.selectOneById(1);
		Gson g = new Gson();
		renderText(response, g.toJson(articles));
	};
	
	public void setArticlesDao(ArticlesMapper articlesDao) {
		this.articlesDao = articlesDao;
	}
}
