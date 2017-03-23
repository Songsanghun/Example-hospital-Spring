package com.hospital.web.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.hospital.web.dao.BoardDAO;
import com.hospital.web.domain.ArticleDTO;
@Repository
public class BoardDAOImpl implements BoardDAO{
	@Override
	public int insert(ArticleDTO param) throws Exception {
		String sql = String.format("INSERT INTO Article(art_seq,id,title,content,regdate,read_count)"
				+ "VALUES(seq.nextval,'%s','%s','%s','%s','%d')"
				, "","","","","");
		
		return 0;
	}
	@Override
	public ArticleDTO selectBySeq(ArticleDTO param) throws Exception {
		ArticleDTO article = null;    //null체크 
		String sql = String.format("SELECT art_seq,id,title,content,regdate,read_count "
				+ "	FROM Article WHERE seq='%s'", "");
		
		return article;
	}
	@Override
	public List<ArticleDTO> selectByWord(String[] param) throws Exception {
		List<ArticleDTO> list = new ArrayList<ArticleDTO>();
		//like : '%찾아내고싶은 키워드%'
		ArticleDTO article = null; 
		String sql = "SELECT seq,id,title,content,regdate,read_count FROM Article "
				+ " WHERE "+param[0]+" LIKE '%"+param[1]+"%'";
		System.out.println("DAO에서 실행된 쿼리:"+sql);
		
		
		return list;
	}
	@Override
	public List<ArticleDTO> selectAll(int[] pageArr) throws Exception {
		List<ArticleDTO> list = new ArrayList<ArticleDTO>();
		ArticleDTO article = null;  //필수
		String sql = 
				String.format("SELECT t2.*"
						   +"\tFROM (SELECT ROWNUM seq,t.*" 
					       +"\tFROM (SELECT * FROM ARTICLE ORDER BY art_seq DESC) t) t2"
					       +"\tWHERE t2.seq BETWEEN %s AND %s", String.valueOf(pageArr[0]),
					       String.valueOf(pageArr[1]));
		
		return list;
	}

	@Override
	public int update(ArticleDTO param) throws Exception {
		String sql =String.format("UPDATE Article SET title='%s',content='%s',regdate='%s' WHERE seq='%s'", "","","","");
				
		return 0;
	}
	@Override
	public int delete(ArticleDTO param) throws Exception {
		String sql = String.format("DELETE FROM Article WHERE seq='%s'", "");
		
		return 0;
	}
	@Override
	public int count() throws Exception {
		int count=0;
		String sql = "SELECT COUNT(*) AS count FROM Article";
		return count;
	}
}
