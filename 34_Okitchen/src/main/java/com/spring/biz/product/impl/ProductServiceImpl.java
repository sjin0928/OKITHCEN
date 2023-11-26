package com.spring.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.product.ProductImageVO;
import com.spring.biz.product.ProductService;
import com.spring.biz.product.RegisterProdVO;

//@Service : @Component 상속 확장 어노테이션
//비즈니스 로직 처리 서비스 영역에 사용
@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAO productDAO;
	
	public ProductServiceImpl() {
		System.out.println(">> ProductServiceImpl() 객체 생성");
	}

	@Override
	public void registerProduct(RegisterProdVO vo) throws Exception {
		productDAO.registerProduct(vo);
	}
	
	@Override
	public void registerProductFile(RegisterProdVO vo) throws Exception {
		productDAO.registerProductFile(vo);
	}

	@Override
	public List<RegisterProdVO> selectListSelProd(Object obj) throws Exception {
		return productDAO.selectListSelProd(obj);
	}

	@Override
	public RegisterProdVO selectOneProd(int productId) throws Exception {
		return productDAO.selectOneProd(productId);
	}

	@Override
	public List<ProductImageVO> selectDetailImages(int productId) throws Exception {
		return productDAO.selectDetailImages(productId);
	}
	
	//전시 가능한 모든 상품 가져오기
	@Override
	public List<RegisterProdVO> selectAllList() throws Exception {
		return productDAO.selectAllList();
	}
	
	//최근 등록순으로 조회
	@Override
	public List<RegisterProdVO> selectAcceptList() throws Exception {
		return productDAO.selectAcceptList();
	}
	
	//낮은 가격순으로 조회
	@Override
	public List<RegisterProdVO> selectLowPriceList() throws Exception {
		return productDAO.selectLowPriceList();
	}

	//할인율 높은순으로 조회
	@Override
	public List<RegisterProdVO> selectDiscList() throws Exception {
		return productDAO.selectDiscList();
	}

	@Override
	public void sellerUpdateProduct(RegisterProdVO inProdVO) throws Exception  {
		productDAO.sellerUpdateProduct(inProdVO);
		
	}

	@Override
	public void sellerUpdateProductImage(RegisterProdVO inProdVO) throws Exception {
		productDAO.sellerUpdateProductImage(inProdVO);
		
	}

	
}
