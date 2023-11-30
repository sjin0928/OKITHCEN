package com.spring.biz.recipe;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ToString
public class RecipeInfoVO {
    private int picId;
    private int communityId;
    private String recipePhoto; 

    public RecipeInfoVO() {}

	public RecipeInfoVO(int picId, int communityId, String recipePhoto) {
		super();
		this.picId = picId;
		this.communityId = communityId;
		this.recipePhoto = recipePhoto;
	}

}