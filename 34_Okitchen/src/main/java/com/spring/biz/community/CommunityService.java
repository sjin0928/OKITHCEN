package com.spring.biz.community
;

import java.util.List;

import com.spring.biz.product.ProductVO;
import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.recipe.RecipeInfoVO;

public interface CommunityService {
	void insertCommunity(CommunityRecipeVO vo); // 커뮤작성
	void insertRecipePhoto(CommunityRecipeVO vo); //기타 사진 업로드
	CommunityRecipeVO getCommunityPhoto(int communityId); // 커뮤 대표 사진만 가져옴
	List<RecipeInfoVO> getDetailImg(int communityId); //커뮤 기타 사진들 가져옴
	CommunityRecipeVO getCommunityOne(CommunityRecipeVO vo); // 커뮤 자세히 보기
	
	void updateCommunity(CommunityRecipeVO vo); // 커뮤업뎃
	void deleteCommunity(CommunityVO vo); // 커뮤삭제
	List<CommunityVO> getCommunityList(); // 커뮤 전체 목록 조회하기
	
	List<CommunityRecipeVO> getCommunityListByDate(); //커뮤 목록 날짜순 조회
	List<CommunityRecipeVO> getCommunityListByPick(); //커뮤 목록 찜순 조회 (미구현)
	
	void viewCount(int communityId); //조회수 
	
	void communityPick(CommunityRecipeVO vo); // 북마크 작성
	void communityPickDelete(CommunityRecipeVO vo); // 북마크 삭제
	CommunityRecipeVO communityPickCheck(int communityId); //북마크 본인확인 동적 CSS변경
	List<CommunityRecipeVO> myPickedCommunity(String vo); //내가 북마크한 게시물 모아보기
	
	
	List<ProductVO> selectProductByName (String searchKeyword); //상품 이름으로 검색 조회
	List<CommunityVO> myCommunityList(String userId); //내가 쓴 게시물 조회
	RegisterProdVO getCommunityProduct (int productId); //커뮤니티 productId 로 게시물에 등록된 상품 정보 조회
	
}
