package com.spring.biz.user.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.biz.picked.PickedVO;
import com.spring.biz.product.ProductVO;
import com.spring.biz.user.UsersVO;
@Repository 
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserDAO() {
		System.out.println(">> UserDAO() 객체 생성 ");
	}
	
	// 아이디 중복 확인
	public UsersVO checkDuplicateId(UsersVO vo) {
		System.out.println(">> MyBatis로 아이디 중복 확인 실행 ");
		return mybatis.selectOne("userDAO.checkDuplicateId", vo);
	}
	
	// 이메일 중복 확인
	public UsersVO checkDuplicateEMail(UsersVO vo) {
		System.out.println(">> MyBatis로 이메일 중복 확인 실행 ");
		return mybatis.selectOne("userDAO.checkDuplicateEMail", vo);
	}
	
	// 핸드폰 중복 확인
	public UsersVO checkDuplicatePhoneNum(UsersVO vo) {
		System.out.println(">> MyBatis로 핸드폰 중복 확인 실행 ");
		return mybatis.selectOne("userDAO.checkDuplicatePhoneNum", vo);
	}
	
	// 일반 회원가입
	public int userJoin(UsersVO vo) {
		System.out.println(">> MyBatis로 회원가입 실행 ");
		return mybatis.insert("userDAO.userJoin", vo);
	}

	// 아이디를 통해 암호화된 비밀번호 가져오기
	public UsersVO userLogin(UsersVO vo) {
		System.out.println(">> MyBatis로 로그인 실행 ");
		return mybatis.selectOne("userDAO.userLogin", vo);
	}
	
	// 아이디 찾기 (이름 & 핸드폰 번호)
	public UsersVO findUserId(UsersVO vo) {
		System.out.println(">> MyBatis로 이름&핸드폰과 일치하는 고객 가져오기 ");
		return mybatis.selectOne("userDAO.findUserId", vo);
	}
	
	// 비밀번호 찾기 (아이디 & 핸드폰 번호)
	public UsersVO findUserPwd(UsersVO vo) {
		System.out.println(">> MyBatis로 아이디&핸드폰과 일치하는 고객 가져오기 ");
		return mybatis.selectOne("userDAO.findUserPwd", vo);
	}
	
	// 회원 상태 변경 (탈퇴 Update)
	public int updateUserStatus(UsersVO vo) {
		System.out.println(">> MyBatis로 회원 탈퇴 실행");
		return mybatis.update("userDAO.updateUserStatus", vo);
	}
	
	// 회원 정보 수정 
	public int modifyUser(UsersVO vo) {
		System.out.println(">> MyBatis로 회원 정보 수정 실행");
		return mybatis.update("userDAO.modifyUser", vo);
	}
	
	// 비밀번호 변경 
	public int updatePassword(UsersVO vo) {
		System.out.println(">> MyBatis로 비밀번호 변경 실행");
		return mybatis.update("userDAO.updatePassword", vo);
	}

	public List<PickedVO> getPickedList(UsersVO vo) {
		System.out.println(">> MyBatis로 찜한 리스트 조회 실행");
		return mybatis.selectList("userDAO.selectPickedList", vo);
	}

	public ProductVO getPickedProduct(int productId) {
		System.out.println(">> MyBatis로 찜한 상품 정보 조회 실행");
		return mybatis.selectOne("userDAO.selectPickedProduct", productId);
	}
	
}