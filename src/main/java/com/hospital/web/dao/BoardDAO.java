package com.hospital.web.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.hospital.web.domain.Article;
@Component
public interface BoardDAO {
	// c
		public int insert(Article param)throws Exception; // Article 글하나를 의미

		// r
		public Article selectBySeq(Article param)throws Exception;

		public List<Article> selectByWord(String[] param)throws Exception;

		public List<Article> selectAll(int[] pageArr)throws Exception;

		// u
		public int update(Article param)throws Exception;

		// d
		public int delete(Article param)throws Exception;
		public int count()throws Exception;
}
