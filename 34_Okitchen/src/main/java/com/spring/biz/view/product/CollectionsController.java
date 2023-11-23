package com.spring.biz.view.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	    //addProductListToModel("prodLowPriceList", productService.selectLowPriceList(), model);
		
		return "index";
	}
	
	//주제별 전체보기 
	//1. 신상품
	@RequestMapping("/newProdList.do")
	private String newProdList(Model model) throws Exception {
		System.out.println("======> CollectionsController.newProdList() 실행");
		System.out.println(">>>  화면 이동 - newProdList()");
		
		addProductListToModel("prodAcceptList", productService.selectAcceptList(), model);
		
		return "product/newProdList";
	}
	
	//2. 베스트 (판매량)
	@RequestMapping("/bestProdList.do")
	private String bestProdList(Model model) throws Exception {
		System.out.println("======> CollectionsController.bestProdList() 실행");
		System.out.println(">>>  화면 이동 - bestProdList()");
		
		
		
		return "product/bestProdList";
	}
	
	//3. 특가/할인
	@RequestMapping("/discProdList.do")
	private String discProdList(Model model) throws Exception {
		System.out.println("======> CollectionsController.discProdList() 실행");
		System.out.println(">>>  화면 이동 - discProdList()");
		
		addProductListToModel("prodDiscList", productService.selectDiscList(), model);
		
		return "product/discProdList";
	}
	
}
