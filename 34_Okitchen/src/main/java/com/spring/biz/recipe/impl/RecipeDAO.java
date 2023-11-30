package com.spring.biz.recipe.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.recipe.RecipeInfoVO;


@Repository
public class RecipeDAO {

	private SqlSessionTemplate mybatis;
	
	public RecipeDAO() {
		System.out.println(">>> RecipeDAO() 객체 생성");
	}
	
	@Autowired
	public RecipeDAO(SqlSessionTemplate mybatis) {
		System.out.println("RecipeDAO(SqlSessionTemplate) 객체 생성");
		this.mybatis = mybatis;
	}
	
	//레서피 입력
	public void insertRecipe(RecipeInfoVO vo) {
		System.out.println("===> MyBatis JDBC로 insertRecipe() 실행");
		mybatis.insert("recipeDAO.insertRecipe", vo); //mapper의 namespace. 메서드이름, 넣을 객체
	}
	
	//레서피 수정
		public void updateRecipe(RecipeInfoVO vo) {
			System.out.println("===> MyBatis JDBC로 updateRecipe() 실행");
			mybatis.update("recipeDAO.updateRecipe", vo);
		}
	
	//레서피 삭제
	public void deleteRecipe(RecipeInfoVO vo) {
		System.out.println("===> MyBatis JDBC로 deleteRecipe() 실행");
		mybatis.delete("recipeDAO.deleteRecipe", vo);
	}
	

	//레서피 전체 조회? 필요한가?
	public List<RecipeInfoVO> getRecipeList(RecipeInfoVO vo) {
		System.out.println("===> MyBatis JDBC로 getRecipeList() 실행");
		return mybatis.selectList("recipeDAO.getRecipeList", vo);
	}
	
	
	
	
}
