package com.spring.biz.product.impl;


import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.product.ProductImageVO;
import com.spring.biz.product.RegisterProdVO;

@Repository
public class ProductDAO {
	
	  @Autowired 
	  private SqlSessionTemplate mybatis;
	  
	  public ProductDAO() { 
		  System.out.println(">>> ProductDAO() 객체 생성"); 
	  }
	  
	  //상품등록 
	  public void registerProduct(RegisterProdVO vo) {
		  System.out.println("===> Mybatis로 registerProduct() 실행"); 
		  
		  mybatis.insert("registerProdDAO.insertProduct", vo);
	  }
	  
	  //상세이미지 등록 (여러장)
	  public void registerProductFile(RegisterProdVO vo) {
		  System.out.println("===> Mybatis로 registerProductFile() 실행");
		  
		  mybatis.insert("registerProdDAO.insertProdImage", vo);
	  }
	  
	  //판매자의 내 상품 보기
	  public List<RegisterProdVO> selectListSelProd(Object obj) {
		  System.out.println("===> Mybatis로 selectListSelProd() 실행");
		  
		  List<RegisterProdVO> productList = mybatis.selectList("registerProdDAO.selectListSelProd", obj);
		  System.out.println("ProductDAO.productList : " + productList);
		  
		  return productList;
	  }
	  
	  //상품상세보기(대표이미지만 가져오기)
	  public RegisterProdVO selectOneProd(int productId) {
		  System.out.println("===> Mybatis로 selectOneProd() 실행");
		  
		  RegisterProdVO vo = mybatis.selectOne("registerProdDAO.selectOneProd", productId);
		  System.out.println("vo : " + vo);
		  
		  //List<RegisterProdVO> detailImageList = mybatis.selectOne("registerProdDAO.selectListDetailImage", productId);
		  //System.out.println("ProductDAO.detailImageList : " + detailImageList);
		  
		  return vo;
	  }
	  
	  public List<ProductImageVO> selectDetailImages(int productId) {
		  System.out.println("===> Mybatis로 selectDetailImages() 실행");
		  System.out.println("productId : " + productId);
		  List<ProductImageVO> list = mybatis.selectList("registerProdDAO.selectDetailImages", productId);
		  System.out.println("list : " + list);
		  
		  return list;
	  }
	  
	  //모든 상품 가져오기
	  public List<RegisterProdVO> selectAllList() {
		  System.out.println("===> Mybatis로 selectAllList() 실행");
		  
		  List<RegisterProdVO> list = mybatis.selectList("productDAO.selectAllList");
		  return list;
	  }
	  
	  //최근 등록순으로 조회하기
	  public List<RegisterProdVO> selectAcceptList() {
		  System.out.println("===> Mybatis로 selectAcceptList() 실행");
		  
		  List<RegisterProdVO> list = mybatis.selectList("productDAO.selectAcceptList");
		  return list;
	  }
	  
	  //낮은 가격순으로 조회하기
	  public List<RegisterProdVO> selectLowPriceList() {
		  System.out.println("===> Mybatis로 selectLowPriceList() 실행");
		  
		  List<RegisterProdVO> list = mybatis.selectList("productDAO.selectLowPriceList");
		  return list;
  	  }
	  //할인율 높은순으로 조회
	  public List<RegisterProdVO> selectDiscList() {
		  System.out.println("===> Mybatis로 selectDiscList() 실행");
		  
		  List<RegisterProdVO> list = mybatis.selectList("productDAO.selectDiscList");
		  return list;
	  }
	  
	  //리뷰 많은 순으로 조회
	  public List<RegisterProdVO> selectReviewList() {
		  System.out.println("===> Mybatis로 selectReviewList() 실행");
		  
		  List<RegisterProdVO> list = mybatis.selectList("productDAO.selectReviewList");
		  return list;
	  }
	  
	  //판매량 많은 순으로 조회
	  public List<RegisterProdVO> selectBestList() {
		  System.out.println("===> Mybatis로 selectBestList() 실행");
		  
		  List<RegisterProdVO> list = mybatis.selectList("productDAO.selectBestList");
		  return list;
	  }
	  
	  //통합 검색-----------------------------------
	  public List<RegisterProdVO> selectSearchList(String keyword){
		  return mybatis.selectList("productDAO.searchList", keyword);
	  }

	  //리뷰수 가져오기
	  public String reviewCount(RegisterProdVO vo) {
		  System.out.println("===> Mybatis로 reviewCount() 실행");
		  System.out.println("vo : " + vo);
		  return mybatis.selectOne("productDAO.reviewCount", vo);
	  }
	  
	  //카테고리별 상품조회
	  public List<RegisterProdVO> selectCategoryList(String category) {
		  System.out.println("===> Mybatis로 selectCategoryList() 실행");
		  System.out.println("category : " + category);
		  return mybatis.selectList("productDAO.selectCategory", category);
	  }

	  public void sellerUpdateProduct(RegisterProdVO inProdVO) {
			mybatis.update("registerProdDAO.sellerUpdateProduct", inProdVO);
		}

		public void sellerUpdateProductImage(RegisterProdVO inProdVO) {
			mybatis.update("registerProdDAO.sellerUpdateProductImage", inProdVO);
		}

		public void deleteProductImage(int imageId) {
			mybatis.delete("registerProdDAO.deleteProductImage", imageId);
			
		}

		public void productStatusUpdate(RegisterProdVO vo) {
			mybatis.update("registerProdDAO.productStatusUpdate", vo);
			
		}
		  
	 

}
