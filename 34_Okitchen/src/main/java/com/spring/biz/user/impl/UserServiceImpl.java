package com.spring.biz.user.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.biz.picked.PickedVO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.user.UserService;
import com.spring.biz.user.UsersVO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;
	
	//@Autowired
	//@Resource(name = "bcryptPasswordEncoder")
	private BCryptPasswordEncoder passwordEncoder;
	
	public UserServiceImpl() {
		System.out.println(">> UserServiceImpl() 객체 생성----");
	}
	
	// 아이디 중복 확인 
	@Override
	public UsersVO checkDuplicateId(UsersVO vo) {
		System.out.println(">> UserServiceImpl.checkDuplicateId : vo " + vo);
		return userDAO.checkDuplicateId(vo);
	}

	// 이메일 중복 확인 
	@Override
	public UsersVO checkDuplicateEMail(UsersVO vo) {
		System.out.println(">> UserServiceImpl.checkDuplicateEMail : vo " + vo);
		return userDAO.checkDuplicateEMail(vo);
	}

	// 핸드폰 인증 
	@Override
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {
		String api_key = "NCS0YDHJV5KDDMEZ";
	    String api_secret = "EWNGNRHJXIQ7ROXRGCGEHXEXCUQXJ5HW";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", userPhoneNumber);    // 수신전화번호
	    params.put("from", "01034489188");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "SMS");
	    params.put("text", "[Okitchen] 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	}

	// 일반 회원가입 
	@Override
	public int userJoin(UsersVO vo) {
		System.out.println(">> UserServiceImpl.userJoin : vo " + vo);
		return userDAO.userJoin(vo);
	}
	
	// 일반 회원 로그인 처리 
	// 아이디를 통해 암호화된 비밀번호 가져오기
	@Override
	public UsersVO userLogin(UsersVO vo) {
		System.out.println(">> UserServiceImpl.userLogin vo : " + vo);
		return userDAO.userLogin(vo);
	}
	
	// 아이디 찾기 (이름 & 핸드폰 번호)
	@Override
	public UsersVO findUserId(UsersVO vo) {
		System.out.println(">> UserServiceImpl.FindUserId vo : " + vo);
		return userDAO.findUserId(vo);
	}
	
	// 비밀번호 찾기 (아이디 & 핸드폰 번호)
	@Override
	public UsersVO findUserPwd(UsersVO vo) {
		System.out.println(">> UserServiceImpl.findUserPwd vo : " + vo);
		return userDAO.findUserPwd(vo);
	}

	// 회원 상태 변경 (탈퇴 Update)
	@Override
	public int updateUserStatus(UsersVO vo) {
		System.out.println(">> UserServiceImpl.updateUserStatus vo : " + vo);
		return userDAO.updateUserStatus(vo);
	}
	
	// 핸드폰 중복 확인
	@Override
	public UsersVO checkDuplicatePhoneNum(UsersVO vo) {
		System.out.println(">> UserServiceImpl.checkDuplicatePhoneNum vo : " + vo);
		return userDAO.checkDuplicatePhoneNum(vo);
	}

	// 회원 정보 수정 
	@Override
	public int modifyUser(UsersVO vo) {
		System.out.println(">> UserServiceImpl.modifyUser vo : " + vo);
		return userDAO.modifyUser(vo);
	}

	// 비밀번호 변경 
	@Override
	public int updatePassword(UsersVO vo) {
		System.out.println(">> UserServiceImpl.updatePassword vo : " + vo);
		return userDAO.updatePassword(vo);
	}

	// 찜한 리스트 조회
	@Override
	public List<PickedVO> getPickedList(UsersVO vo) {
		System.out.println(">> UserServiceImpl.getPickedList vo : " + vo);
		return userDAO.getPickedList(vo);
	}

	// 찜한 상품 정보 조회
	@Override
	public ProductVO getPickedProduct(int productId) {
		System.out.println(">> UserServiceImpl.getPickedList productId : " + productId);
		return userDAO.getPickedProduct(productId);
	}
}
