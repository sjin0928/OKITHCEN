package com.spring.biz.view.community;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.spring.biz.community.CommunityService;

/*	클래스 내의 요청처리 결과가 모두 @ResponseBody 처리됨 : @Controller와 @ResponseBody 어노테이션을 함께 사용하는 것과 동일한 효과를 갖습니다
 * 	@RestController를 사용하는 경우에는 메서드가 반환하는 값이 View를 감싸지 않고 직접 HTTP 응답의 본문으로 전송됩니다. 따라서 주로 JSON 형식의 데이터를 반환하는 API 엔드포인트를 정의할 때 사용됩니다.
 * 	Ajax 요청을 처리하는 컨트롤러가 단순한 데이터 반환에 중점을 둔다면 @RestController를 사용하는 것이 적절할 수 있습니다. 그러나 만약 전통적인 웹 애플리케이션에서 사용되는 View를 렌더링해야 한다면 @Controller를 사용하는 것이 일반적입니다.
 *  @RestController 어노테이션에는 경로를 지정할 수 있는 속성이 없습니다. 
 *  @RestController는 단순히 해당 클래스가 RESTful 웹 서비스의 엔드포인트를 처리하는 컨트롤러임을 나타냅니다. 따라서 경로를 명시적으로 지정할 수 없습니다.
 * */

@RestController
public class CommunityAjaxController {
	
	private CommunityService communityService;
	
	public CommunityAjaxController() {}
	
	@Autowired //생성자 주입이 필드 주입보다 이점이 많다. 같은 기능이지만 필드주입은 외부수정이 가능해서 불변성에 어긋난다.
	public void CommunityAjaxContoroller (CommunityService communityService) {
		System.out.println("===========> CommunityAjaxContoroller ()객체 생성");
		System.out.println("::: CommunityService communityService : " + communityService);
		this.communityService = communityService;
	}
	
	
	
	
}
