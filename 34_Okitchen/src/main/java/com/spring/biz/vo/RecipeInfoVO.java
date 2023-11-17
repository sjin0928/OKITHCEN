package com.spring.biz.vo;

import lombok.Setter;
import lombok.ToString;
import lombok.Getter;

@Getter
@Setter
@ToString
public class RecipeInfoVO {
	private int picId;
	private int communityId;
	private int productId;
	private String recipePhoto;
	private String recipeContent;
}
