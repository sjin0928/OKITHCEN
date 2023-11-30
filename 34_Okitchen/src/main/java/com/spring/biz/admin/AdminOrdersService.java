package com.spring.biz.admin;

import java.util.List;

import com.spring.biz.community.CommunityVO;

public interface AdminOrdersService {

	AdminOrdersVO getOrdersStatus(AdminOrdersVO vo);
	List<AdminOrdersVO> getOrdersStatusList(); //리스트 가져오기
	List<AdminOrdersVO> getOrdersStatusListByUserId(AdminOrdersVO vo); //조건 검색으로 리스트 가져오기
	
	void updateOrderStatus(AdminOrdersVO vo); //배송상태 변경하기
	
	AdminOrdersVO totalAmountMonth(); //이번달 매출 조회
	AdminOrdersVO totalAmountYear(); //이번해 매출 조회
	
	List<CommunityVO> getcommunityListAdmin(); // 커뮤 전체 목록 조회하기
	
}
