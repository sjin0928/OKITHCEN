package com.spring.biz.community.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.community.CommunityPickedVO;
import com.spring.biz.community.CommunityRecipeVO;
import com.spring.biz.community.CommunityVO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.recipe.RecipeInfoVO;

@Repository
public class CommunityDAO {

	private SqlSessionTemplate mybatis;

	public CommunityDAO() {
		System.out.println(">>> CommunityDAO() 객체 생성");
	}

	@Autowired // 생성자 주입이 필드 주입보다 이점이 많다. 같은 기능이지만 필드주입은 외부수정이 가능해서 불변성에 어긋난다.
	public CommunityDAO(SqlSessionTemplate mybatis) {
		System.out.println("CommunityDAO(SqlSessionTemplate) 객체 생성");
		this.mybatis = mybatis;
	}

	
	//커뮤니티 생성  (메인)
	public void insertCommunity (CommunityRecipeVO vo) {
		System.out.println("===> MyBatis JDBC로 inserCommunity() 실행");
		mybatis.insert("communityRecipeDAO.insertCommunity", vo);
	}
	
	//기타 사진 등록 (여러장)
	public void insertRecipePhoto(CommunityRecipeVO vo) {
		System.out.println("===> Mybatis로 insertRecipePhoto() 실행");
		
		mybatis.insert("communityRecipeDAO.insertRecipePhoto", vo);
	}
	
	//전체 상품조회 (이름으로)
	public List<ProductVO> selectProductByName(String searchKeyword) {
		System.out.println("===> selectProductByName() 실행");
  
		// 검색조건 값이 없을 때 기본값 설정
		if (searchKeyword == null) {
			searchKeyword = "";
		}
		  
		return mybatis.selectList("communityRecipeDAO.selectProductByName", "%" + searchKeyword + "%");
	} 
	//내가 한 실수: 잘못된 DAO에서 가져왔었음
		
	// 커뮤니티 수정
	public void updateCommunity(CommunityRecipeVO vo) {
		System.out.println("===> MyBatis JDBC로 updateCommunity() 실행");
		mybatis.update("communityRecipeDAO.updateCommunity", vo);
	}

	// 커뮤니티 삭제
	public void deleteCommunity(CommunityVO vo) {
		System.out.println("===> MyBatis JDBC로 deleteCommunity() 실행");
		mybatis.delete("communityRecipeDAO.deleteCommunity", vo);
	}
	
	// 커뮤니티 조회수
	public void viewCount(int communityId) {
		System.out.println("myBaits로 viewCount() 실행합니다");
		mybatis.update("communityRecipeDAO.viewCount", communityId);
	}

	// 커뮤니티 자세히 보기
	public CommunityRecipeVO getCommunityOne(CommunityRecipeVO vo) {
		System.out.println("===> MyBatis JDBC로 getCommunityOne() 실행");
		
		return mybatis.selectOne("communityRecipeDAO.getCommunityOne", vo);
	}

	// 커뮤니티 전체 조회
	public List<CommunityVO> getCommunityList() {
		System.out.println("===> MyBatis JDBC로 getCommunityList() 실행");
		return mybatis.selectList("communityRecipeDAO.getcommunityList");
	}
	
	// 커뮤니티 전체 조회 날짜별
	public List<CommunityRecipeVO> getCommunityListByDate() {
		System.out.println("===> MyBatis JDBC로 getCommunityListByDate() 실행");
		return mybatis.selectList("communityRecipeDAO.getcommunityListByDate");
	}
	
	// 커뮤 대표 사진 가져오기
	public CommunityRecipeVO getCommunityPhoto(int communityId) {
		System.out.println("mybatis로 getCommunityPhoto.대표사진() 실행");
		
		CommunityRecipeVO vo = mybatis.selectOne("communityRecipeDAO.getCommunityPhoto", communityId);
		System.out.println("vo : " + vo);
		
		return vo;
	}
	
	//커뮤 기타 이미지들 가져오기
	public List<RecipeInfoVO> getRecipePhoto(int communityId){
		System.out.println("mybatis로 getRecipePhoto.()기타사진 가져오기 실행");
		System.out.println("communityId : " + communityId);
		List<RecipeInfoVO> list =  mybatis.selectList("communityRecipeDAO.getRecipePhoto", communityId);
		System.out.println("list : " + list);
		
		return list;
	}

	// 커뮤니티 북마크 추가
	public void communityPick (CommunityRecipeVO vo) {
		System.out.println("communityPick() 실행_북마크 추가");
		mybatis.insert("communityRecipeDAO.communityPick", vo);
	}
	
	// 커뮤니티 북마크 삭제
	public void communityPickDelete (CommunityRecipeVO vo) {
		System.out.println("commynityPickDelete() 실행_북마크 삭제");
		mybatis.delete("communityRecipeDAO.communityPickDelete", vo);
	}
	// 커뮤니티 북마크 본인확인CSS 적용
	public CommunityRecipeVO communityPickCheck (int vo) {
		System.out.println("communityPickCheck() 실행_ 북마크 상태 확인");
		CommunityRecipeVO getUserId = mybatis.selectOne("communityRecipeDAO.communityPickCheck", vo);
		return getUserId;
	}
	
	//내가 북마크한 게시물 조회
	public List<CommunityRecipeVO> myPickedCommunity (String vo) {
		System.out.println("myPickedCommunity() 실행_ 북마크한 게시물 모아보기");
		List<CommunityRecipeVO> myPickedCommunityList = mybatis.selectList("communityRecipeDAO.myPickedCommunity", vo);
		return myPickedCommunityList;
	}
	
	
	// 내가 쓴 게시물 조회
	public List<CommunityVO> myCommunityList (String userId){
		System.out.println("myCommunityList() 실행_내 게시물");
		return mybatis.selectList("communityRecipeDAO.getMyCommunity", userId);
	}
	
	// 게시물에 등록된 상품정보 가져오기
	public RegisterProdVO getCommunityProduct (int productId) {
		System.out.println("getCommunityProduct () 실행_ 게시물에 등록된 상품정보");
		return mybatis.selectOne("communityRecipeDAO.getCommunityProduct", productId);
	}
		

}
