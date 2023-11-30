package com.spring.biz.community;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CommunityRecipeVO {
	
	//1.CommunityVO
	private int communityId;
	private String userId;
	private int commHit;
	private Date commDate;
	/* private String commImage;  대표이미지*/
	private int productId;
	private String commContent;
	private String title;
	
	//2. RecipeInfoVO
	private int picId;
    public CommunityRecipeVO() {}
     
    
	//파일
	private MultipartFile imageFile; //대표이미지
	private MultipartFile productPhotoFile; //상세이미지

	private String commImage; //DB에 저장되는 대표이미지 : CommunityVO
	private String recipePhoto; //DB에 저장되는 상세이미지 : RecipeInfoVO
	public CommunityRecipeVO(int communityId, String userId, int commHit, Date commDate, int productId,
			String commContent, String title, int picId, MultipartFile imageFile, MultipartFile productPhotoFile,
			String commImage, String recipePhoto) {
		super();
		this.communityId = communityId;
		this.userId = userId;
		this.commHit = commHit;
		this.commDate = commDate;
		this.productId = productId;
		this.commContent = commContent;
		this.title = title;
		this.picId = picId;
		this.imageFile = imageFile;
		this.productPhotoFile = productPhotoFile;
		this.commImage = commImage;
		this.recipePhoto = recipePhoto;
	}
	
	

	

	
    
    
    
	
	
}
