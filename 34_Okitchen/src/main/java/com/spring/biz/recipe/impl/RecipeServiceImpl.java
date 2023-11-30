package com.spring.biz.recipe.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.recipe.RecipeInfoVO;
import com.spring.biz.recipe.RecipeService;

//@Service : @Component 상속 확장 어노테이션
//비즈니스 로직 처리 서비스 영역에 사용
@Service("RecipeService")
public class RecipeServiceImpl implements RecipeService {

	@Autowired
	private RecipeDAO recipeDAO;
	
	public RecipeServiceImpl() {
		System.out.println(">> RecipeServiceImpl() 객체 생성");
	}

	@Override
	public void insertRecipe(RecipeInfoVO vo) { //매개변수 vo를 받아서. DAO에서 정의한(이미 mapper와 연결된) 메서드에 vo 대입
		recipeDAO.insertRecipe(vo);
	}

	@Override
	public void updateRecipe(RecipeInfoVO vo) {
		recipeDAO.updateRecipe(vo);
		
	}

	@Override
	public void deleteRecipe(RecipeInfoVO vo) {
		recipeDAO.deleteRecipe(vo);
		
	}


	@Override
	public List<RecipeInfoVO> getRecipeList(RecipeInfoVO vo) {
		return recipeDAO.getRecipeList(vo);
	}

	@Override
	public RecipeInfoVO getRecipe(RecipeInfoVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
