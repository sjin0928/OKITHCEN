package com.spring.biz.picked;

public interface PickedService {
	int insertPicked(PickedVO vo); // 찜 추가 
	int deletePicked(PickedVO vo); // 찜 삭제
	PickedVO selectPicked(PickedVO vo); // 찜한 상품 여부 확인(상세페이지로 갈 때 필요)
}
