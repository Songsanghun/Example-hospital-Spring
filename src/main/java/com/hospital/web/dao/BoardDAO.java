package com.hospital.web.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.hospital.web.domain.ArticleDTO;
@Component
public interface BoardDAO {
	// c
		public int insert(ArticleDTO param)throws Exception; // Article 글하나를 의미

		// r
		public ArticleDTO selectBySeq(ArticleDTO param)throws Exception;

		public List<ArticleDTO> selectByWord(String[] param)throws Exception;

		public List<ArticleDTO> selectAll(int[] pageArr)throws Exception;

		// u
		public int update(ArticleDTO param)throws Exception;

		// d
		public int delete(ArticleDTO param)throws Exception;
		public int count()throws Exception;
}
