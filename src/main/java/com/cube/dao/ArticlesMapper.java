package com.cube.dao;

import com.cube.pojo.Articles;

public interface ArticlesMapper extends BaseMapper<Articles>{
	
	public Articles selectOneById(Integer id);
	
}
