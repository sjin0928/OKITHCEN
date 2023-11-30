package com.spring.biz.user;

import java.util.List;

import com.spring.biz.picked.PickedVO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.user.UsersVO;

public interface UserService {
	// 아이디 중복 확인
	UsersVO checkDuplicateId(UsersVO vo); 
	
	// 이메일 중복 확인
	UsersVO checkDuplicateEMail(UsersVO vo);
	
	// 인증번호 보내기
	void certifiedPhoneNumber(String userPhoneNumber, int randomNumber);
	
	// 일반 회원가입 
	int userJoin(UsersVO vo);
	
	// 일반 회원 로그인 
	// 아이디를 통해 암호화된 비밀번호 가져오기 
	UsersVO userLogin(UsersVO vo);
	
	// 아이디 찾기 (이름 & 핸드폰 번호)
	UsersVO findUserId(UsersVO vo);
	
	// 비밀번호 찾기 (아이디 & 핸드폰 번호)
	UsersVO findUserPwd(UsersVO vo); 
	
	// 회원 상태 변경 (탈퇴 Update)
	int updateUserStatus(UsersVO vo);
	
	// 핸드폰 중복 확인 
	UsersVO checkDuplicatePhoneNum(UsersVO vo);
	
	// 회원정보수정 
	int modifyUser(UsersVO vo);
	
	//비밀번호 변경
	int updatePassword(UsersVO vo);
	
	// 찜한 리스트 조회 
	List<PickedVO> getPickedList(UsersVO vo);
	
	// 찜한 상품의 정보
	ProductVO getPickedProduct(int productId);
}
