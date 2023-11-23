<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<script>

</script>
</head>
<body>
\${vo } : ${vo } <hr>
\${sellerVO} : ${sellerVO } <hr>
\${productImageList } : ${productImageList } <hr>
	<div id="container">
		<h1>상세보기 [prodDetail.jsp]</h1>
		<hr>
	</div>
	<div id="top">

		<div id="body" class="css-n48rgu ex9g73v0">
	
		<div class="body-wrap" >
			<div id="main" class="main">
			    <div id="product-img" class="product-img">
			    	<img alt="대표이미지" src="${pageContext.request.contextPath}/productImage/title/${vo.image}"/>
			    </div>
			    <section class="info-block">
				    <div id="prod-title-wrap">
				        <div id="prod-title">
				          <h1>[${vo.brand }] ${vo.title }</h1>
						</div>
	  				</div>
			        <h2 class="prod-price-info">
					  	<c:choose>
						    <c:when test="${vo.discountRate != 0}">
						        <span id="prod-dc">${vo.discountRate }%</span>
						        <span id="prod-price">${vo.discountedPrice}</span>
						        <span id="prod-unit">원</span>
						    </c:when>
						    <c:otherwise>
						        <span id="prod-price">${vo.price}</span>
						        <span id="prod-unit">원</span>
						    </c:otherwise>
						</c:choose>
						
						<!-- 할인율이 0보다 큰 경우에만 할인 전 가격도 표시 -->
						<c:if test="${vo.discountRate > 0 }">
						    <span id="defore-dc">
						        <span class="defore-dc-span" style="color: #b5b5b5">${vo.price}원</span>
						    </span>
						</c:if>
					</h2>
					<div id="info-table" class="css-iqoq9n e6qx2kx2">
			            <div class="seller">
			              <div class="sellerColumn">판매자</div>
			              <div class="seller-info">
			                <p class="seller-name">${sellerVO.companyName}</p>
			              </div>
			            </div>
			            <div class="origin">
			              <div class="originColumn">원산지</div>
			              <div class="origin-info">
			                <p class="origin-content">${vo.origin }</p>
			              </div>
            			</div>
			            <div class="stock">
			              <div class="stockColumn">재고</div>
			              <div class="stock-info">
			                <p class="stock-content">${vo.stock }개</p>
			              </div>
            			</div> 
			            <div class="status">
			              <div class="statusColumn">제품상태</div>
			              <div class="status-info">
			                <p class="approvalStatus-content"> - ${vo.approvalStatus }</p>
			                <p class="productStatus-content"> - ${vo.productStatus }</p>
			              </div>
            			</div> 
			            <div class="manufactDate">
			              <div class="manufactColumn">제조일자</div>
			              <div class="manufactDate-info">
			                <p class="manufactDate-content">
			                  ${vo.manufacturingDate }
			                </p>
			              </div>
			            </div>
			            <div class="expDate">
			              <div class="expDateColumn">유통기한(또는 소비기한)정보</div>
			              <div class="expDate-info">
			                <p class="expDate-content">
			                  ${vo.expirationDate }
			                </p>
			              </div>
			            </div>
			            <div class="submitDate">
			              <div class="submitDateColumn">상품등록신청일</div>
			              <div class="submitDate-info">
			                <p class="submitDate-content">
			                  ${vo.submitDate }
			                </p>
			              </div>
			            </div>
			            <div class="caution">
			              <div class="cautionColumn">주의사항</div>
			              <div class="caution-info">
			                <p class="caution-content">
			                  ${vo.caution }
			                </p>
			              </div>
			            </div>
			            <div class="notice">
			              <div class="noticeColumn">안내사항</div>
			              <div class="notice-info">
			                <p class="notice-content">
			                  ${vo.notification }
			                </p>
			              </div>
			            </div>
		                <c:if test="${vo.optionCheck == 'Y'}">
				            <div class="option">
				              <div class="optionColumn">상품선택</div>
				              <div class="option-info">
					                <div class="input-box option">
					                	<div class="input" id="input">
							                <select name="optionName" id="optionName">
							                	<option disabled selected>상품을 선택해주세요</option>
							                	<option>
							                		<span>[${vo.brand }] ${vo.optionName }</span>
							                		<c:choose>
													    <c:when test="${vo.discountRate != 0}">
													        <span id="prod-price">${vo.price}원</span>
													        <span id="prod-price">${discountedPrice}</span>
													        <span id="prod-unit">원</span>
													        <p class="stock-content">${vo.optionStock }개</p>
													    </c:when>
													    <c:otherwise>
													        <!-- 할인율이 0이면 그냥 원래 가격을 표시 -->
													        <span id="prod-price">${vo.price}</span>
													        <span id="prod-unit">원</span>
													        <p class="stock-content">${vo.optionStock }개</p>
													    </c:otherwise>
													</c:choose>
							                	</option>
							                </select>
					                	</div>
					                </div>
				              </div>
				            </div>
		                </c:if>
			          </div>
					<!-- End of info-table -->
				</section>
				</div>
				<!-- End of main -->
        		
        		
        		
        		<div id="product-desc">
		        <div id="description">
		          <div class="description-wrap">
		            <img alt="상품설명이미지" src="${pageContext.request.contextPath}/productImage/detail/${productImageList[0].productPhoto}" />
		          </div>
		          <div class="content-wrap">
		          	<h3>
		          		[${vo.brand }] 
		          		<br>
		          		${vo.title }
		          	</h3>
		          	<hr>
		          	<p class="content">
		          		${vo.content }
		          	</p>
		          </div>
		          <c:forEach var="productImage" items="${productImageList}" varStatus="loop">
				    <c:if test="${loop.index > 0}">
				        <img alt="상세정보이미지" src="${pageContext.request.contextPath}/productImage/detail/${productImage.productPhoto}" />
				    </c:if>
				  </c:forEach>
		          
		          <!-- 수정하기 / 판매종료하기 -->
		          <!-- <div class="update_button">
		          	<button class="update_prod">수정</button>
                    <button class="update_status" id="sendBtn">등록</button>
		          </div> -->
		          <div class="update_button">
		          	<button class="update_prod">수정</button>
                    <button class="update_status">상태변경</button>
		          </div>
		          <!-- 버튼 컨트롤러에 연결해야됨~~ -->
		          
		        </div>
        		<!-- End of description -->
        		
       		</div>
			<!-- End of body-wrap -->
       		
      	</div>
		<!-- End of body -->
      
     </div>
	 <!-- End of top -->
	          
</body>
</html>