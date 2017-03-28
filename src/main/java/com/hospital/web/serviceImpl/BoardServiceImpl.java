package com.hospital.web.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospital.web.dao.BoardDAO;
import com.hospital.web.domain.Article;
import com.hospital.web.service.BoardService;
@Service
public class BoardServiceImpl implements BoardService{
	@Autowired BoardDAO dao;
	@Override
	public String addArticle(Article param)throws Exception{
		String result = "";
		if(dao.insert(param)!=0){
			result = "게시물이 등록되었습니다.";
		}else{
			result = "게시물이 등록되지 않았습니다.";
		}
		return result;
	}
	@Override
	public Article findOne(Article param)throws Exception {
		return dao.selectBySeq(param);
	}
	@Override
	public List<Article> findSome(String[] param)throws Exception {
		System.out.println("서비스에 넘어간 파라미터1 :"+param[0]);
		System.out.println("서비스에 넣어간 파라미터2 :"+param[1]);
		System.out.println("서비스에서 본 리스트 결과: "+dao.selectByWord(param));
		return dao.selectByWord(param);
	}
	@Override
	public List<Article> list(int[] pageArr) throws Exception{
		
		return dao.selectAll(pageArr);
	}
	@Override
	public String update(Article param) throws Exception{
		String result = "";
		if(dao.update(param)!=0){
			result = "게시물이 수정되었습니다.";
		}else{
			result = "수정할 게시물이 없습니다.";
		}
		return result;
	}
	@Override
	public String delete(Article param) throws Exception{
		String result = "";
		if(dao.delete(param)!=0){
			result = "게시물은 삭제되었습니다.";
		}else{
			result = "삭제할 게시물이 없습니다.";
		}
		return result;
	}
	@Override
	public int count() throws Exception{
		return dao.count();
	}
}
