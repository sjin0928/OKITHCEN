package com.spring.biz.view.community;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.biz.community.CommunityRecipeVO;
import com.spring.biz.community.CommunityService;
import com.spring.biz.community.CommunityVO;
import com.spring.biz.product.ProductImageVO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.recipe.RecipeInfoVO;
import com.spring.biz.recipe.RecipeService;
import com.spring.biz.user.UsersVO;

@Controller
@RequestMapping("/community")
public class CommunityContoroller {

	private CommunityService communityService;
	
	public CommunityContoroller() {
		System.out.println("===========> CommunityContoroller()객체 생성");
	}
	
	@Autowired //생성자 주입이 필드 주입보다 이점이 많다. 같은 기능이지만 필드주입은 외부수정이 가능해서 불변성에 어긋난다.
	public CommunityContoroller(CommunityService communityService) {
		System.out.println("===========> CommunityContoroller()객체 생성");
		System.out.println("::: CommunityService communityService : " + communityService);
		this.communityService = communityService;
	}
	
	//커뮤니티 자세히 보기
	@RequestMapping("/getCommunity.do")
	public String getCommunity(CommunityRecipeVO vo, Model model) throws Exception { //뷰페이지 쏴주기 위해 model사용
		System.out.println(">>> 커뮤니티 자세히 보기_getCommunity() 실행 ");
		System.out.println("CommunityRecipeVO vo : " + vo ); //communityId만 존재
		
		//communityId 값 꺼내와
		int communityId = vo.getCommunityId();
		System.out.println("communityId : " + communityId); //정상적으로 꺼내왔어
		
		//조회수 증가
		communityService.viewCount(communityId);
		System.out.println("조회수 1 증가합니다.");
		
		//매개변수 vo(=communityId)로 Community 다 가져와서 CommunityRecipeVO자료형에 넣어
		CommunityRecipeVO oneCommunity = communityService.getCommunityOne(vo); 
		System.out.println("oneCommunity : " + oneCommunity);
		
		//게시물 productId로 해당 상품 정보 가져와
		RegisterProdVO productInfo = communityService.getCommunityProduct(communityId);
		System.out.println("productInfo : " + productInfo);
		
		//모델에 게시물 컨텐츠 넣어 oneCommunity라는 이름으로.
		model.addAttribute("oneCommunity", oneCommunity);
		System.out.println("메인컨텐츠 model : " + model);
		
		//모델에 상품정보 넣어 communityProduct라는 이름으로
		model.addAttribute("communityProduct", productInfo);
		System.out.println("메인+상품 model : " + model);
		
		//해당 게시물이 등록될 때 들어간 기타 이미지들 가져와
		List<RecipeInfoVO> detailImageList = communityService.getDetailImg(communityId);
		System.out.println("detailImageList : " + detailImageList);
		
		//기타 이미지 가져와 모델에 넣어. detailImageList라는 이름으로
		model.addAttribute("detailImageList", detailImageList);
		System.out.println("메인+상품+기타이미지 model : " + model);
		
		//확인해봐 model에 제대로 담겼는지
		System.out.println("model에 닮긴 것들 : " + model);
		
		return "community/getCommunityDetail";
	}
	
	//커뮤니티 리스트 보기
	@GetMapping("/getCommunityList.do")
	public String getCommunityList( Model model) {
		System.out.println(">>> 커뮤니티 전체 목록 보여주기");
		
		List<CommunityVO> communityList = communityService.getCommunityList();
		
		model.addAttribute("communityList", communityList);
		System.out.println("model : " + model);
		
		return "community/getCommunityList";
	}
	
	//내가 쓴 게시물 가져오기 ------------------------------------------------------------------------------
	@GetMapping("/myCommunityList.do")
	public String myCommunityList(String userId, Model model, HttpSession session) {
		System.out.println("myCommunityList() 실행");
		
		UsersVO userInfo = (UsersVO)session.getAttribute("loginUser");
		String userIdreal = userInfo.getUserId();
		System.out.println(">>> userIdreal : " + userIdreal);
		
		
		List<CommunityVO> myCommunityList = communityService.myCommunityList(userIdreal);
		
		model.addAttribute("myCommunityList", myCommunityList);
		System.out.println("내 게시물들 model : " + model);
		
		return "community/getMyCommunity";
	}
	
	//내가 북마크한 게시물 가져오기 ------------------------------------------------------------------------------
	@GetMapping("/myPickedCommunity.do")
	public String myPickedCommunity (CommunityRecipeVO userId, Model model, HttpSession session) {
		System.out.println("myPickedCommunity() 실행");
		
		UsersVO userInfo = (UsersVO)session.getAttribute("loginUser");
		String userIdreal = userInfo.getUserId();
		
		List<CommunityRecipeVO> myPickedCommunityList = communityService.myPickedCommunity(userIdreal);
		
		model.addAttribute("myPickedCommunityList", myPickedCommunityList);
		System.out.println("내 북마크 게시물들 model : " + model);
		
		return "community/getMyPickedCommunity";// 페이지 생기면 주자, getCommunityList.jsp 본따면 될듯
	}
	
	
	//커뮤니티 작성하기 
	@PostMapping("/insertCommunity.do")
	public String insertCommunity(HttpSession session, CommunityRecipeVO vo, @RequestParam("productPhotoFile") List<MultipartFile> productPhotoFile, HttpServletRequest request) throws IllegalStateException, IOException {
		System.out.println(">>> insertCommunity.do() 실행");
		System.out.println("vo : " + vo);
		System.out.println("productPhotoFile : " + productPhotoFile); 
		
		System.out.println("세션 로그인아이디 정보: " + session.getAttribute("loginUser"));
		
		UsersVO userInfo = (UsersVO)session.getAttribute("loginUser");
		String userId = userInfo.getUserId();
		System.out.println(">>> userId : " + userId);
		vo.setUserId(userId);
		
		MultipartFile titleImage = vo.getImageFile();
		System.out.println(">> titleImage : " + titleImage); //대표이미지1개
		MultipartFile contentsPhotos = vo.getProductPhotoFile();
		System.out.println("contentsPhotos : " + contentsPhotos); //출력안댐
		
		
		//대표이미지
		if (titleImage == null) {
			System.out.println("::: uploadFile 파라미터가 전달되지 않은 경우");
		} else if (titleImage.isEmpty()) {
			System.out.println("::: 전달받은 파일 데이터가 없는 경우");
		} else { //업로드 파일이 존재하는 경우 false
			System.out.println("titleImage.isEmpty() : " + titleImage.isEmpty()); //false
		
			//원본파일명 구하기
			String titleFilename = titleImage.getOriginalFilename();
			System.out.println("::: titleFilename 원본파일명 : " + titleFilename);
		
			//저장파일명 구하기
			String savedFilename = UUID.randomUUID().toString();
			System.out.println("::: titleImage 저장파일명 : " + savedFilename);
		
			// 서블릿 컨텍스트의 실제 경로를 얻어옴
			String uploadDir = request.getServletContext().getRealPath("/community/img/title");
			System.out.println("대표 이미지 저장경로 : " + uploadDir);
			
			// 저장할 폴더 경로와 파일명을 합침
			String destPathFile = uploadDir + File.separator + savedFilename;
			
			titleImage.transferTo(new File(destPathFile));
		
			vo.setCommImage(savedFilename); //저장파일명
		
			communityService.insertCommunity(vo);
		
			
		}
		
		//상세이미지
		if (productPhotoFile != null && !productPhotoFile.isEmpty()) {
	        for (MultipartFile productPhotoFileOne : productPhotoFile) {
	            if (productPhotoFileOne != null && !productPhotoFileOne.isEmpty()) {
	                // 원본 파일명 구하기
	                String detailFilename = productPhotoFileOne.getOriginalFilename();
	                System.out.println("::: detailFilename 원본 파일명: " + detailFilename);

	                // 저장 파일명 구하기
	                String savedDetailFilename = UUID.randomUUID().toString();
	                System.out.println("::: detailImage 저장 파일명: " + savedDetailFilename); //2개 맞게 들어갔음

	                // 서블릿 컨텍스트의 실제 경로를 얻어옴
	                String uploadDir2 = request.getServletContext().getRealPath("/community/img/detail");
	                System.out.println("기타 이미지 저장경로 : " + uploadDir2);
	                
	                // 저장할 폴더 경로와 파일명을 합침
	                String destPathFile2 = uploadDir2 + File.separator + savedDetailFilename;

	                // 물리적 파일 복사
	                productPhotoFileOne.transferTo(new File(destPathFile2));

	                vo.setRecipePhoto(savedDetailFilename);
	                System.out.println("vo.setRecipePhoto : " + vo);
	                
	                communityService.insertRecipePhoto(vo);
	            }
	        }
	    }
        System.out.println("모든 요소담긴 vo : " + vo);

        return "redirect:/community/getCommunityList.do";
	}
	
	//커뮤니티 삭제하기
	@RequestMapping("/deleteCommunity.do")
	public String deleteCommunity(CommunityVO vo) {
		System.out.println("deleteCommunity() 실행");
		
		try {
			communityService.deleteCommunity(vo);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		/* return "community/getCommunityList"; */
		return "redirect:/community/getCommunityList.do";
	}
	
	//작성페이지 이동
	@GetMapping("/goinsertCommunity.do")
	public String showWriteForm() {
	    return "/community/insertCommunity";
	}
	
	//상품검색팝업창 이동
	@GetMapping("goSearchProduct.do")
	public String showSearchForm() {
		System.out.println("상품검색 팝업창 실행");
		return "/community/searchPopup";
	}
	
	
	//북마크 추가하기
	@ResponseBody
	@RequestMapping("/communityPick.do")
	public String communityPick(CommunityRecipeVO vo, HttpSession session) {
	    System.out.println("컨트롤러 communityPick() 실행 - 북마크 추가 ");

	    int communityId = vo.getCommunityId();
	    System.out.println("communityId : " + communityId);
	    
	    UsersVO userInfo = (UsersVO)session.getAttribute("loginUser");
	    System.out.println("userInfo : " + userInfo);
	    
		String userId = userInfo.getUserId();
		System.out.println(">>> userId : " + userId);
	    
	    vo.setUserId(userId);
	    vo.setCommunityId(communityId);
	    System.out.println("넣을 vo.setUserId : " + vo.getUserId());
	    System.out.println("넣을 vo.setCommunityId : " + vo.getCommunityId());

	    try {
	        communityService.communityPick(vo);
	        
	    } catch (Exception e) {
	        // 예외가 발생한 경우
	        e.printStackTrace();
	        // 예외 처리를 추가할 수 있음
	    }
		return "pickSuccess";
	}
	
	//북마크 삭제하기
	@ResponseBody
	@RequestMapping("/communityPickDelete.do") 
	public String communityPickDelete (CommunityRecipeVO vo) {
		System.out.println("컨트롤러 CommunityPickedVO communityPickDelete() 실행_북마크 삭제 ");
		
		try {
	        communityService.communityPickDelete(vo);
	        
	    } catch (Exception e) {
	        // 예외가 발생한 경우
	        e.printStackTrace();
	    }
		return "pickDeleteSuccess";
	}
	
	//북마크 본인확인 용도 CSS때문
	@ResponseBody
	@GetMapping("/communityPickCheck.do")
	public CommunityRecipeVO communityPickCheck(CommunityRecipeVO vo) {
		System.out.println("컨트롤러 CommunityPickedVO communityPickCheck() 실행_북마크 본인확인CSS ");
		System.out.println("vo : "+ vo);
		
		int communityId = vo.getCommunityId();
		System.out.println("communityId : " + communityId);
		
		CommunityRecipeVO userIdInfo = communityService.communityPickCheck(communityId);
		System.out.println("userIdInfo" + userIdInfo);
		
		return userIdInfo;
	}
	
	
	

	// 상품 이름으로 검색 조회
	@GetMapping("/selectProductByName.do")
	@ResponseBody
	public List<ProductVO> selectProductByName(String searchKeyword) {
	    System.out.println(">> selectProductByName()_검색 결과를 조회합니다");
	    System.out.println("searchKeyword : " + searchKeyword);
	
	    List<ProductVO> productList = communityService.selectProductByName(searchKeyword);
	    System.out.println("productList : " + productList);
	    return productList;
	}
	
	
	
	
}
