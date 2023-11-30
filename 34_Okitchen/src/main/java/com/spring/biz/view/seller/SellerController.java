package com.spring.biz.view.seller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.spring.biz.product.ProductImageVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.RegisterProdVO;
import com.spring.biz.seller.Paging;
import com.spring.biz.seller.SellerService;
import com.spring.biz.seller.SellerVO;

@Controller
@RequestMapping("seller")
@SessionAttributes("sellerVO")
public class SellerController {
	
	@Autowired
	private SellerService sellerService;
	@Autowired
	private ProductService productService;
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	
	public SellerController() {
		System.out.println("--------SellerController() 실행");
	}
	// 로그인 - 아이디 비번 입력
	@RequestMapping("/sellerLogin.do")
	@ResponseBody
	public String sellerLogin (@RequestBody SellerVO vo, Model model, SessionStatus session) {
		System.out.println("login");
		System.out.println("입력정보 : " + vo);
		
		// 입력 비밀번호
		String inPw = vo.getSellerPassword();
		
		
		SellerVO sellerVO = null;
		sellerVO = sellerService.getSeller(vo);
		String getPw = sellerVO.getSellerPassword();
		
		System.out.println("pw 일치 결과 : " + pwdEncoder.matches(inPw, getPw));

		
		if(sellerVO != null && pwdEncoder.matches(inPw, getPw)) {
			if(sellerVO.getSellerStatus().equals("회원")) {
				
				System.out.println(">> 로그인 성공");
				model.addAttribute("sellerVO", sellerVO);
							
				return sellerVO.getSellerId();
			} else if(sellerVO.getSellerStatus().equals("정지")) {
				session.setComplete();
				return null;
			}

		} 
		System.out.println(">> 로그인 실패");
		session.setComplete();
		return null;
		
	}
	// 아이디 중복확인  후 페이지 이동
	@ResponseBody
	@PostMapping("/sellerIdCheck.do")
	public int sellerIdCheck (SellerVO vo) {
		
		System.out.println(">> 아이디 확인중");
		System.out.println(">> 입력값 : " + vo);
		int result = sellerService.sellerIdCheck(vo);
		
		if(vo.getSellerId().equals(null) || vo.getSellerId().isEmpty()) {
			result = -1;
		}
		
		System.out.println("result : " + result);
		
		return result;
	}
	// 로그인 페이지로 이동
	@GetMapping("/sellerLogin.do")
	public String sellerLogin () {
		
		return "../../sellerLogin";
	}
	// 회원가입 페이지로 이동
	@GetMapping("/sellerSignIn.do")
	public String sellerSignIn () {
		return "seller/sellerSignIn";
	}
	// 사업자 등록 번호 확인
	@RequestMapping(value="/sellerFindregistNum")
	@ResponseBody
	public int sellerFindregistNum (@RequestBody SellerVO vo) {
		int result = 0;
		System.out.println("입력값 : " + vo);
		
		result = sellerService.getSellerFindregistNum(vo);
		System.out.println(sellerService.getSellerFindregistNum(vo));
		
		return result;
	}
	
	// 회원가입
	@PostMapping("/sellerSignIn.do")
	public String sellerSignIn (SellerVO vo) {
		
		System.out.println(">> 회원가입 진행");
		
		//암호화
		vo.setSellerPassword(pwdEncoder.encode(vo.getSellerPassword()));
		vo.setSellerStatus("회원");
		
		sellerService.insertSeller(vo);
		System.out.println(vo);
		return "redirect:/sellerLogin.jsp";
	}
	// 아이디/비밀번호 찾기 페이지로 이동
	@GetMapping("/sellerFindIdGo.do")
	public String sellerFindIdGo () {

		return "seller/sellerIdFind";
	}
	@GetMapping("/sellerFindPwGo.do")
	public String sellerFindPwGo () {
		
		return "seller/sellerPwFind";
	}
	// 아이디 찾기
	@PostMapping("/sellerFindId.do")
	public String sellerFindId (SellerVO vo, Model model) {
		System.out.println(">> 아이디, 비밀번호 찾기 중");
		System.out.println("vo : " + vo);

		model.addAttribute("sellerId", null);
		SellerVO findVO = sellerService.findIdSeller(vo);
		StringBuilder sellerId = null;
		if(findVO != null) {
			System.out.println(">> 아이디 찾기 중");
			System.out.println("findVO : " + findVO);
			sellerId = new StringBuilder(findVO.getSellerId().substring(0, 3));
			System.out.println(sellerId);
			int length = findVO.getSellerId().length();
			System.out.println(length);
			for(int i = 4; i <= length; i++) {
				sellerId.append("*");
			}
			model.addAttribute("sellerId", sellerId);
			
			return "seller/sellerFindResult";
		} else {
			System.out.println();
			model.addAttribute("findVO", findVO);
			
			return "seller/sellerFindResult";
		}
			
	}
	// 비밀번호 찾기
		@PostMapping("/sellerFindPw.do")
		public String sellerFindPw (SellerVO vo, Model model) {
			System.out.println(">> 아이디, 비밀번호 찾기 중");
			System.out.println("vo : " + vo);
			//아이디 가져오기
			SellerVO findVO = sellerService.findPwSeller(vo);
			if (vo.getSellerId() != null) {
				System.out.println(">> 비밀번호 찾기 중");
				System.out.println("vo.getSellerId() : " + vo.getSellerId());
				
				System.out.println("findVO : " + findVO);
				
				if(findVO != null) {
					model.addAttribute("findVO", findVO);
					return "seller/sellerFindUpdate";
					
				} else {
					model.addAttribute("findVO", findVO);
					return "seller/sellerFindResult";
				}
			} else {
				model.addAttribute("findVO", findVO);
				return "seller/sellerFindResult";
			}
		}
	// 비밀번호 찾기 후 변경
	@PostMapping("/sellerPwUpdate.do")
	public String sellerPwUpdate (SellerVO vo, Model model) {
		System.out.println(">> 비밀번호 찾기 후 변경 중");
		System.out.println(vo);
		//암호화
		vo.setSellerPassword(pwdEncoder.encode(vo.getSellerPassword()));		
		
		System.out.println("vo : " + vo);
		
		sellerService.updatePwSeller(vo);
		model.addAttribute("sellerId", vo.getSellerId());
		return "seller/sellerFindUpResult";
	}
	// 로그아웃
	@GetMapping("/sellerLogout.do")
	public String sellerLogout (SessionStatus session) {
				
		session.setComplete();
		
		return "../../sellerLogin";
	}
	// 회원 정보 수정 전 비밀번호 확인 페이지 이동
	@GetMapping ("/sellerUpPwCheck.do")
	public String sellerUpPwCheck () {
		return "seller/sellerUpPwCheck";
	}
	// 회원정보 수정 전 비밀번호 체크
	@RequestMapping ("/sellerUpPwCheck.do")
	@ResponseBody
	public boolean sellerUpPwCheck (@RequestBody SellerVO vo, HttpServletRequest request) {
		
		// 입력 비밀번호, id
		String inPw = vo.getSellerPassword();
		String inId = vo.getSellerId();
		
		//session 정보 
		HttpSession httpSession = request.getSession(false);
		SellerVO sessionVO = (SellerVO)httpSession.getAttribute("sellerVO");
		
		System.out.println();
		String sessionPw = null;
		String sessionId = null;
		boolean result = false;
		// 비밀번호 확인
		if(sessionVO != null) {
			sessionPw = sessionVO.getSellerPassword();
			sessionId = sessionVO.getSellerId();
			
			System.out.println("pw 일치 결과 : " + pwdEncoder.matches(inPw, sessionPw));
			
			result = inId.equals(sessionId) && pwdEncoder.matches(inPw, sessionPw);
		}
		
		return result;
	}
	
	//회원 정보 수정
	@PostMapping(value = "/sellerUpdate.do")
	public String sellerUpdate (SellerVO vo, Model model) {
		//암호화
		int result = 0;
		SellerVO sellerVO = sellerService.getSeller(vo);
		if(sellerVO != null) {
			vo.setSellerPassword(pwdEncoder.encode(vo.getSellerPassword()));
			System.out.println("입력 받은 데이터 : " + vo);
			
			sellerService.updateSeller(vo);
			
			
			model.addAttribute("sellerVO", sellerVO);
			result = 1;
		}
		
		return "redirect:sellerUpdateResult.do?result=" + result;
	}
	
	// 회원 정보 수정 이동
	@GetMapping ("/sellerUpdateGo.do")
	public String sellerUpdate () {
		return "seller/sellerUpdate";
	}
	// 회원 정보 수정 이동
	@GetMapping ("/sellerUpdateResult.do")
	public String sellerUpdateResult (int result, Model model) {
		System.out.println(result);
		model.addAttribute("result", result);
		return "seller/sellerUpdate";
	}
	
	// 회원 탈퇴 페이지 이동
	@GetMapping ("/sellerWithdrawal.do")
	public String sellerWithdrawal () {
		return "seller/sellerWithdrawal";
	}
	// 회원 탈퇴(회원 상태 정지로 변경)
	@RequestMapping ("/sellerWithdrawal.do")
	@ResponseBody
	public int sellerWithdrawal (@RequestBody SellerVO vo, HttpServletRequest request, SessionStatus session) {
		HttpSession httpSession = request.getSession(false);
		SellerVO sessionVO = (SellerVO)httpSession.getAttribute("sellerVO");
		int result = 0;
		
		if(sessionVO != null) {
				
			String sessionId = sessionVO.getSellerId();
			String sessionPw = sessionVO.getSellerPassword();
			
			String InId = vo.getSellerId();
			String InPw = vo.getSellerPassword();
			System.out.println("입력 : " +  vo);
			System.out.println("세션 : " +  sessionVO);
			System.out.println("pw 일치 결과 : " + pwdEncoder.matches(InPw, sessionPw));
			
			if(sessionId.equals(InId) && pwdEncoder.matches(InPw, sessionPw)) {
				vo.setSellerStatus("정지");
				sellerService.updateSellerStatus(vo);
				session.setComplete();
				
				result = 1;
			}
		}
		return result;
	}
	
	// 상품리스트 페이지로 이동 (중복시 삭제)
	@GetMapping ("/productList.do")
	public String productList () {
		return "seller/productList";
	}
	// 파트너 리스트 첫 페이지
	@GetMapping ("/adminSellerGo.do")
	public String getSellerList (Model model) {
		Map<String, Integer> pMap = new HashMap<>();
		
		// 전체 회원 수
		int totalRecord = sellerService.getSellerCount();
		
		// 전체 페이지 수 구하기
		Paging pvo = new Paging();
		pvo.setTotalRecord(totalRecord);
		pvo.setTotalPage();
		int totalPage = pvo.getTotalPage();
		
		// 전체 블록 개수 구하기
		pvo.setTotalBlock();
		
		// 현재 블록의 시작, 끝 페이지 번호 구하기
		int nowPage =  pvo.getNowPage();
		int endPage =  pvo.getEndPage();
		System.out.println("nowPage" + nowPage + "endPage" + endPage);
		
		
		pvo.setBeginPage((pvo.getNowBlock() - 1) * pvo.getPagePerBlock() + 1);
		pvo.setEndPage(pvo.getNowBlock() * pvo.getPagePerBlock());
		
		if(nowPage > endPage) {
			pvo.setBeginPage(endPage + 1);
		}

		pvo.setEndPage(pvo.getNowBlock() * pvo.getPagePerBlock());
		
		if(nowPage > endPage) {
			pvo.setEndPage(pvo.getNowBlock() * pvo.getPagePerBlock());
		}
		if(pvo.getEndPage() > totalPage) {
			System.out.println("4.pvo.getTotalPage() : " + pvo.getTotalPage());
			pvo.setEndPage(pvo.getTotalPage());
		}
		
		// 현재 블록의 시작, 끝 페이지 번호 구하기
		pvo.setBeginPage((pvo.getNowBlock() - 1) * pvo.getPagePerBlock() + 1);
				
		
		// 현재 페이지 회원의 시작, 끝 번호
		pvo.setBegin();
		pvo.setEnd();
		pMap.put("begin", pvo.getBegin());
		pMap.put("end", pvo.getEnd());
		
		List<SellerVO> list = sellerService.getSellerList(pMap);		
		if(list != null) {
			for(SellerVO vo : list) {
				if(vo.getSellerChangeDate() == "" ||vo.getSellerChangeDate() == null ) {
					vo.setSellerChangeDate("-");
				}
			}
		}
		System.out.println("list : " + list);
		System.out.println("page : " + pvo);
		model.addAttribute("list", list);
		model.addAttribute("pvo", pvo);
				
		return "admin/adminSellerList";
	}
	
	// 파트너 리스트 선택 페이지
	@RequestMapping ("/adminSellerList.do")
	@ResponseBody
	public Map<String, Object> clickSellerList (@RequestParam int pageNum) {
		//System.out.println(requestMap.get("pageNum"));
		System.out.println("1.pageNum : " + pageNum);
		Map<String, Object> result = new HashMap<>();

		// 현재 페이지 구하기
		
		Map<String, Integer> pMap = new HashMap<>();
		
		//System.out.println("pageNum" + requestMap.get("pageNum"));
		//int pageNum = requestMap.get("pageNum");
		
		// 전체 회원 수
		int totalRecord = sellerService.getSellerCount();
		
		// 전체 페이지 수 구하기
		Paging pvo = new Paging();
		pvo.setTotalRecord(totalRecord);
		pvo.setTotalPage();
		System.out.println("2.pvo.getTotalPage() : " + pvo.getTotalPage());
		int totalPage = pvo.getTotalPage();
		
		// 선택된 페이지 입력
		pvo.setNowPage(pageNum);
		
		// 전체 블록 개수 구하기
		pvo.setTotalBlock();
				
		int nowPage =  pvo.getNowPage();
		int endPage =  pvo.getEndPage();
		int nowblock = pvo.getNowBlock();
		// 현재 블록 구하기
		if(nowPage > endPage) {
			pvo.setNowBlock(nowblock + 1);
		}
		System.out.println("3.pvo.getNowBlock()" + pvo.getNowBlock());
		
		// 현재 블록의 시작, 끝 페이지 번호 구하기
		pvo.setBeginPage((pvo.getNowBlock() - 1) * pvo.getPagePerBlock() + 1);
		if(nowPage > endPage) {
			pvo.setBeginPage(endPage + 1);
		}

		pvo.setEndPage(pvo.getNowBlock() * pvo.getPagePerBlock());
		
		if(nowPage > endPage) {
			pvo.setEndPage(pvo.getNowBlock() * pvo.getPagePerBlock());
		}
		if(pvo.getEndPage() > totalPage) {
			System.out.println("4.pvo.getTotalPage() : " + pvo.getTotalPage());
			pvo.setEndPage(pvo.getTotalPage());
		}
		
		// 현재 페이지 회원의 시작, 끝 번호
		pvo.setBegin();
		pvo.setEnd();
		pMap.put("begin", pvo.getBegin());
		pMap.put("end", pvo.getEnd());
		
		List<SellerVO> list = sellerService.getSellerList(pMap);
		// 탈퇴일 없으면 - 표시
		if(list != null) {
			for(SellerVO vo : list) {
				if(vo.getSellerChangeDate() == "" ||vo.getSellerChangeDate() == null ) {
					vo.setSellerChangeDate("-");
				}
			}
		}
		
		System.out.println("list : " + list);
		System.out.println("page : " + pvo);
		
		result.put("list", list);
		result.put("pvo", pvo);	
		
		
		return result;
	}
	
	// 231124- 상품 수정(박수진)
	
	//상품상세페이지로 이동
	@RequestMapping("/prodDetailSeller.do")
	private String productDetail(RegisterProdVO vo, Model model, HttpServletRequest request) throws Exception {
		System.out.println("======> productController.productDetail() 실행");
		System.out.println(">>> 화면 이동 - productDetail()");
		
		//판매자 정보 가져오기
		HttpSession httpSession = request.getSession(false);
		SellerVO sellerVO = (SellerVO)httpSession.getAttribute("sellerVO");
		System.out.println("sellerVO : " + sellerVO);
		
		//상품상세정보 가져오기
		int productId = vo.getProductId();
		vo = productService.selectOneProd(productId);
		System.out.println(">>> vo : " + vo);
		
		//상품 상세정보 모델에 추가
		model.addAttribute("vo", vo);
		
		//상세이미지 가져오기
		List<ProductImageVO> productImageList = productService.selectDetailImages(productId);
		
		//상세이미지 모델에 추가
		model.addAttribute("productImageList", productImageList);

	    return "seller/prodDetail"; //판매자의 상품 상세보기
    }
	
	// 수정페이지로 이동
	@GetMapping("/sellerProductUpdate.do")
	public String sellerProductUpdate (RegisterProdVO vo, Model model) throws Exception {
		System.out.println("상품 수정 페이지 이동중");
		System.out.println("입력된 데이터 : " + vo);
		RegisterProdVO prodVO = null;
		if (vo != null) {
			if(vo.getProductId() != 0) {
				prodVO = productService.selectOneProd(vo.getProductId());
				
				switch (prodVO.getCategoryName()) {
				case "vege":
					prodVO.setCategoryName("채소");
				case "fruit":
					prodVO.setCategoryName("과일");
				case "meat":
					prodVO.setCategoryName("정육/계란");
				case "seafood":
					prodVO.setCategoryName("해산물");
				case "snack":
					prodVO.setCategoryName("간식/디저트");
				case "bakary":
					prodVO.setCategoryName("베이커리");
				case "seasoning":
					prodVO.setCategoryName("조미료");
				case "drink":
					prodVO.setCategoryName("생수/음료");
				case "mealkit":
					prodVO.setCategoryName("간편식/샐러드");
				default:
					break;
				}
				
				List<ProductImageVO> PIList = null;
				PIList = productService.selectDetailImages(vo.getProductId());
				System.out.println("PIList : " + PIList);
				if(PIList != null) {
					model.addAttribute("PIList", PIList);					
				}
				
				model.addAttribute("prodVO", prodVO);
			}
		}
		System.out.println("db에서 받은 데이터 : " + prodVO);
		
		return "/seller/sellerProductUpdate";
	}
	
	// 상품 수정
	@RequestMapping(value = "/sellerUpdateProduct.do", method = RequestMethod.POST, consumes="multipart/form-data")
	public String sellerupdateProduct (Model model, MultipartFile file, RegisterProdVO inProdVO, @RequestParam("productPhotoFiles") List<MultipartFile> productPhotoFiles, HttpServletRequest request) throws Exception {
		System.out.println("---- 상품 수정 중");
		
		// session 저장값 호출
		HttpSession httpSession = request.getSession(false);
		SellerVO sessionVO = (SellerVO)httpSession.getAttribute("sellerVO"); 
		System.out.println("sessionVO : " + sessionVO);
		
		// 사용자 입력값 확인
		System.out.println("productPhotoFiles : " + productPhotoFiles);
		System.out.println("입력 값 확인 inProdVO : " + inProdVO);
		
		// DB 데이터 호출
		RegisterProdVO DBProdVO = productService.selectOneProd(inProdVO.getProductId());
		String getImage = DBProdVO.getImage();
		
		if(inProdVO != null) {
			System.out.println("1");
			// 할인 금액 입력
			if(inProdVO.getDiscountRate() != 0) {
				float discountRate = inProdVO.getDiscountRate();
				int price = inProdVO.getPrice();
				inProdVO.setDiscountedPrice((int)(price - (price * discountRate / 100)));
			}
			if(inProdVO.getStock() == 0) {
				inProdVO.setProductStatus("품절");
			}
			System.out.println("2");
			// 대표이미지 입력
			MultipartFile titleImage = inProdVO.getImageFile();
			if(titleImage != null) {
				// 원본파일명 구하기
				System.out.println("대표이미지");
				String titleFilename = titleImage.getOriginalFilename();
				System.out.println("원본 파일명 : " + titleFilename);
				
				// 저장 파일명 구하기
				String savedFileName = UUID.randomUUID().toString();
				System.out.println("저장 파일명 : " + savedFileName);
				
				// 서블릿 컨텍스트의 실제 경로를 얻어옴
				String uploadPath = request.getServletContext().getRealPath("/productImage/title");
				System.out.println("서블릿 컨텍스트의 실제 경로 : " + uploadPath);
				
				// 저장할 폴더 경로와 파일명을 합치기
				String destPathFile = uploadPath + File.separator + savedFileName;
				System.out.println("destPathFile : " + destPathFile);
				
				// 물리적 파일 복사
				titleImage.transferTo(new File(destPathFile));
				
				inProdVO.setImage(savedFileName);
				// 원본 파일명 없으면 파일 기존 파일로 저장
				if(titleFilename == "" || titleFilename == null) {
					inProdVO.setImage(getImage);
				}
				System.out.println("savedFileName" + savedFileName);
				System.out.println("getImage" + getImage);
				System.out.println("서버 전송 전 데이터" + inProdVO);
				productService.sellerUpdateProduct(inProdVO);
				System.out.println("3");
			}
			// 상세이미지 삭제 후 저장
			// 이미지 번호값 구해서 이미지 넣기
			List<ProductImageVO> getImageList = productService.selectDetailImages(inProdVO.getProductId());
			System.out.println("getImageList : " + getImageList);
			System.out.println("4");
			System.out.println("productPhotoFiles : " + productPhotoFiles.size());
			System.out.println("productPhotoFiles : " + productPhotoFiles.toString());
			
			
			if(productPhotoFiles != null && !productPhotoFiles.isEmpty()) {
				// 이미지 저장경로 및 파일 저장
				System.out.println("5");
				System.out.println(getImageList.size());
				String titleFilename = null;
				
				for(MultipartFile productPhotoFile : productPhotoFiles) {
							
					System.out.println("상세이미지");
					System.out.println("사진 파일 명(productPhotoFile) : " + productPhotoFile);
					
					// 원본 파일명
					titleFilename = productPhotoFile.getOriginalFilename();
					System.out.println("원본 파일명 : " + titleFilename);
					
					// 원본 파일명 없으면 파일 저장 없음
					if(titleFilename == "" || titleFilename == null) {
						continue;
					}
					// 저장 파일명
					String savedFileName = UUID.randomUUID().toString();
					System.out.println("저장파일명 : " + savedFileName);
					
					// 서블릿 컨텍스트의 실제 경로
					String uploadPath = request.getServletContext().getRealPath("/productImage/detail");
					System.out.println("서블릿 컨텍스트의 실제 경로 : " + uploadPath);
					
					// 저장할 폴더 경로와 파일명을 합치기
					String destPathFile = uploadPath + File.separator + savedFileName;
					System.out.println("destPathFile : " + destPathFile);
					
					// 물리적 파일 복사
					productPhotoFile.transferTo(new File(destPathFile));
					inProdVO.setProductPhoto(savedFileName);
					
					productService.registerProductFile(inProdVO);
					System.out.println("6");
					
				}
				// 저장할 파일이 있을경우 기존 이미지 삭제
				System.out.println("titleFilename : " + titleFilename);
				if(!titleFilename.isEmpty() && titleFilename != null) {
					for(ProductImageVO prodVO : getImageList) {
						productService.deleteProductImage(prodVO.getImageId());
					}
				}
			}
			model.addAttribute("prodVO", inProdVO);
			return "redirect:prodDetailSeller.do?productId=" + inProdVO.getProductId();
		}
		return "redirect:sellerProductUpdate.do";
	}
	
	// 상품 상태 수정
	@RequestMapping(value="/productStatusUpdate.do", method = RequestMethod.POST)
	@ResponseBody
	public String productStatusUpdate (@RequestBody RegisterProdVO vo, Model model) throws Exception {
		System.out.println("--상품 상태 수정중");
		System.out.println("입력된 데이터 : " + vo);
		if (vo != null) {
			if(vo.getProductId() != 0) {
				//db데이터
				productService.productStatusUpdate(vo);
				
			}
		}
		return vo.getProductStatus();
	}
	
	
}
