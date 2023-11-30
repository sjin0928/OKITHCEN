package com.spring.biz.view.recipe;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.spring.biz.recipe.RecipeInfoVO;
import com.spring.biz.recipe.RecipeService;

@Controller
@RequestMapping("/recipeBakcup")
public class RecipeContoroller {

	private RecipeService recipeService;
	
	public RecipeContoroller() {
		System.out.println("===========> RecipeContoroller() 객체 생성");
	}
	
	@Autowired
	public RecipeContoroller (RecipeService recipeService) {
		System.out.println("===========> RecipeContoroller() 객체 생성");
		System.out.println("::: RecipeService recipeService : " + recipeService);
		this.recipeService = recipeService;
	}
	
	//레서피 한개 보기
	@RequestMapping("/getRecipe.do")
	public String getBoard(RecipeInfoVO vo, Model model) {
		System.out.println(">>> 레서피 한개 보여주기");
		System.out.println("vo : " + vo);

		RecipeInfoVO recipe = recipeService.getRecipe(vo);
		System.out.println("recipe : " + recipe);
		
		model.addAttribute("recipe", recipe); //Model 객체 사용 View로 데이터 전달
		
		return "community/getRecipe";
	}
	
	//레서피 전체 보기
	@RequestMapping("/getRecipeList.do")
	public String getBoardList(RecipeInfoVO vo, Model model) {
		System.out.println(">>> 레서피 전체 보여주기");
		System.out.println("vo : " + vo);
		
		//List<BoardVO> boardList = boardDAO.getBoardList();
		List<RecipeInfoVO> recipeList = recipeService.getRecipeList(vo);
		
		model.addAttribute("recipeList", recipeList); //Model에 데이터 저장
		
		return "community/getRecipeList";
	}
	
	// 폼에서 전송된 데이터를 recipeInfoList이름의 모델 속성으로 바인딩하라는 뜻, 그래서 List<> 변수명도 recipeInfoList로 해야함.
	// 일단 레서피 하나만 시도해보고 성공하면 List로 만들기
	@RequestMapping("/insertRecipe.do")
	public String insertRecipe(@ModelAttribute("recipeInfoList") ArrayList<RecipeInfoVO> recipeInfoList,
            HttpServletRequest request) throws IllegalStateException, IOException {
	    // 각 RecipeInfoVO 객체에 대한 처리(recipePhoto, searchButton, productId, communityId)

		System.out.println("insertRecipe() 를 실행합니다.");
		System.out.println("recipeInfoList : " + recipeInfoList);
		
		for (RecipeInfoVO vo : recipeInfoList) {
	        System.out.println(">>> 레서피 한개 작성");
	        System.out.println("vo : " + vo);
	       
	        
	       
	    }
	    return "redirect:/community/getCommunityList.do";
	}

	
	//레서피 수정하기
	// @ModelAttribute("recipeInfoList") : @SessionAttributes 설정으로 존재하는 "recipeInfoListVO" 데이터 사용
	// 폼에서 전송된 데이터를 recipeInfoList이름의 모델 속성으로 바인딩하라는 뜻, 그래서 List<> 변수명도 recipeInfoList로 해야함.
	@RequestMapping("/updateRecipe.do")
	public String updateRecipe(@ModelAttribute("recipeInfoList") List<RecipeInfoVO> recipeInfoListVO, @RequestParam("productPhotoFiles") List<MultipartFile> productPhotoFiles, HttpServletRequest request){
		System.out.println(">>> 게시글 수정");


	    return "community/insertRecipe";
	}
	
	//레서피 삭제하기
	public String deleteRecipe(RecipeInfoVO vo, SessionStatus sessionStatus) {
		System.out.println(">>> 레서피 삭제");
		System.out.println("vo : " + vo);
		
		recipeService.deleteRecipe(vo);
		sessionStatus.setComplete();
		
		return "redirect:insertRecipe.do";
	}
}
