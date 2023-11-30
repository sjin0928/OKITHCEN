package com.spring.biz.community.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.community.CommunityPickedVO;
import com.spring.biz.community.CommunityRecipeVO;
import com.spring.biz.community.CommunityService;
import com.spring.biz.community.CommunityVO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.recipe.RecipeInfoVO;

//@Service : @Component 상속 확장 어노테이션
//비즈니스 로직 처리 서비스 영역에 사용
@Service("communityService")
public class CommunityServiceImpl  implements CommunityService{
	
	@Autowired
	private CommunityDAO communityDAO;
	
	public CommunityServiceImpl() {
		System.out.println("CommunityServiceImpl() 생성");
	}

	
	@Override
	public void insertCommunity(CommunityRecipeVO vo) {
		communityDAO.insertCommunity(vo);
	}

	
	//기타이미지
	@Override
	public void updateCommunity(CommunityRecipeVO vo) {
		communityDAO.updateCommunity(vo);
	}

	@Override
	public void deleteCommunity(CommunityVO vo) {
		communityDAO.deleteCommunity(vo);
	}

	@Override
	public List<CommunityVO> getCommunityList() {
		return communityDAO.getCommunityList();
	}

	@Override
	public List<RecipeInfoVO> getDetailImg(int communityId) {
		
		return communityDAO.getRecipePhoto(communityId);
	}

	@Override
	public List<CommunityRecipeVO> getCommunityListByDate() {
		return communityDAO.getCommunityListByDate();
	}

	@Override
	public List<CommunityRecipeVO> getCommunityListByPick() { //미구현
		return null;
	}

	@Override
	public CommunityRecipeVO getCommunityOne(CommunityRecipeVO vo) {
		return communityDAO.getCommunityOne(vo);
	}

	@Override
	public void insertRecipePhoto(CommunityRecipeVO vo) {
		communityDAO.insertRecipePhoto(vo);
		
	}

	@Override
	public CommunityRecipeVO getCommunityPhoto(int communityId) {
		return communityDAO.getCommunityPhoto(communityId);
	}



	@Override
	public void viewCount(int communityId) {
		communityDAO.viewCount(communityId);
	}



	@Override
	public void communityPick(CommunityRecipeVO vo) {
		communityDAO.communityPick(vo);
	}



	@Override
	public void communityPickDelete(CommunityRecipeVO vo) {
		communityDAO.communityPickDelete(vo);
	}


	@Override
	public List<ProductVO> selectProductByName(String searchKeyword) {
		return communityDAO.selectProductByName(searchKeyword); 
	}



	@Override //내 게시물 가져오기
	public List<CommunityVO> myCommunityList(String userId) { 
		return communityDAO.myCommunityList(userId);
	}


	@Override //게시물 작성시 상품정보 가져오기에 사용
	public RegisterProdVO getCommunityProduct(int productId) {
		return communityDAO.getCommunityProduct(productId);
	}


	@Override //북마크 정보확인
	public CommunityRecipeVO communityPickCheck(int communityId) {
		return communityDAO.communityPickCheck(communityId);
				
	}


	@Override //북마크한 게시물 가져오기
	public List<CommunityRecipeVO> myPickedCommunity(String vo) {
		return communityDAO.myPickedCommunity(vo);
	}



	
	





	
	



	

	





	
	
	
}
