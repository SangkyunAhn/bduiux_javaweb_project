package com.bookshop01.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bookshop01.board.vo.ArticleVO;

public interface BoardService {
	public List<ArticleVO> listArticles() throws Exception;
	public List<ArticleVO> listArticlesPerPage(HashMap condMap) throws Exception;
	public int addNewArticle(Map articleMap) throws Exception;
	public ArticleVO viewArticle(int articleNO) throws Exception;
	//public Map viewArticle(int articleNO) throws Exception;
	public void modArticle(Map articleMap) throws Exception;
	public void removeArticle(int articleNO) throws Exception;
}
