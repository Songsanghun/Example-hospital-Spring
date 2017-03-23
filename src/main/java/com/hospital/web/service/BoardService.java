package com.hospital.web.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.hospital.web.domain.ArticleDTO;
@Component
public interface BoardService {
public String addArticle(ArticleDTO param)throws Exception; // Article 글하나를 의미
	
	//r
	public ArticleDTO findOne(ArticleDTO param)throws Exception;
	public List<ArticleDTO> findSome(String[] param)throws Exception;
	public List<ArticleDTO> list(int[] pageArr)throws Exception;
	
	//u
	public String update(ArticleDTO param)throws Exception;
	//d
	public String delete(ArticleDTO param)throws Exception;
	public int count()throws Exception;
}
