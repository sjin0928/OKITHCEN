package com.spring.biz.view.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.biz.product.ProductService;
import com.spring.biz.product.RegisterProdVO;

@Controller
@RequestMapping("/collections")
public class CollectionsController {
	private ProductService productService;
	
	public CollectionsController() {
		System.out.println("=========> CollectionsController 객체 생성");
	}
	
	@Autowired
	public CollectionsController(ProductService productService) {
		System.out.println("=========> CollectionsController(productService) 객체 생성");
		System.out.println("::: ProductService productService : " + productService);
		this.productService = productService;
	}
	
	//주제별 상품 조회
	private void addProductListToModel(String attributeName, List<RegisterProdVO> productList, Model model) {
	    System.out.println(attributeName + " : " + productList);
	    model.addAttribute(attributeName, productList);
	}
	
	//메인페이지로 상품 데이터 가져가기
	@RequestMapping("/indexProdList.do")
	private String indexProdList(Model model) throws Exception {
		System.out.println("======> CollectionsController.indexProdList() 실행");
		System.out.println(">>>  화면 이동 - index()");
		
		//전시 가능한 모든 데이터 조회(테스트)
		//List<RegisterProdVO> prodAllList = productService.selectAllList();
		
		// 각각의 조회 메서드를 호출하여 데이터를 가져오고 모델에 추가
	    addProductListToModel("prodAcceptList", productService.selectAcceptList(), model);
	    addProductListToModel("prodDiscList", productService.selectDiscList(), model);
	    addProductListToModel("prodReviewList", productService.selectReviewList(), model);
		
		return "index";
	}
	
	//주제별 전체보기 
	//1. 신상품
	@RequestMapping("/newProdList.do")
	private String newProdList(Model model, RegisterProdVO vo) throws Exception {
		System.out.println("======> CollectionsController.newProdList() 실행");
		System.out.println(">>>  화면 이동 - newProdList()");
		
		List<RegisterProdVO> productList = productService.selectAcceptList();
		int prodListCnt = productList.size();
		System.out.println(">>> 신상품 총건수 prodListCnt : " + prodListCnt);
		
		model.addAttribute("prodListCnt", prodListCnt);
		model.addAttribute("prodAcceptList", productList);
		
		return "product/newProdList";
	}
	
	//2. 베스트 (판매량)
	@RequestMapping("/bestProdList.do")
	private String bestProdList(Model model) throws Exception {
		System.out.println("======> CollectionsController.bestProdList() 실행");
		System.out.println(">>>  화면 이동 - bestProdList()");
		
		List<RegisterProdVO> productList = productService.selectBestList();
		int prodListCnt = productList.size();
		System.out.println(">>> 신상품 총건수 prodListCnt : " + prodListCnt);
		
		model.addAttribute("prodListCnt", prodListCnt);
		model.addAttribute("prodBestList", productList);
		
		return "product/bestProdList";
	}
	
	//3. 특가/할인
	@RequestMapping("/discProdList.do")
	private String discProdList(Model model) throws Exception {
		System.out.println("======> CollectionsController.discProdList() 실행");
		System.out.println(">>>  화면 이동 - discProdList()");
		
		List<RegisterProdVO> productList = productService.selectDiscList();
		int prodListCnt = productList.size();
		System.out.println(">>> 특가/할인상품 총건수 prodListCnt : " + prodListCnt);
		
		model.addAttribute("prodListCnt", prodListCnt);
		model.addAttribute("prodDiscList", productList);
		
		return "product/discProdList";
	}
	
	//4. 리뷰가 있는 전체 상품 조회
	@RequestMapping("/reviewProdList.do")
	private String reviewProdList(Model model) throws Exception {
		System.out.println("======> CollectionsController.reviewProdList() 실행");
		System.out.println(">>>  화면 이동 - reviewProdList()");
		
		List<RegisterProdVO> productList = productService.selectReviewList();
		int prodListCnt = productList.size();
		System.out.println(">>> 리뷰있는상품 총건수 prodListCnt : " + prodListCnt);
		
		model.addAttribute("prodListCnt", prodListCnt);
		model.addAttribute("prodReviewList", productList);
		
		return "product/reviewProdList";
	}
	
	//상품검색 --------------------
	@PostMapping("/searchList.do")
	private String searchList(@RequestParam(name = "keyword") String keyword, Model model) {
		// keyword가 null이면  
//		if (keyword == null || keyword.trim().isEmpty()) {
//			
//		}
		List<RegisterProdVO> searchList = productService.selectSearchList(keyword);
		int resultCount = searchList.size(); // 검색 건수
		
		model.addAttribute("searchList", searchList);
		model.addAttribute("resultCount", resultCount);
		System.out.println(">> 검색 결과 : "+ searchList);
		
		return "product/searchList";
	}
	
	//카테고리별 조회 -------------------
	@RequestMapping("/category.do")
	private String categoryList(@RequestParam(name = "category") String category, Model model) {
		System.out.println("category : " + category);
		
		// 카테고리에 따라 다르게 설정할 데이터를 Model에 추가
	    switch (category) {
	        case "vege":
	        case "fruit":
	        case "meat":
	        case "seafood":
	        case "snack":
	        case "bakery":
	        case "seasoning":
	        case "drink":
	        case "mealkit":
	        	List<RegisterProdVO> categoryProdList = productService.selectCategoryList(category);
	            int prodListCnt = categoryProdList.size(); // 검색된 상품 건수

	            model.addAttribute("categoryProdList", categoryProdList);
	            model.addAttribute("prodListCnt", prodListCnt);
	            
	            break;
	    }
		
		return "product/categoryList";
	}
	
	
}
