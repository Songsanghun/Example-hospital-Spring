package com.hospital.web.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.hospital.web.domain.Article;
@Component
public interface BoardService {
public String addArticle(Article param)throws Exception; // Article 글하나를 의미
	
	//r
	public Article findOne(Article param)throws Exception;
	public List<Article> findSome(String[] param)throws Exception;
	public List<Article> list(int[] pageArr)throws Exception;
	
	//u
	public String update(Article param)throws Exception;
	//d
	public String delete(Article param)throws Exception;
	public int count()throws Exception;
}
