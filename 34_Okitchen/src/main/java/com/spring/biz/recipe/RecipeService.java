package com.spring.biz.recipe;

import java.util.List;


public interface RecipeService {
	void insertRecipe(RecipeInfoVO vo);
	void updateRecipe(RecipeInfoVO vo);
	void deleteRecipe(RecipeInfoVO vo);
	RecipeInfoVO getRecipe(RecipeInfoVO vo);
	List<RecipeInfoVO> getRecipeList(RecipeInfoVO vo);
	
	
}
