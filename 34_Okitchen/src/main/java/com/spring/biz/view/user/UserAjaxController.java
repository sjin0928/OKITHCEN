package com.spring.biz.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.biz.user.UserService;
import com.spring.biz.user.UsersVO;


@RestController
@RequestMapping("/user")
public class UserAjaxController {
	@Autowired // 필드에서 객체 주입
	private UserService userService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	// 중복 아이디 확인 
	@RequestMapping("/getCheckDuplicateId.do")
	public boolean getCheckDuplicateId(UsersVO vo) {
		System.out.println(">> UserAjaxController.getCheckDuplicateId() 실행");
		UsersVO checkedId = userService.checkDuplicateId(vo);
		
		if (checkedId == null) { // 중복되는 아이디가 없을 경우 ture 리턴 
			System.out.println(">> 중복 아이디 없음");
			return true;
		} else { // 해당 아이디가 있는 경우(중복)
			System.out.println(">> 중복 아이디 있음");
			return false; 
		}	
	}
	
	// 중복 이메일 확인 
	@RequestMapping("/getCheckDuplicateEmail.do")
	public boolean getCheckDuplicateEmail(UsersVO vo) {
		System.out.println(">> UserAjaxController.getCheckDuplicateEmail() 실행");
		UsersVO checkedEmail = userService.checkDuplicateEMail(vo);
		
		if (checkedEmail == null) { // 중복되는 이메일 없을 경우 ture 리턴 
			System.out.println(">> 중복 이메일 없음");
			return true;
		} else { // 해당 이메일 있는 경우(중복)
			System.out.println(">> 중복 이메일 있음");
			return false; 
		}	
	}
	
	
	// 휴대폰 인증 보내기 (회원가입/핸드폰 번호 변경) 
	@RequestMapping("/sendAuthenticationMsg.do")
	public String sendSMS(UsersVO vo) {
		System.out.println(">> UserAjaxController.sendSMS() 실행");
		System.out.println("휴대폰 번호 확인 : " + vo.getUserPhonenum());
		
		// 휴대폰 번호 중복확인 
		UsersVO checkedPhoneNum = userService.checkDuplicatePhoneNum(vo);
		
		if(checkedPhoneNum == null) { // 중복이 없는 경우 
			String userPhoneNumber = vo.getUserPhonenum();
			
			int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성

			userService.certifiedPhoneNumber(userPhoneNumber,randomNumber);
			
			return Integer.toString(randomNumber);
		} else {
			System.out.println(">> 핸드폰 번호 중복 ");
			System.out.println(">> 중복 데이터 : " + checkedPhoneNum);
			return "no";
		}
		
	}
	
	// 휴대폰 인증 보내기 (아이디 찾기) 
	@RequestMapping("/findSendAuthenticationMsg.do")
	public String FindSendSMS(UsersVO vo) {
		System.out.println(">> UserAjaxController.FindSendSMS() 실행");
		System.out.println("휴대폰 번호 확인 : " + vo.getUserPhonenum());
		// 이름과 핸드폰 번호에 일치하는 고객 정보가 있는지 확인 
		UsersVO findUserIdVo = userService.findUserId(vo);
		System.out.println(">> findUserIdVo : " + findUserIdVo);
		
		// 인증번호 보내기 : 이름과 핸드폰 번호가 일치할 때 실행되어야 함 
		if(findUserIdVo != null) { // 입력한 이름과 핸드폰 번호에 일치하는 고객정보가 있을 경우 
			String userPhoneNumber = vo.getUserPhonenum();
			
			int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성

			userService.certifiedPhoneNumber(userPhoneNumber,randomNumber);
			
			return Integer.toString(randomNumber);
		} else { // 고객정보가 없는 경우 
			System.out.println(">> 이름과 번호 일치하는 고객 없음 ");
			return "no";
		}

	}	
	
	// 휴대폰 인증 보내기 (비밀번호 찾기)
	@RequestMapping("/findPwdSendAuthenticationMsg.do")
	public String FindPwdSendSMS(UsersVO vo) {
		System.out.println(">> UserAjaxController.FindPwdSendSMS() 실행");
		System.out.println("넘어온 데이터 확인 : " + vo);
		// 아이디와 핸드폰 번호에 일치하는 고객 정보가 있는지 확인 
		UsersVO findUserPwdVo = userService.findUserPwd(vo);
		System.out.println(">> findUserPwdVo : " + findUserPwdVo);
		
		// 인증번호 보내기 : 아이디와 핸드폰 번호가 일치할 때 실행되어야 함 
		if(findUserPwdVo != null) {
			String userPhoneNumber = vo.getUserPhonenum();
			
			int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성

			userService.certifiedPhoneNumber(userPhoneNumber,randomNumber);
			
			return Integer.toString(randomNumber);
		}else { // 고객정보가 없는 경우 
			System.out.println(">> 이름과 번호 일치하는 고객 없음 ");
			return "no";
		}
		
	}
	
	
	// 아이디 찾기
	@RequestMapping("/showFoundUserId.do")
	public UsersVO showFoundUserId(UsersVO vo) {
		System.out.println(">> UserAjaxController.showFoundUserId() 실행");
		// 이름과 핸드폰 번호를 통해 일치하는 vo 전달 
		// 인증번호 받을 때 고객 정보가 있는지 확인했기 때문에 회원 정보 바로 전달해주면 됨 
		System.out.println(">> 아이디 찾기 vo : " + userService.findUserId(vo));
		return userService.findUserId(vo);
	}
	
	// 회원가입
	@RequestMapping("/userJoin.do")
	public int userJoin(UsersVO vo) { 
		System.out.println(">> UserController.userJoin() >> 회원가입 시작");
		System.out.println(">> 넘어온 데이터 확인 : " + vo); 
		
		// 비밀번호 암호화 처리 
		//passwordEncoder = new BCryptPasswordEncoder();
		vo.setUserPassword(passwordEncoder.encode(vo.getUserPassword()));
		System.out.println(">> 비밀번호 암호화 처리 후 : " + vo);
		
		// 회원가입 후 페이지 index로 이동 redirect 사용 시 resolver 안 태움
		return userService.userJoin(vo);
	}
	
	//로그인 
	@RequestMapping("/userLogin.do")
	public boolean userLogin(UsersVO vo,HttpSession session) {
		System.out.println(">> UserController.userLogin() 로그인 시작");
		System.out.println(">> 넘어온 데이터 확인 : " + vo);
		
		// 비밀번호 복호화 처리 
		//passwordEncoder = new BCryptPasswordEncoder();
		
		// DB에서 가져온 암호화된 비밀번호 (아이디를 통해 가져옴) 
		UsersVO loginUser = userService.userLogin(vo);
		
		System.out.println(">> 아이디를 통해 가져온 vo : " + loginUser);
		
		// 사용자가 입력한 비밀번호화 DB에 저장된 암호화된 비밀번호를 비교 (일치 시 true 리턴) 
		if(loginUser != null && passwordEncoder.matches(vo.getUserPassword(), loginUser.getUserPassword())) { 
			System.out.println(">> 비밀번호 일치, 로그인 처리 ");
			session.setAttribute("loginUser", loginUser); //세션에 로그인 정보 저장
			System.out.println(">> 세션에 저장한 회원 정보 : " + loginUser);
			return true;
		} else {
			System.out.println(">> 로그인 실패 아이디 없음");
			return false;
		}
		
	}
	
	
	// 회원정보수정-비밀번호 확인 
	@RequestMapping("/confirmPassword.do")
	public boolean confirmPassword(UsersVO vo,HttpSession session) {
		System.out.println(">> UserController.confirmPassword() 회원정보수정,비밀번호 확인 시작");
		System.out.println(">> 넘어온 데이터 확인 : " + vo); // 아이디, 비밀번호
		
		UsersVO loginUser = (UsersVO)session.getAttribute("loginUser"); // 현재 로그인 정보
		
		// 사용자가 입력한 비밀번호화 DB에 저장된 암호화된 비밀번호를 비교 (일치 시 true 리턴)
		if(passwordEncoder.matches(vo.getUserPassword(), loginUser.getUserPassword())) {
			System.out.println(">> 비밀번호 일치 ");
			return true;
		} else { // 비밀번호가 다를 경우
			System.out.println(">> 비밀번호 불일치 ");
			return false;
		}
	}
	
	// 회원정보수정 
	@RequestMapping("/modifyUser.do")
	public boolean modifyUser(UsersVO vo,HttpSession session) {
		// vo : 수정 폼에서 넘어온 데이터들  (수정 가능 항목 : 이름 / 비밀번호 / 전화번호 / 이메일 / 생일 / 성별)
		UsersVO loginUser = (UsersVO)session.getAttribute("loginUser"); // 현재 로그인 정보
		System.out.println(">> 수정 전 : " + loginUser);
		System.out.println(">> 수정할 폼 : " + vo);
		
		// 수정 요청 데이터와 현재 데이터 같지 않으면 set
		if(!vo.getUserName().equals(loginUser.getUserName())) { // 이름
			loginUser.setUserName(vo.getUserName());
		}
		if(!vo.getUserPhonenum().equals(loginUser.getUserPhonenum())) { // 전화번호 
			loginUser.setUserPhonenum(vo.getUserPhonenum());
		}
		if(!vo.getUserEmail().equals(loginUser.getUserEmail())) { // 이메일
			loginUser.setUserEmail(vo.getUserEmail());
		}
		if(!vo.getUserBirth().equals(loginUser.getUserBirth())) { // 생일
			loginUser.setUserBirth(vo.getUserBirth());
		}
		if(!vo.getUserGender().equals(loginUser.getUserGender())) { // 성별
			loginUser.setUserGender(vo.getUserGender());
		}
		
		// (비밀변호를 변경한다면 / 현재 비밀번호 일치하는 지 확인하고, newPassword를 다시 암호화해서 setPassword 후 update 해야함 )
		// !vo.getNewPassword().equals("") : password 입력 안 하면 null이 아니라 ""로 넘어옴 
		if(!vo.getNewPassword().equals("") && passwordEncoder.matches(vo.getUserPassword(), loginUser.getUserPassword())) {
			System.out.println(">> 비밀번호 일치 & 새비밀번호 있음 ");
			System.out.println(">> 비밀번호 변경 전 (암호화) : " + loginUser.getUserPassword());
			loginUser.setUserPassword(passwordEncoder.encode(vo.getNewPassword())); // 새로운 비밀번호를 암호화하여 패스워드에 저장 
			System.out.println(">> 새로운 비밀번호(암호화 후) : " + loginUser.getUserPassword());
		} else if(!vo.getNewPassword().equals("") && !passwordEncoder.matches(vo.getUserPassword(), loginUser.getUserPassword())) {
			System.out.println(">> 비밀번호 일치하지 않음");
			return false;
		} else {
			System.out.println(">> 비밀번호 변경 안 함");
		}
		
		System.out.println(">> 최종 수정할 데이터 : " + loginUser);
		int result = userService.modifyUser(loginUser);
		System.out.println(">> 수정 결과 (1- 성공 ) : " + result);
		
		return true;
	}

	// 비밀번호 재설정
	@RequestMapping("/resetUserPwd.do")
	public boolean resetUserPwd(UsersVO vo) {
		System.out.println(">> UserAjaxController.showFoundUserId() 실행");
		// 넘어오는 데이터 : userId, userPhonenum ,userPassword(새롭게 저장할 비밀번호)
		UsersVO resetUserPwd = userService.findUserPwd(vo);
		System.out.println(">> 비밀번호 변경할 user : " + resetUserPwd);
		// 새로운 비밀번호랑 이전 비밀번호가 같을 경우 alert창 띄우기 위함
		if(passwordEncoder.matches(vo.getNewPassword(), resetUserPwd.getUserPassword())) { 
			System.out.println(">> 새로운 비밀번호와 기존 비밀번호가 동일함 ");
			return false;
		}else {
			// 비밀번호 변경 처리 
			System.out.println(">> 비밀번호가 변경 처리 완료");
			resetUserPwd.setUserPassword(passwordEncoder.encode(vo.getUserPassword()));
			userService.updatePassword(resetUserPwd);
			return true;
		}

	}
}
