--------------------------------------------------------
--  파일이 생성됨 - 목요일-11월-30-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADDRESS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."ADDRESS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ASK_NAS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."ASK_NAS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ASK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."ASK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CART_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."CART_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 33 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMUNITY_PICKED_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."COMMUNITY_PICKED_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMUNITY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."COMMUNITY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FAQ_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."FAQ_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INQUIRY_ANS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."INQUIRY_ANS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INQUIRY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."INQUIRY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence OPTIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."OPTIONS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 19 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDER_DETAIL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."ORDER_DETAIL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PICKED_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."PICKED_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_IMAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."PRODUCT_IMAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 169 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."PRODUCT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 82 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RECIPE_INFO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."RECIPE_INFO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 16 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "OKITCHEN"."REVIEW_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."ADMIN" 
   (	"ADMIN_ID" VARCHAR2(40 BYTE), 
	"ADMIN_PWD" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table BOOKMARK
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."BOOKMARK" 
   (	"BOOKMARK_ID" NUMBER(4,0), 
	"COMMUNITY_ID" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."CART" 
   (	"CART_ID" NUMBER(4,0), 
	"PRODUCT_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"QUANTITY" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Table COMMUNITY
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."COMMUNITY" 
   (	"COMMUNITY_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"COMM_HIT" NUMBER(10,0), 
	"COMM_DATE" DATE DEFAULT SYSDATE, 
	"COMM_IMAGE" VARCHAR2(500 BYTE), 
	"PRODUCT_ID" NUMBER(4,0), 
	"COMM_CONTENT" VARCHAR2(4000 BYTE), 
	"TITLE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table COMMUNITY_PICKED
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."COMMUNITY_PICKED" 
   (	"COMM_PICK_ID" NUMBER(4,0), 
	"COMMUNITY_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table INQUIRY
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."INQUIRY" 
   (	"INQ_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"PRODUCT_ID" NUMBER(4,0), 
	"INQ_PRIVATE" VARCHAR2(20 BYTE), 
	"INQ_ANSWERED" VARCHAR2(20 BYTE), 
	"INQ_DATE" DATE DEFAULT SYSDATE, 
	"INQ_CONTENT" VARCHAR2(3000 BYTE), 
	"INQ_TITLE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table INQUIRY_ANS
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."INQUIRY_ANS" 
   (	"ANS_ID" NUMBER(4,0), 
	"ANS_CONTENT" VARCHAR2(3000 BYTE), 
	"ANS_DATE" DATE, 
	"INQ_ID" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."NOTICE" 
   (	"NOTICE_ID" NUMBER(4,0), 
	"NOTICE_DATE" DATE, 
	"NOTICE_CONTENT" VARCHAR2(3000 BYTE), 
	"NOTICE_TITLE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table OPTIONS
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."OPTIONS" 
   (	"OPTION_ID" NUMBER(4,0), 
	"PRODUCT_ID" NUMBER(4,0), 
	"OPTION_NAME" VARCHAR2(50 BYTE), 
	"OPTION_PRICE" NUMBER(7,0), 
	"OPTION_STOCK" NUMBER(3,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."ORDERS" 
   (	"ORDER_ID" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"ORDER_STATUS" VARCHAR2(50 BYTE), 
	"ORDER_DATE" DATE DEFAULT SYSDATE, 
	"MEMO" VARCHAR2(200 BYTE), 
	"TOTAL_CNT" NUMBER(3,0), 
	"TOTAL_PRICE" NUMBER(7,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORDER_DETAIL
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."ORDER_DETAIL" 
   (	"ORDER_DETAIL_ID" NUMBER(4,0), 
	"QUANTITY" NUMBER(3,0), 
	"PRODUCT_PRICE" NUMBER(7,0), 
	"PRODUCT_ID" NUMBER(4,0), 
	"OPTION_ID" NUMBER(4,0), 
	"REVIEW_STATUS" VARCHAR2(40 BYTE), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"ORDER_ID" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PICKED
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."PICKED" 
   (	"PICK_ID" NUMBER(4,0), 
	"USER_ID" VARCHAR2(40 BYTE), 
	"PRODUCT_ID" NUMBER(4,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."PRODUCT" 
   (	"PRODUCT_ID" NUMBER(4,0), 
	"SELLER_ID" VARCHAR2(40 BYTE), 
	"BRAND" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"IMAGE" VARCHAR2(100 BYTE), 
	"PRICE" NUMBER(7,0), 
	"DISCOUNT_RATE" NUMBER(3,0), 
	"ACCEPT_DATE" DATE, 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"APPROVAL_STATUS" VARCHAR2(30 BYTE), 
	"PRODUCT_STATUS" VARCHAR2(50 BYTE), 
	"SUBMIT_DATE" DATE, 
	"OPTION_CHECK" VARCHAR2(20 BYTE), 
	"STOCK" NUMBER(3,0), 
	"CATEGORY_NAME" VARCHAR2(40 BYTE), 
	"CAUTION" VARCHAR2(1000 BYTE), 
	"NOTIFICATION" VARCHAR2(3000 BYTE), 
	"EXPIRATION_DATE" DATE, 
	"MANUFACTURING_DATE" DATE, 
	"ORIGIN" VARCHAR2(40 BYTE), 
	"DISCOUNTED_PRICE" NUMBER(7,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCT_IMAGE
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."PRODUCT_IMAGE" 
   (	"IMAGE_ID" NUMBER(4,0), 
	"PRODUCT_ID" NUMBER(4,0), 
	"PRODUCT_PHOTO" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table RECIPE_INFO
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."RECIPE_INFO" 
   (	"PIC_ID" NUMBER(4,0), 
	"COMMUNITY_ID" NUMBER(4,0), 
	"RECIPE_PHOTO" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."REVIEW" 
   (	"REVIEW_ID" NUMBER(4,0), 
	"ORDER_DETAIL_ID" NUMBER(4,0), 
	"REVIEW_IMAGE" VARCHAR2(100 BYTE), 
	"REVIEW_CONTENT" VARCHAR2(3000 BYTE), 
	"REVIEW_DATE" DATE, 
	"USER_ID" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table SELLER
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."SELLER" 
   (	"SELLER_ID" VARCHAR2(40 BYTE), 
	"COMPANY_NAME" VARCHAR2(50 BYTE), 
	"REPRESENTATIVE" VARCHAR2(40 BYTE), 
	"CUSTOMER_CENTER" VARCHAR2(50 BYTE), 
	"CUSTOMER_EMAIL" VARCHAR2(40 BYTE), 
	"REGISTRATION_NUM" VARCHAR2(50 BYTE), 
	"SELLER_PASSWORD" VARCHAR2(100 BYTE), 
	"SELLER_TYPE" VARCHAR2(20 BYTE), 
	"SELLER_STATUS" VARCHAR2(30 BYTE), 
	"SELLER_REGDATE" DATE DEFAULT SYSDATE, 
	"SELLER_CHANGE_DATE" DATE DEFAULT NULL
   ) ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "OKITCHEN"."USERS" 
   (	"USER_ID" VARCHAR2(40 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"USER_PASSWORD" VARCHAR2(100 BYTE), 
	"USER_EMAIL" VARCHAR2(40 BYTE), 
	"USER_BIRTH" VARCHAR2(30 BYTE), 
	"USER_STATUS" VARCHAR2(30 BYTE), 
	"USER_DATE" DATE DEFAULT SYSDATE, 
	"USER_GENDER" VARCHAR2(20 BYTE), 
	"USER_ADDRESS" VARCHAR2(150 BYTE), 
	"USER_PHONENUM" VARCHAR2(50 BYTE)
   ) ;
REM INSERTING into OKITCHEN.ADMIN
SET DEFINE OFF;
REM INSERTING into OKITCHEN.BOOKMARK
SET DEFINE OFF;
REM INSERTING into OKITCHEN.CART
SET DEFINE OFF;
Insert into OKITCHEN.CART (CART_ID,PRODUCT_ID,USER_ID,QUANTITY) values (28,44,'dmlwls123',1);
Insert into OKITCHEN.CART (CART_ID,PRODUCT_ID,USER_ID,QUANTITY) values (15,18,'chohee1031',8);
Insert into OKITCHEN.CART (CART_ID,PRODUCT_ID,USER_ID,QUANTITY) values (23,18,'wjsdmlwls',3);
Insert into OKITCHEN.CART (CART_ID,PRODUCT_ID,USER_ID,QUANTITY) values (24,44,'wjsdmlwls',4);
REM INSERTING into OKITCHEN.COMMUNITY
SET DEFINE OFF;
Insert into OKITCHEN.COMMUNITY (COMMUNITY_ID,USER_ID,COMM_HIT,COMM_DATE,COMM_IMAGE,PRODUCT_ID,COMM_CONTENT,TITLE) values (6,'dmlwls123',0,to_date('23/11/30','RR/MM/DD'),'41817adc-ed82-40fb-81f4-c3919bda9911',36,null,'#꼬깔콘');
Insert into OKITCHEN.COMMUNITY (COMMUNITY_ID,USER_ID,COMM_HIT,COMM_DATE,COMM_IMAGE,PRODUCT_ID,COMM_CONTENT,TITLE) values (7,'dmlwls123',0,to_date('23/11/30','RR/MM/DD'),'bb95d773-69c2-4428-b0ad-2bd8a51f791b',50,null,'#야채파티');
Insert into OKITCHEN.COMMUNITY (COMMUNITY_ID,USER_ID,COMM_HIT,COMM_DATE,COMM_IMAGE,PRODUCT_ID,COMM_CONTENT,TITLE) values (8,'dmlwls123',0,to_date('23/11/30','RR/MM/DD'),'96215619-3c2f-468f-8bc7-02480d7abad6',82,null,'#파티에 쓰는 야채들');
Insert into OKITCHEN.COMMUNITY (COMMUNITY_ID,USER_ID,COMM_HIT,COMM_DATE,COMM_IMAGE,PRODUCT_ID,COMM_CONTENT,TITLE) values (4,'dmlwls123',0,to_date('23/11/30','RR/MM/DD'),'cce67c2b-ae3f-4a62-8a3c-99468daae6c8',36,'ㅇㅇ','#스낵');
Insert into OKITCHEN.COMMUNITY (COMMUNITY_ID,USER_ID,COMM_HIT,COMM_DATE,COMM_IMAGE,PRODUCT_ID,COMM_CONTENT,TITLE) values (5,'dmlwls123',0,to_date('23/11/30','RR/MM/DD'),'d26c4529-b8bb-4ea6-bb32-20d51c6ff801',64,null,'#바게트');
Insert into OKITCHEN.COMMUNITY (COMMUNITY_ID,USER_ID,COMM_HIT,COMM_DATE,COMM_IMAGE,PRODUCT_ID,COMM_CONTENT,TITLE) values (9,'dmlwls123',0,to_date('23/11/30','RR/MM/DD'),'0ef93714-abd6-48a5-acdc-562e19bcad23',50,null,'#아보카도 파티');
Insert into OKITCHEN.COMMUNITY (COMMUNITY_ID,USER_ID,COMM_HIT,COMM_DATE,COMM_IMAGE,PRODUCT_ID,COMM_CONTENT,TITLE) values (10,'dmlwls123',3,to_date('23/11/30','RR/MM/DD'),'849f897b-ce65-4f07-a010-34e78f79bcd4',41,'아무것도 하고 싶지 않아서
"아무것도 하고 싶지 않아" 정주행중인 주말
다 때려치우고 시골 내려가서 사는 내용인데 잔잔하게 재밌네요

어제는 소갈비로 고기파티 했어요.
좋은 환경에서 자란 목우여서 그런지 식감이 넘 좋더라구요🧡

예전에 가본 불백맛집에서 김에 밥, 고기, 파김치를
싸먹었던게 생각나서 파김치김밥 싸서 갈비 올려먹었는데
춥서방이 첨엔 읭?하더니만
자꾸 손이 가는 맛이라며 혼자 거의 다 먹었어요ㅋㅋㅋ
파김치김밥 단짠 고기 드실 때 추천드리는 조합!

이제 날씨 따뜻해져서 캠핑 많이 가실텐데
캠핑장에서 먹어도 좋을 것 같아요👍','#소고기 노는게젤좋은뽀로로요 🤪');
Insert into OKITCHEN.COMMUNITY (COMMUNITY_ID,USER_ID,COMM_HIT,COMM_DATE,COMM_IMAGE,PRODUCT_ID,COMM_CONTENT,TITLE) values (11,'dmlwls123',2,to_date('23/11/30','RR/MM/DD'),'9869ce90-8ef6-4394-a3d8-22d12bf3a117',63,null,'#소고기파티');
REM INSERTING into OKITCHEN.COMMUNITY_PICKED
SET DEFINE OFF;
Insert into OKITCHEN.COMMUNITY_PICKED (COMM_PICK_ID,COMMUNITY_ID,USER_ID) values (5,10,'jesjo91933');
REM INSERTING into OKITCHEN.INQUIRY
SET DEFINE OFF;
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (1,'user',48,null,'답변완료',to_date('23/09/20','RR/MM/DD'),'너무 지방이 많아서 다 버리고 먹을게 별로 없나요 원래 다 이런가요?','기름이 너무 많아요...');
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (2,'user1',48,null,'답변완료',to_date('23/09/30','RR/MM/DD'),'받고나서 냉장보관해야하나요 냉동보관 해야하나요?','보관');
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (3,'user2',48,null,'답변완료',to_date('23/10/11','RR/MM/DD'),'상품이 오지 않았는데 배송완료라고 떠요','배송관련');
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (4,'user3',48,'Y','답변완료',to_date('23/10/19','RR/MM/DD'),'유통기한 최대한 긴 상품으로 받아볼 순 없나요?','유통기한');
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (5,'user4',48,null,'답변완료',to_date('23/10/31','RR/MM/DD'),'오늘 배송이 와서 받아봤는데 이상한 시큼한 냄새가 나요..','상품 변질');
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (6,'user5',48,null,'답변완료',to_date('23/11/14','RR/MM/DD'),'대체 재입고는 언제되나요!!','재입고');
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (7,'user6',48,'Y','답변대기',to_date('23/11/28','RR/MM/DD'),'유통기한이 어떻게 되나요??','유통기한');
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (8,'user7',48,null,'답변대기',to_date('23/11/30','RR/MM/DD'),'상품을 받았는데 이상한 이물질이 발견되었어요 못먹고 그냥 버렸네요 환불해주세요.','상품 이상');
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (9,'dmlwls123',48,null,'답변대기',to_date('23/11/30','RR/MM/DD'),'sfddsf','sf');
Insert into OKITCHEN.INQUIRY (INQ_ID,USER_ID,PRODUCT_ID,INQ_PRIVATE,INQ_ANSWERED,INQ_DATE,INQ_CONTENT,INQ_TITLE) values (10,'jesjo91933',48,null,'답변대기',to_date('23/11/30','RR/MM/DD'),'문의합니다','문의');
REM INSERTING into OKITCHEN.INQUIRY_ANS
SET DEFINE OFF;
Insert into OKITCHEN.INQUIRY_ANS (ANS_ID,ANS_CONTENT,ANS_DATE,INQ_ID) values (1,'안녕하세요 [존쿡 델리미트]입니다. 해당 상품은 부위 특성상 기름이 많이 붙어있는 부위입니다. 그럼에도 불구하고 드시는데 많이 불편하셨다면 ',to_date('23/09/23','RR/MM/DD'),1);
Insert into OKITCHEN.INQUIRY_ANS (ANS_ID,ANS_CONTENT,ANS_DATE,INQ_ID) values (2,'안녕하세요 [존쿡 델리미트]입니다. 해당 상품은 냉동보관 상품으로 받은 즉시 냉동보관 해주시고 드실 때에는 충분히 해동한 다음 조리해주시길 바랍니다.',to_date('23/10/01','RR/MM/DD'),2);
Insert into OKITCHEN.INQUIRY_ANS (ANS_ID,ANS_CONTENT,ANS_DATE,INQ_ID) values (3,'안녕하세요 [존쿡 델리미트]입니다. 우선 믿고 구매해주신 상품에 불편을 드려서 정말 죄송합니다. 문의하신 내용은 한번 더 확인하여 직접 연락드리도록 하겠습니다.',to_date('23/10/15','RR/MM/DD'),3);
Insert into OKITCHEN.INQUIRY_ANS (ANS_ID,ANS_CONTENT,ANS_DATE,INQ_ID) values (4,'[존쿡 델리미트]에서는 최상의 상품을 받아보실 수 있도록 선입선출하여 상품을 보내드리고 있으며, 직접 상품을 지정하여 받아보는 것은 어렵습니다. 꼼꼼히 검수하여 상품에 문제가 없도록 항상 노력하겠습니다.',to_date('23/10/22','RR/MM/DD'),4);
Insert into OKITCHEN.INQUIRY_ANS (ANS_ID,ANS_CONTENT,ANS_DATE,INQ_ID) values (5,'안녕하세요 [존쿡 델리미트]입니다. 우선 믿고 구매해주신 상품에 불편을 드려서 정말 죄송합니다.  문의 확인하여 직접 연락드린 것으로 확인되었습니다. 혹여 추가적으로 불편하신 사항이 있으시면 고객센터로 문의주세요.',to_date('23/11/01','RR/MM/DD'),5);
Insert into OKITCHEN.INQUIRY_ANS (ANS_ID,ANS_CONTENT,ANS_DATE,INQ_ID) values (6,'안녕하세요 [존쿡 델리미트]입니다. 현재 문의주신 상품은 정기적으로 입고되는 상품이 아니기 때문에 정확한 입고날짜를 말씀드리기 어려우나, 현재 공급사와 협의를 통해 입고 시기를 조정하고 있습니다. 양해 부탁드립니다.',to_date('23/11/16','RR/MM/DD'),6);
REM INSERTING into OKITCHEN.NOTICE
SET DEFINE OFF;
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (1,to_date('23/06/25','RR/MM/DD'),'그동안 오키친을 찾아주신 고객님 감사합니다. 한달간 쇼핑몰 운영을 중단할 예정이오니 참고 부탁드립니다. 자세한 문의는 고객센터를 이용해 주세요.','쇼핑몰 운영 중단 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (2,to_date('23/06/30','RR/MM/DD'),'■ 배송 가능 시간 안내


- 영업일 기준 오후 1시 이전 결제 완료 주문건 :  당일 출고됩니다. (일부 상품 제외)

- 공휴일의 경우 다음 영업일에 출고됩니다.

(출고된 경우 서울/수도권 지역은 대부분 다음날 수령, 지방은 1~3일 이내에 배송됩니다. 따라서 전체 배송 기간은 (업무일 기준) 3일~7일 정도 소요되며, 일부 택배사 사정에 따라 변동될 수 있습니다.)

※ 주문 상품이 재고 부족일 경우 부득이하게 배송 시간은 달라질 수 있는 점 양해 부탁드립니다.','배송 가능 시간 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (3,to_date('23/07/11','RR/MM/DD'),'오는 7월24일(월)부터 7월27일(목)까지 오키친이 여름철 휴가를 맞아 휴무합니다.

휴무기간 : 7/24(월) ~ 7/27(목)까지입니다.

이기간 주문하신 주문건과 휴무기간이전 미배송 주문건은
7/28(금)부터 순차적으로 재개됩니다.

이용에 착오없으시길 바랍니다.
감사합니다.
','[휴무안내] 7/24(월)~7/27(목)까지 하계휴가');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (4,to_date('23/07/15','RR/MM/DD'),'안녕하세요.

8월14일(월)이 택배없는날로 지정되어 택배발송이 없습니다.
따라서 11일(금) 이후 배송출발하지 못한 주문건은 16일(수)에 배송출발합니다.

8월14일(월) 매장은 정상업무 합니다.

이용에 착오 없으시기 바랍니다.','8월14일(월) 택배없는날');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (5,to_date('23/07/28','RR/MM/DD'),'오키친의 안정적인 서비스 제공을 위해
기능 업데이트 및 패치작업이 있습니다.
점검기간동안 홈페이지 접속이 
원할하지 않은 점 양해 부탁드립니다.','시스템 점검 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (6,to_date('23/08/05','RR/MM/DD'),'※ 택배노조 파업 지역 - 운송장 출력 불가

- 거제시 전체
- 경기도 고양시 덕양구 동산동, 도내동, 화정동, 지축동, 효자동, 행신동,주교동, 성사동, 선유동, 벽재동, 고양동, 대자동
- 전북 군산시 내초동, 소룡동, 경장동, 미장동, 나운동, 미룡동, 신관동, 영화동,명산동, 신영동, 경암동, 금암동, 죽성동, 대명동, 내흥동, 그암동, 조촌동, 경암동, 금광동, 산북동
- 울산시 남구, 중구, 동구 지역
- 경기도 이천시 및 여주시 일부
- 경기도 성남시 수정구, 중원구, 분당구 일부
- 경기도 광주시 오포읍

※ 배송지연 예상 지역

- 광주시 초월읍, 곤지암읍, 오포읍
- 용인시 기흥구, 처인구, 수지구
- 전북 정읍시 고부면, 고평동, 용계동, 흑암동, 상동,태인면, 수성동, 장명동, 연지동','택배노조 파업에 따른 배송지연 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (7,to_date('23/08/25','RR/MM/DD'),'라이브 방송 이벤트에 참여해주신 모든 고객님들께 감사 드리며
사음품은 구매 확정 이후 12월 1주차에 일괄 지급 예정입니다.

2323920300271	kds**mdf
2323920300271	fd**m
2323920300271	lon**44
2323920300271	ljrs**m101
2323920300271	hn**mdf
2323920300271	ki**mkk','[이벤트] 오키친 라이브 이벤트 당첨자 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (8,to_date('23/08/30','RR/MM/DD'),'일시 : 2023.09.15 - 2023.09.16 동안 하나은행 시스템 점검으로 서비스가 잠시 중단될 예정입니다. 이용에 불편함 없길 바랍니다.','하나은행 시스템 점검');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (9,to_date('23/09/02','RR/MM/DD'),'추석연휴를 맞이하여 아래와 같이 배송 및 휴무를 안내드립니다.

- 배송마감 : 9월5일(월)
- 매장오픈 : 9월5일(월) ~ 9월8일(목) 오후4시까지
- 휴무기간 : 9월9일(금) ~ 9월12일(월)까지입니다.

배송마감이후 주문건은
9월13일(화)부터 순차적으로 재개됩니다.

이용에 착오없으시길 바랍니다.

풍성한 한가위 되세요','추석배송 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (10,to_date('23/09/15','RR/MM/DD'),'※ 택배노조 파업 지역 - 운송장 출력 불가

- 거제시 전체
- 경기도 고양시 덕양구 동산동, 도내동, 화정동, 지축동, 효자동, 행신동,주교동, 성사동, 선유동, 벽재동, 고양동, 대자동
- 전북 군산시 내초동, 소룡동, 경장동, 미장동, 나운동, 미룡동, 신관동, 영화동,명산동, 신영동, 경암동, 금암동, 죽성동, 대명동, 내흥동, 그암동, 조촌동, 경암동, 금광동, 산북동
- 울산시 남구, 중구, 동구 지역
- 경기도 이천시 및 여주시 일부
- 경기도 성남시 수정구, 중원구, 분당구 일부
- 경기도 광주시 오포읍

※ 배송지연 예상 지역

- 광주시 초월읍, 곤지암읍, 오포읍
- 용인시 기흥구, 처인구, 수지구
- 전북 정읍시 고부면, 고평동, 용계동, 흑암동, 상동,태인면, 수성동, 장명동, 연지동','택배노조 파업에 따른 배송지연 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (11,to_date('23/09/21','RR/MM/DD'),'라이브 방송 이벤트에 참여해주신 모든 고객님들께 감사 드리며
사음품은 구매 확정 이후 12월 1주차에 일괄 지급 예정입니다.

2323920300271	kds**mdf
2323920300271	fd**m
2323920300271	lon**44
2323920300271	ljrs**m101
2323920300271	hn**mdf
2323920300271	ki**mkk','[이벤트] 발뮤다 라이브 이벤트 당첨자 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (12,to_date('23/09/30','RR/MM/DD'),'스마일 페이 결제 서비스가 2023.11.01부터 종료됩니다. 참고해주시길 바랍니다.','스마일페이 결제 서비스 종료');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (13,to_date('23/10/01','RR/MM/DD'),'업무 효율성을 높이기 위하여, 일반세금계산서 -> 전자세금계산서 신청 기능을 도입하였습니다.
주문을 마치고 주문내역 하단에 [세금계산서 신청]으로 신청할 수 있고, 배송이 완료되는 시점에 전자세금계산서가 국세청으로 전달되는 방식입니다.

사용하시면서 문제가 되는 부분이 있으면 언제든지 고객문의 란에 남겨주시면 감사합니다. ','전자세금계산서 기능 추가');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (14,to_date('23/10/10','RR/MM/DD'),'안녕하세요 고객님,
오키친의 서비스를 이용해주셔서 진심으로 감사드립니다.

오키친 이용약관이 2023년 10월 01일부터 개정될 예정입니다.

*주요 개정 내용
-휴면회원 관련 조항 삭제
-해킹 등 비정상 로그인 시도 회원에 대한 자격 정지 등 관련 조항 추가
-대금 지급 방법에 선불전자지급수단 내용 추가
-적립금 관련 내용 정비
-기타 전반적인 문구 등 수정','이용약관 개정 사전 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (15,to_date('23/10/15','RR/MM/DD'),'오키친의 안정적인 서비스 제공을 위해
기능 업데이트 및 패치작업이 있습니다.
점검기간동안 홈페이지 접속이 
원할하지 않은 점 양해 부탁드립니다.','시스템 점검 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (16,to_date('23/11/09','RR/MM/DD'),'우체국 택배의 파업으로인해
익일(1일)배송되던 물류가 2~3일정도 늦어질 수 있음을 알려드립니다.
상할 우려가 있는 일부 상품은 배송중지이며
우체국택배의 노사간 합의가 잘되어
정상화 되기 전까지
고객님들의 너그러운 마음으로 이해부탁드립니다.','우체국택배 파업으로인한 배송지연공지');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (17,to_date('23/11/16','RR/MM/DD'),'■ 교환 및 반품 안내



교환 및 반품이 가능한 경우


- 상품을 공급받으신 날로부터 7일이내 교환/반품에 대한 의사를 밝혀주시면 처리가 가능합니다.

  단, 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우에는 교환/반품이 불가능합니다.


- 공급받으신 상품 및 용역의 내용이 표시, 광고 내용과 다르거나 다르게 이행된 경우에는

  공급받은 날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내



교환 및 반품이 불가능한 경우


- 고객님의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우.

  단, 상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외


- 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우


- 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우


- 시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우


- 복제가 가능한 상품 등의 포장을 훼손한 경우
 (자세한 내용은 고객센터 상담을 이용해 주시기 바랍니다.)


※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품 반송 비용은 고객님께서 부담하셔야 합니다.
  (색상 교환, 사이즈 교환 등 포함)



교환/반품 절차


- 마이페이지 → 주문내역 → 교환/반품 신청 → 수거 기사님 방문 예정


- 구매하신 쇼핑몰에서 신청해주시거나, 고객센터(1544-9180)로 신청 부탁드립니다.


- 구매하신 제품의 AS를 원하는 경우에도 고객센터(1544-9180)로 연락 부탁드립니다.','교환 및 반품 안내');
Insert into OKITCHEN.NOTICE (NOTICE_ID,NOTICE_DATE,NOTICE_CONTENT,NOTICE_TITLE) values (18,to_date('23/11/30','RR/MM/DD'),'공지사항 테스트 입니다.','[테스트 등록] 공지사항 입니다');
REM INSERTING into OKITCHEN.OPTIONS
SET DEFINE OFF;
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (2,4,'sef',23423,45);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (3,5,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (4,6,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (5,7,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (6,8,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (7,9,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (8,10,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (9,11,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (10,12,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (11,13,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (12,15,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (13,16,'초코카스테라',3900,10);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (14,17,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (15,18,'null',-1,-1);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (16,48,'쫄볶이',7500,30);
Insert into OKITCHEN.OPTIONS (OPTION_ID,PRODUCT_ID,OPTION_NAME,OPTION_PRICE,OPTION_STOCK) values (17,23,'null',-1,-1);
REM INSERTING into OKITCHEN.ORDERS
SET DEFINE OFF;
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP373','wjsdmlwls','배송완료',to_date('23/11/30','RR/MM/DD'),'문 앞 자유 출입 가능',2,60726);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP928','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),'기타장소 기타 장소: ㅇㄹㄴㄹㅇ 공동현관 비밀번호',2,55396);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP716','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),' ',2,55396);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP487','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),' ',2,55396);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP713','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),' ',1,3000);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP757','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),' ',1,17200);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP1000','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),' ',1,17200);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('1','user','배송전',to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('2','user1','배송완료',to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('3','user2','배송완료',to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('4','user3','배송완료',to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('5','user4','배송완료',to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('6','user5','배송완료',to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('7','user6','배송완료',to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP335','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),' ',1,17200);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP506','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),' ',1,17200);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP935','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),' ',2,23200);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP613','dmlwls123','배송완료',to_date('23/11/30','RR/MM/DD'),' ',2,23200);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP474','dmlwls123','배송전',to_date('23/11/30','RR/MM/DD'),' ',2,23200);
Insert into OKITCHEN.ORDERS (ORDER_ID,USER_ID,ORDER_STATUS,ORDER_DATE,MEMO,TOTAL_CNT,TOTAL_PRICE) values ('IMP725','jesjo91933','paid',to_date('23/11/30','RR/MM/DD'),'문 앞 공동현관 비밀번호',2,36762);
REM INSERTING into OKITCHEN.ORDER_DETAIL
SET DEFINE OFF;
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (8,1,17200,75,0,'Y','dmlwls123','IMP474');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (9,2,3000,73,0,null,'dmlwls123','IMP474');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (10,3,15500,29,0,'Y','jesjo91933','IMP725');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (11,1,6480,48,0,null,'jesjo91933','IMP725');
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (1,null,null,48,null,null,'user',null);
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (2,null,null,48,null,null,'user1',null);
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (3,null,null,48,null,null,'user2',null);
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (4,null,null,48,null,null,'user3',null);
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (5,null,null,48,null,null,'user4',null);
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (6,null,null,48,null,null,'user5',null);
Insert into OKITCHEN.ORDER_DETAIL (ORDER_DETAIL_ID,QUANTITY,PRODUCT_PRICE,PRODUCT_ID,OPTION_ID,REVIEW_STATUS,USER_ID,ORDER_ID) values (7,null,null,48,null,null,'user6',null);
REM INSERTING into OKITCHEN.PICKED
SET DEFINE OFF;
Insert into OKITCHEN.PICKED (PICK_ID,USER_ID,PRODUCT_ID) values (11,'dmlwls123',43);
Insert into OKITCHEN.PICKED (PICK_ID,USER_ID,PRODUCT_ID) values (8,'dmlwls123',29);
Insert into OKITCHEN.PICKED (PICK_ID,USER_ID,PRODUCT_ID) values (10,'dmlwls123',48);
Insert into OKITCHEN.PICKED (PICK_ID,USER_ID,PRODUCT_ID) values (13,'jesjo91933',43);
REM INSERTING into OKITCHEN.PRODUCT
SET DEFINE OFF;
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (6,'test','삼삼물산','웰빙 오징어젓 180g','삼삼물산_오징어젓_180g',7900,0,to_date('23/11/20','RR/MM/DD'),'달고 고소한 오징어의 풍미와 개운한 매운 양념의 조합이 좋은 삼삼물산의 ''웰빙 오징어젓''!','승인','전시',to_date('23/11/19','RR/MM/DD'),'N',50,'seafood','- 오징어 (연체류) 함유 / 대두, 밀, 게, 새우, 조개(굴, 바지락)을 포함한 상품과 같은 제조시설에서 제조','수령 후 가급적 빠른 섭취 부탁 드립니다.',to_date('24/01/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'전남 여수시 돌산읍',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (7,null,'삼삼물산','크림 관자 그라탕','f2d0e81b-ac67-4c6c-ae23-f1b6d70eb11e',7980,0,to_date('23/11/27','RR/MM/DD'),'40년 이상 신선한 먹거리를 유통해온 삼삼물산과 부산 해리단길의 이탈리안 비스트로인 이태리 식탁이 만났습니다.','거절','비전시',to_date('23/11/19','RR/MM/DD'),'N',100,'mealkit','- 계란, 우유, 대두, 밀, 새우, 닭고기, 오징어, 조개류(굴) 함유
- 이 제품은 토마토, 메밀, 땅콩, 고등어, 게, 새우, 돼지고기, 복숭아, 아황산류, 호두, 쇠고기, 오징어, 조개류(홍합, 전복 포함), 잣을 사용한 제품과 같은 시설에서 제조','총 유통기한 365일',to_date('24/11/01','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경산남도 통영시 용남면',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (4,'test','야채사랑','efse','506ae14b-f8a6-46ad-937c-68f71cadaae6',23432,11,null,'sefe','거절','비전시',to_date('23/11/18','RR/MM/DD'),'Y',24,'vege','sfefs','sefse',to_date('23/11/22','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'seffe',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (5,'test','삼삼물산','신선한 국산 생굴 420g','삼삼물산_생굴_420g',13500,9,to_date('23/11/20','RR/MM/DD'),'삼삼물산의 신선한 국산 생굴!','승인','전시',to_date('23/11/18','RR/MM/DD'),'N',30,'seafood','- 이 제품은 우유, 대두, 밀, 토마토, 오징어, 새우, 고등어, 조개류(홍합, 전복 포함)를 사용한 제품과 같은 시설에서 제조','수령 후 가급적 빠른 섭취 부탁드립니다.',to_date('23/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'국산',12290);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (8,'test','삼삼물산','크림 관자 그라탕','삼삼물산_크림관자그라탕',7980,0,to_date('23/11/28','RR/MM/DD'),'40년 이상 신선한 먹거리를 유통해온 삼삼물산과 부산 해리단길의 이탈리안 비스트로인 이태리 식탁이 만났습니다.','승인','전시',to_date('23/11/19','RR/MM/DD'),'N',100,'mealkit','- 계란, 우유, 대두, 밀, 새우, 닭고기, 오징어, 조개류(굴) 함유
- 이 제품은 토마토, 메밀, 땅콩, 고등어, 게, 새우, 돼지고기, 복숭아, 아황산류, 호두, 쇠고기, 오징어, 조개류(홍합, 전복 포함), 잣을 사용한 제품과 같은 시설에서 제조','총 유통기한 365일',to_date('24/11/01','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경산남도 통영시 용남면',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (9,'test','efef','efe','ca214522-35b7-4700-bc05-67948b185f69',2343,0,to_date('23/11/27','RR/MM/DD'),'fefe','거절','비전시',to_date('23/11/19','RR/MM/DD'),'N',34,'vege','fese','fef',to_date('23/11/28','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'efse',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (10,'test','te','tet','0fc9cd42-eac2-4be6-b60b-27a6443996c2',342,0,null,'etete','거절','비전시',to_date('23/11/19','RR/MM/DD'),'N',34,'vege','sdfds','sfef',to_date('23/11/27','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'여주',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (11,'test','삼삼물산','fse','8c1782df-c868-4bf0-9e4d-88e80bb625c3',2131,0,null,'sefes','거절','비전시',to_date('23/11/19','RR/MM/DD'),'N',324,'fruit','fsfe','sefe',to_date('23/11/02','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'sfe',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (12,'test','esf','sef','e1b9aef3-6bf4-4ff1-a8ad-012671c0e194',3123,0,null,'efe','거절','비전시',to_date('23/11/19','RR/MM/DD'),'N',234,'fruit','fds','sfees',to_date('23/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'sef',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (13,'test','efse','efe','e81b2330-37e3-4517-885e-2b73f5c362a2',231,0,null,'fef','거절','비전시',to_date('23/11/19','RR/MM/DD'),'N',34,'fruit','sef','efe',to_date('23/11/29','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'fsef',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (15,'test','삼다수','ㄴㄷㄹ','삼다수_20개입',342,0,null,'ㄷㄴㄹ','거절','비전시',to_date('23/11/19','RR/MM/DD'),'N',324,'drink','sfe','sef',to_date('23/11/29','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'sef',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (16,'test','무화당','카스테라 2종','874f9051-c75c-4ff7-88a9-631b8c585f00',3900,0,to_date('23/11/20','RR/MM/DD'),'식단 관리 중에도 마음껏 즐길 수 있는 디저트를 찾고 있다면, 무화당이 만든 카스테라를 만나보세요. ','승인','전시',to_date('23/11/20','RR/MM/DD'),'Y',10,'snack','- 카스테라: 계란, 우유 함유
- 초코카스테라: 계란, 우유 함유
* 계란, 우유, 대두, 땅콩, 밀과 같은 시설에서 제조','수령한 상품을 -18도의 냉동실에서 보관해주세요.',to_date('24/11/20','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'국내산',null);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (17,'test','야채사랑','브로콜리','bc81651e-38fd-4754-bd27-92a0c973099f',13000,9,to_date('23/11/27','RR/MM/DD'),'ㅇㅇㅇ','거절','비전시',to_date('23/11/21','RR/MM/DD'),'N',30,'vege','fdfs','sdfs',to_date('23/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'여주',11830);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (18,'test','델리치오','호주산 목초육 안심 스테이크 250g','델리치오_안심스테이크_250g',22900,25,to_date('23/11/21','RR/MM/DD'),'지방이 적어 담백한 맛이 일품인 호주산 소 안심을 소개합니다. 소를 넓은 들판에 자유로이 방목하여, 목초를 먹이며 키웠어요.','승인','판매종료',to_date('23/11/21','RR/MM/DD'),'N',100,'meat','- 소고기 함유
- 대두, 밀, 돼지고기, 우유, 토마토, 새우, 아황산류, 닭고기, 조개류(굴, 홍합, 전복), 오징어, 잣, 알류, 게, 복숭아, 땅콩, 호두, 고등어, 메밀과 동일 제조시설에서 제조','정육 상품의 특성상 중량은 3% 내외의 차이가 발생할 수 있습니다. MAP 산소포장 특성상 포장지에 접촉되는 부분의 일부 색변화가 있을 수 있으나, 변질이 아닌 정상범주인 점을 안내드립니다.',to_date('23/12/31','RR/MM/DD'),to_date('23/10/01','RR/MM/DD'),'호주산',17180);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (21,'test','또보','떡볶이 2종 (택1)','또보겠지_떡볶이_2종',7500,25,to_date('23/11/21','RR/MM/DD'),'홍대의 이름난 식당들 사이에서도 존재감을 톡톡히 드러내는 떡볶이 맛집, 또보겠지 떡볶이집을 만나보세요. "또 보겠지? 맛있으니까!"라는 의미의 이름처럼 자꾸만 생각나는 떡볶이 3종을 준비했답니다.','승인','판매종료',to_date('23/11/21','RR/MM/DD'),'Y',30,'mealkit','- 밀떡볶이 : 밀, 대두 함유
- 소스 : 대두, 밀, 우유, 조개류(굴, 홍합, 바지락 포함), 게, 오징어, 새우 함유
- 어묵 : 대두, 밀, 쇠고기, 오징어 함유
- 이 제품은 알류, 메밀, 땅콩, 고등어, 돼지고기, 복숭아, 토마토, 아황산류, 호두, 닭고기, 조개류, 잣을 사용한 제품과 같은 제조시설에서 제조하고 있습니다. ','개봉 후에는 유통기한 이내라도 빨리 드시기 바랍니다. ',to_date('24/10/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'충청남도 홍성군',5625);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (23,'test','제주 삼다수','생수 (330mL x 20개)','삼다수_20개입',9560,10,to_date('23/11/23','RR/MM/DD'),'천혜의 제주에서 온 화산암반수, 제주 삼다수를 만나보세요. 한라산의 수많은 천연 화산층을 통과하여 만들어진 순수한 화산암반수를 채취했어요. 깔끔한 목 넘김과 부드러운 청량감으로 오랜 시간 사랑받고 있지요. 이번에는 한 손에 쏙 들어오는 330mL 크기로 준비했는데요. 아이들이 들고 마시기에 부담 없고, 외출 시 한 병씩 가볍게 챙기기에도 제격이랍니다. 20병 묶음 구성으로 가져왔으니, 수분 보충이 필요한 순간을 위해 든든하게 준비해보세요.','승인','전시',to_date('23/11/23','RR/MM/DD'),'N',100,'drink','가열 또는 냉동시 천연미네랄 성분으로 인해 흰색질에는 이상이 없으니 안심하고 드십시오.
','개봉 후에는 변질 등의 우려가 있으므로 냉장보관하여 가급적 빨리 음용하시기 바랍니다.
',to_date('24/12/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'제주도',8604);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (24,'test','제주 삼다수','생수 (330mL x 20개입)','536b0260-3f1d-45f9-b3aa-71332099d4a3',9560,10,null,'천혜의 제주에서 온 화산암반수, 제주 삼다수를 만나보세요. 한라산의 수많은 천연 화산층을 통과하여 만들어진 순수한 화산암반수를 채취했어요. 깔끔한 목 넘김과 부드러운 청량감으로 오랜 시간 사랑받고 있지요. 이번에는 한 손에 쏙 들어오는 330mL 크기로 준비했는데요. 아이들이 들고 마시기에 부담 없고, 외출 시 한 병씩 가볍게 챙기기에도 제격이랍니다. 20병 묶음 구성으로 가져왔으니, 수분 보충이 필요한 순간을 위해 든든하게 준비해보세요.','거절','비전시',to_date('23/11/24','RR/MM/DD'),null,0,'drink','"가열 또는 냉동시 천연미네랄 성분으로 인해 흰색질에는 이상이 없으니 안심하고 드십시오.
"','"개봉 후에는 변질 등의 우려가 있으므로 냉장보관하여 가급적 빨리 음용하시기 바랍니다.
"',to_date('24/12/24','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'제주도',8610);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (25,'test','dsf','sfe','66380c73-eb93-4abf-bdea-6d0d5defaff6',3423,10,null,'fefe','거절','비전시',to_date('23/11/24','RR/MM/DD'),null,324,'vege','dsfd','dsff',to_date('23/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'sfd',3090);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (26,'test','무화당','깜빠뉴','09bb7382-c45c-405a-9cce-8d18dc4c3588',4900,5,to_date('23/11/27','RR/MM/DD'),'탄수화물에 대한 부담 없이, 매일 즐길 수 있는 빵을 찾고 있다면 무화당의 깜빠뉴를 선택해보세요. 밀단백질과 알룰로스를 넣은 반죽으로 담백하게 구워 만들었지요. 식이섬유와 단백질 성분까지 알차게 섭취할 수 있어 더욱 든든하답니다. 살짝 데워 그대로 먹어도 깔끔하고요. 취향에 맞는 스프레드나 재료들을 곁들여 풍성하게 즐겨도 좋을 거예요.','승인','전시',to_date('23/11/27','RR/MM/DD'),null,50,'bakery','본 제품은 땅콩, 호두, 우유를 사용한 제품과 같은 제조시설에서 제조하고 있습니다. ','이미 냉동된 바 있으니 개봉 후에는 재냉동 하지마십시오. 미개봉 상태에선 해동되어도 재냉동 가능합니다. ',to_date('23/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'국내산',4660);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (28,'test','sdfe','sef,sfefe','bb553985-ca1f-48ec-97a3-14de820eb6bb',32432,0,to_date('23/11/27','RR/MM/DD'),'sef','거절','비전시',to_date('23/11/27','RR/MM/DD'),null,234,'vege','sdfs','sef',to_date('23/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (29,'test','하겐다즈','멀티바','ff6fc758-0a63-434f-9e9a-a351cdcd69b6',15500,30,to_date('23/11/27','RR/MM/DD'),'하나하나 엄선된 재료로 우수한 품질의 아이스크림을 만들겠다는 하겐다즈. 이미 많은 분들의 사랑을 받고 있는 아이스크림 브랜드로 유명 한데요. 하겐다즈를 즐기는 다양한 방법 중 컬리는 아이스크림에 초콜릿 코팅이 더해진 멀티바를 준비했습니다. 한입 베어 물면 달콤하게 부서지는 초콜릿 코팅과 그 안에서 녹아내리는 아이스크림이 황홀한 맛의 놀라움으로 다가오죠. 한번에 먹기 적당한 스틱바 형태로 3개씩 들 어 있어, 더 넉넉하게 아이스크림을 즐길 수 있을 거예요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,217,'snack','- 멀티바 그린티 앤 아몬드 : 우유, 계란, 대두, 아몬드 함유
- 멀티바 스트로베리 앤 크림 : 우유, 계란, 대두 함유
- 이 제품은 땅콩 및 견과류를 사용한 제품과 같은 제조시설에서 제조하고 있습니다.
','이미 냉동된 바 있으니 해동 후 재냉동 시키지 마시기 바랍니다.
',to_date('24/12/14','RR/MM/DD'),to_date('23/11/22','RR/MM/DD'),'프랑스산',10850);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (30,'test','베어벨스','소프트 프로틴바','5a28ee1c-b0ab-43dc-b0c5-f1bf4df64ff2',5300,15,to_date('23/11/27','RR/MM/DD'),'출출한 오후 또는 운동 전후, 부담 없는 간식으로 베어벨스를 만나보세요. 걱정 없이 달콤함을 즐길 수 있도록, 소프트 프로틴바를 준비했답 니다. 1개당 단백질을 16g씩 함유해 든든하고, 식감이 부드러워 누구나 맛있게 즐길 수 있지요. 달콤한 초코와 고소한 피넛, 두 가지 맛으로 준비했으니 취향에 맞게 골라보세요. 주머니 속에 쏙 넣어 다니기도 좋답니다.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,250,'snack','-초코: 쇠고기, 대두, 우유 함유
-피넛:쇠고기,대두,우유,땅콩 함유
본 제품은 글루텐,달걀,견과류를 사용한 제품과 같은 제조시설에서 제조하고 있습니다.
','직사광선 및 습기찬 곳을 피하여 건조하시고 서늘한 곳에 보관하세요. 개봉 후 빨리 드시기 바랍니다.
',to_date('24/12/14','RR/MM/DD'),to_date('23/11/25','RR/MM/DD'),'네덜란드산',4510);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (31,'test','웰치스','믹스 후르츠맛 젤리','ad1ef84e-705e-4d5e-80b0-474ee47bd8d7',12800,0,to_date('23/11/27','RR/MM/DD'),'한 입에 쏙 들어가는 달콤한 간식이 종종 필요할 때가 있지요. 졸음이 찾아오는 운전 중이나, 집중이 필요한 공부 및 업무 시간을 예로 들 수 있는데요. 한 봉씩 가방에 넣어 가지고 다니며 새콤달콤한 작은 행복을 누려보세요. 컬리는 5가지 과일 맛을 품은 웰치스의 믹스 후르츠맛 젤 리를 선보입니다. 과일 농축액과 퓨레를 함유한 미니 사이즈 젤리는 실제 과일의 모양을 본떠 만들었어요. 눈과 입이 모두 즐거운 간식이랍니 다. 25봉씩 넉넉하게 박스에 담아 보내드리니, 입안이 심심할 때마다 젤리의 맛과 식감을 만끽해 보세요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,290,'snack','돼지고기, 복숭아 함유
','직사광선을 피하고 건냉한 곳에 보관
',to_date('24/12/15','RR/MM/DD'),to_date('23/11/21','RR/MM/DD'),'미국산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (32,'test','부샤드','벨지안초콜릿','03948c7c-1631-4369-8e4a-2f6ab1c07b45',5580,10,to_date('23/11/27','RR/MM/DD'),' 초콜릿 마니아라면 판판한 부샤드 초콜릿의 오독오독한 식감과 진한 풍미를 익히 알고 계실 텐데요. 이번에는 90년 이상의 전통을 자랑하는 부샤드의 벨지안 초콜릿을 준비했답니다. 부드러운 밀크 초콜릿부터 쌉싸름한 다크 초콜릿, 단짠 매력의 카라멜&씨솔트까지 다채롭게 만나 볼 수 있으니 취향에 맞는 초콜릿을 골라 즐겨 보세요. 낱개로 포장되어 있어 달콤함이 필요한 순간 하나씩 꺼내어 먹기 제격일 거예요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,450,'snack','-밀크,카라멜&씨쏠트 : 우유함유
이 제품은 계란, 대두,견과류, 밀(글루텐)을 사용한 제품과 같은 제조시설에서 제조하고 있습니다.
','녹는 점이 낮아 열에 민감하여 쉽게 녹을 수 있으므로 보관에 특별히 주의하여 주십시오.
',to_date('24/12/17','RR/MM/DD'),to_date('23/11/21','RR/MM/DD'),'벨기에산',5030);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (33,'test','CJ','맥스봉치즈소시지','20c4c1f3-6413-4e4f-b069-8a577c04b833',8480,0,to_date('23/11/27','RR/MM/DD'),'오랫동안 많은 사랑을 받아온 CJ의 맥스봉 치즈를 소개할게요. 소시지 속에 고소한 체다 치즈가 쏙 들어 있는 매력 만점 간식이랍니다. 컬리 는 스테디셀러 스낵을 마트나 편의점에 일부러 나가지 않아도 집에서 편하게 즐길 수 있도록 준비했어요. 개별 포장된 소시지 15개가 들어 있으니, 두고두고 즐기기에도 좋을 거예요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,120,'snack','-계란, 우유, 밀, 대두, 쇠고기 함융','제품에 치즈가 번져보이는 것은 치즈 알갱이므로 변질품이 아닙니다.',to_date('24/12/19','RR/MM/DD'),to_date('23/11/04','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (34,'test','미주라','통밀크래커','31ea367a-da66-4d3d-bbc0-ff7c9e4f5126',4500,0,to_date('23/11/27','RR/MM/DD'),'건강하고 균형 잡힌 간식을 연구하는 이탈리아 브랜드, 미주라의 통밀 크래커를 소개합니다. 통밀가루 75%에 밀 식이섬유, 귀리 식이섬유를 첨가한 밀가루 믹스를 사용해 고소하고 담백한 크래커예요. 게다가 팜유가 아닌 해바라기유를 사용해 한결 가볍게 즐기기 좋지요. 납작한 모 양으로 크림 치즈나 잼을 발라 먹기 편리하답니다. 과일이나 햄 등을 곁들여 와인 안주로 활용하기에도 제격이에요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,260,'snack','- 밀함유
- 본 제품은 우유, 대두, 참깨를 사용한 제품과 같은 제조시설에서 제조하고 있습니다.','직사광선을 피하여 온도와 습도가 낮은 곳에 보관하며, 개봉 후 가급적 빠른 취식 및  밀봉보관',to_date('24/12/19','RR/MM/DD'),to_date('23/11/05','RR/MM/DD'),'이탈리아',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (35,'test','프레베','통연근칩','04f34c14-b656-4de6-9373-112e822b4153',3480,0,to_date('23/11/27','RR/MM/DD'),'연근은 식이섬유와 비타민 C, 철분이 풍부하게 담긴 뿌리채소예요. 연근을 조림이나 볶음, 샐러드 위의 토핑으로 활용해 즐기시는 분들 많으 실 텐데요. 단단한 질감을 자랑하는 연근은 굽거나 볶는 등 요리 시 열을 가해도 모양이 변형되지 않고 식감이 아삭하게 살아 있어요. 컬리는 국내산 연근을 통으로 얇게 썬 뒤 그대로 튀긴 연근칩을 선보입니다. 식품첨가물을 일체 첨가하지 않은 연근칩에서 연근 본연의 고소함과 담 백함을 오롯이 느낄 수 있으실 거예요. 입이 심심한 날 연근칩 한 봉지를 꺼내 바삭하게 씹히는 연근의 경쾌한 식감을 만끽해보세요. 아이의 하교 간식으로도 추천할게요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,180,'snack','이 제품은 계란, 대두,견과류, 밀(글루텐)을 사용한 제품과 같은 제조시설에서 제조하고 있습니다.
','연근칩 표면에 남색이나, 검은 반점 등은 원물의 특성이므로 안심하고 드시길 바랍니다.',to_date('24/12/20','RR/MM/DD'),to_date('23/11/06','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (36,'test','우리밀','두부과자','0089b40e-bfdd-4033-88c8-361a88948d2e',2600,0,to_date('23/11/27','RR/MM/DD'),'따끈한 찌개나 노릇노릇한 반찬으로 자주 등장하던 두부가 바삭한 과자로 재탄생했습니다. 본래 두부의 식감과는 전혀 다른 매력을 가진 두 부과자는 이미 두터운 마니아층을 갖고 있을 만큼 중독성 강한 맛을 자랑하지요. 컬리가 준비한 우리밀 두부과자는 국산 무농약 콩으로 만들 어 담백함이 남다른 제품이에요. 콩뿐만 아니라 바르게 키운 우리밀과 국산 발아 통밀, 무항생제 유정란 등이 들어가 믿고 먹을 수 있는 과자 입니다. 얇게 튀긴 두부과자 겉면에는 검은 깨가 콕콕 박혀있어, 두부과자의 고소함을 더욱 풍성하게 느낄 수 있죠. 출출한 밤, 자극적이지 않은 야식이 당길 때 두부과자를 드셔 보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,260,'snack','- 밀,대두,계란 함유
- 이 제품은 우유, 땅콩, 메밀, 게, 새우, 돼지고기, 쇠고기, 닭고기를 사용한 제품과 같은 제조시설에서 제조
','해당 상품은 오징어 땅콩볼 제품과 무관한 제조사에서 생산되고 있습니다. 제품 구매시 참고 부탁드립니다.',to_date('24/12/22','RR/MM/DD'),to_date('23/11/19','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (37,'test','맛꾼푸드','고구마말랭이','b706e416-9d93-4e30-87f4-fbe1fc00a584',4490,0,to_date('23/11/27','RR/MM/DD'),'엿 못지 않게 달콤하고 쫀득하게 말린 간식, 엿구마 고구마 말랭이를 소개할게요. 어떤 첨가물도 없이, 당도 높은 국산 고구마로만 만든 말랭이랍니다. 한 번 구운 고구마를 최적의 식감이 살아나도록 큼직큼직하게 썰었고요. 적정 온도에서 건조시켜, 말랑말랑하고 쫄깃함이 한껏 살아났죠. 입안 가득 풍성한 식감은 물론이고, 씹을수록 진하게 퍼지는 달큰함까지 매력적이랍니다. 한번에 먹기 좋은 양으로 담겨 있으니, 언 제 어디서든 진득한 단맛을 간편하게 즐겨 보세요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,178,'snack','표면의 하얀분이 피는 현상은 당분이 표면에 나온 것이므로 품질이나 드시는 데는 아무 문제가 없습니다.
','전자렌지에 15초 데우면 더욱 부드럽게 드실 수 있습니다.',to_date('24/12/22','RR/MM/DD'),to_date('23/11/08','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (38,'test','농심','새우깡 미니팩','aaac0812-1913-4161-a3ef-302f639cae93',2250,0,to_date('23/11/27','RR/MM/DD'),'오랫동안 사랑받아온 스테디셀러 과자를 컬리에서 만나보세요. 지금 소개할 새우깡은 담백하면서도 고소한 감칠맛이 매력적인 과자예요. 한 번에 먹기 딱 좋은 사이즈의 미니팩을 4봉 담았답니다. 캠핑, 소풍 등 언제 어디서나 새우깡을 가볍게 즐길 수 있어요. 마트나 편의점에 일부 러 나가지 않아도 집에서 편하게 즐길 수 있도록 준비했으니, 장바구니에 쏙 담아보세요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,111,'snack','-밀, 새우, 대두, 우유 함유
-쇠고기, 돼지고기, 토마토, 게, 닭고기, 오징어, 잣, 땅콩, 계란, 조개류(굴, 전복, 홍합)혼입가능','간혹 과자에 있는 검은 물질은 새우의 껍질등이 부분적으로 검게 보이는 것으로 안심하고 드셔도 됩니다.',to_date('24/12/23','RR/MM/DD'),to_date('23/11/09','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (39,'test','라아부엘라니에베스','스페인수제감자칩','dcb4566e-fc25-49bd-af88-f39a4b93b371',5500,0,to_date('23/11/27','RR/MM/DD'),'감자, 오일, 소금 단 세 가지 재료로 완성한 미식의 세계를 소개할게요. 라아부엘라니에베스는 아그리아 감자, 해바라기 오일 그리고 천일염 으로 감자칩을 만들어요. 이 외에는 어떤 재료도 더하지 않기에 감자칩 단 한 조각으로도 명료한 맛을 경험할 수 있지요. 현재까지도 수제 팬 프라이 방식을 고집하며, 까다로운 자격요건 및 평가 절차를 통해 선정되는 카스티야 이 레온(Castillay León) 장인 인증을 획득하기도 했답 니다. 오리지널과 이베리안 하몽맛 2가지를 준비했으니 취향에 따라 골라보세요. 공인된 아티장의 경지를 경험할 수 있는 감자칩, 한 번 맛보 면 멈출 수 없을 거예요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,151,'snack','-대두, 우유, 밀 성분 함유','직사광선을 피하고 그늘진 곳에 보관',to_date('24/12/24','RR/MM/DD'),to_date('23/11/10','RR/MM/DD'),'스페인',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (40,'test','밀클레버','미니붕어빵','70922385-5a6a-4fb4-b4e9-4dd49e04610d',5700,0,to_date('23/11/27','RR/MM/DD'),'''붕세권''이라는 단어를 들어보셨나요? 이는 붕어빵을 구매할 수 있는 지역을 뜻하는 말이라고 해요. 컬리는 우리 집을 붕세권으로 만들어 줄 간식을 준비했습니다. 손바닥의 절반 크기는 될까 싶을 정도로 조그마한 미니붕어빵이지만 속이 통통하게 차 있답니다. 취향껏 선택할 수 있 도록 다양한 맛을 고루 준비했으니, 클래식함과 트렌디함을 모두 누려보세요. 전자레인지로도 간단하게 데울 수 있지만, 바삭바삭한 빵을 맛 보고 싶다면 에어프라이어나 오븐형 토스터기 조리를 권해드릴게요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,456,'snack','- 달걀, 우유, 밀 함유
- 땅콩, 대두, 돼지고기, 호두, 닭고기 혼입가능','붕어빵의 중량은 400g입니다.
',to_date('24/12/25','RR/MM/DD'),to_date('23/11/11','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (41,'test','KF365','양념 소불고기 1kg','543eba8f-28e6-498a-adc8-f43291b557d4',21990,9,to_date('23/11/27','RR/MM/DD'),'호불호 없는 메인 요리를 꼽자면 양념 소불고기가 빠지지 않을 거예요. 달짝지근한 양념이 고루 밴 야들한 소불고기는 온 가족 밥반찬으로 딱 좋은 식재료인데요. 컬리는 맛 좋은 소불고기를 부담 없이 즐길 수 있도록 넉넉한 1kg 대용량으로 준비했어요. 육가공 전문 브랜드, 견우푸드와 손 잡고 질 좋은 소고기에 너무 짜거나 달지 않은 은근한 감칠맛을 입혀 완성했답니다. 냉장고에 구비해두고 마땅한 반찬이 떠오르지 않는 순간, 언제든지 꺼내 즐겨보세요. 명절 음식으로 활용하기에도 제격일 거에요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'meat','쇠고기, 대두, 밀 함유 본 제품은 돼지고기, 닭고기, 우유, 계란, 새우, 토마토, 오징어, 조개류(굴,바지락,개량조개)를 사용한 제품과 같은 제조시설에서 제조하고 있습니다.
','해당 상품은 냉장 제품입니다. 상품 수령 후 최대한 빠른 시일내에 섭취를 권장드립니다.
',to_date('23/12/01','RR/MM/DD'),to_date('23/11/25','RR/MM/DD'),'미국산',20020);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (42,'test','KF365','동물복지 유정란 20구','1df2426b-bbcf-4a33-9530-733fb0ed1159',9990,10,to_date('23/11/27','RR/MM/DD'),'매일 먹는 달걀, 조금 더 꼼꼼히 골라볼까요. 양계 분야의 전문가로 손꼽히는 브랜드 조인과 함께 기획한 동물복지 달걀입니다. 닭의 스트레스를 줄여주는 쾌적한 환경을 제공함은 물론, 항생제나 산란 촉진제는 일절 사용하지 않았어요. 까다로운 동물복지 인증과 무항생제 인증까지 모두 획득한 달걀이니 믿고 드셔도 좋습니다. 동물복지 유정란, 그 건강한 맛을 담아가 보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'meat','구입 후 냉장보관 하십시오.','동물복지 유정란 특성상, 달걀 사이즈가 일정하지 않을 수 있습니다.',to_date('23/12/06','RR/MM/DD'),to_date('23/11/27','RR/MM/DD'),'국내산',9000);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (43,'test','델리치오','호주산 목초육 안심 스테이크 250g','86c3585f-1e17-4c41-9860-635dd42f6163',22900,30,to_date('23/11/27','RR/MM/DD'),'지방이 적어 담백한 맛이 일품인 호주산 소 안심을 소개합니다. 소를 넓은 들판에 자유로이 방목하여, 목초를 먹이며 키웠어요. 자연 방목한 덕분에 소고기 결이 탄탄하고 육즙이 풍만하죠. 부드러운 안심 부위만을 선별해, 스테이크 조리가 간편하도록 먹기 좋은 크기로 2인분을 준비했답니다. 고급 레스토랑 못지 않은 안심 스테이크를 집에서도 취향껏 즐겨 보세요. ','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'meat','소고기 함유, 대두, 밀, 돼지고기, 우유, 토마토, 새우, 아황산류, 닭고기, 조개류(굴, 홍합, 전복), 오징어, 잣, 알류, 게, 복숭아, 땅콩, 호두, 고등어, 메밀과 동일 제조시설에서 제조.','정육 상품의 특성 상 중량은 3% 내외의 차이가 발생할 수 있습니다.
MAP 산소포장 특성 상 포장지에 접촉되는 부분의 일부 색변화가 있을 수 있으나, 변질이 아닌 정상범주 인 점 안내드립니다.
',to_date('23/12/15','RR/MM/DD'),to_date('23/11/20','RR/MM/DD'),'호주산',16030);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (44,'test','고기반찬','한돈 삼겹살 구이용 600g','0cec8e7c-6ad5-46cd-b032-aae31b93a283',17950,15,to_date('23/11/27','RR/MM/DD'),'노릇하게 익힌 삼겹살은 언제 먹어도 만족스러운 음식이죠. 컬리는 국내산 돼지고기의 삼겹살 부위를 구워 먹기 알맞은 두께로 정형해 준비했어요. 특유의 고소한 풍미는 물론, 야들한 식감까지 제대로 즐길 수 있지요. 600g을 담았으니 2인 이상 넉넉히 드실 수 있답니다. 냉장고에 든든히 구비해 두고 구이부터 볶음, 찌개까지 다채롭게 활용해 보세요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'meat','돼지고기 함유 - 이 제품은 알레르기 유발 성분(소고기)을 사용한 제품과 같은 제조시설에서 제조하고 있습니다.','정육 상품 특성상 3% 내외의 중량 차이가 발생할 수 있습니다. 비닐포장 등에 의해 산소가 공급되지않아 간혹 검붉게 변하는 현상이 발생할 수 있으나, 산소와 접촉하면 선홍색으로 돌아오는 점 안내드립니다.',to_date('23/12/20','RR/MM/DD'),to_date('23/11/11','RR/MM/DD'),'국내산',15260);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (45,'test','자연실록','무항생제 닭다리살 500g','64572f08-bd62-4ba9-a47d-d3e435393347',9990,9,to_date('23/11/27','RR/MM/DD'),'좋은 환경에서 키워 더욱 안심할 수 있는 하림의 자연실록 닭고기를 소개할게요. 무항생제 인증농가에서 기능성 사료를 먹고 자란 건강한 닭을 깨끗하게 손질하고요. 본연의 육향과 육즙을 살려 신선한 냉장 상태 그대로 담았답니다. 이번에는 닭 다리의 뼈를 발라낸 뒤, 부드러운 살코기를 담아 준비했어요. 고소한 감칠맛이 남달라 다양한 요리에 두루 활용하기 좋답니다. 해동 없이 간편하게 우리 가족 반찬을 요리해 보세요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'meat','닭고기 함유','해당 상품은 냉장 제품입니다 정육 상품의 특성상 3% 내외의 중량 차이가 발생할 수 있습니다.',to_date('23/12/30','RR/MM/DD'),to_date('23/11/15','RR/MM/DD'),'국내산',9100);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (46,'test','배나무골','연잎 삼겹살','53e42322-f602-483f-90c5-b7db4a7cd6c2',10900,15,to_date('23/11/27','RR/MM/DD'),'향긋한 연잎이 통삼겹을 싹 감싸 안은 배나무골의 연잎 삼겹살을 만나 보세요. 저온에서 숙성한 통삼겹을 훈연하여 잡내와 기름기를 빼고, 본연의 고소한 맛을 살렸어요. 삼겹살은 모두 슬라이스 된 채 연잎에 싸여 있어 별도로 썰거나 손질할 필요도 없지요. 전자레인지에서 4분만 조리하면 금세 완성되니 더욱 간편하답니다. 연잎을 살짝 벗겨내 그대로 플레이팅해도 아주 근사해요. 홈파티 메뉴로 활용하거나 손님상에 간단히 내기도 좋을 거예요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'meat','"돼지고기, 대두 함유
본 제품은 난류, 우유, 메밀, 땅콩, 고등어, 게, 새우, 복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류(굴, 전복, 홍합 포함), 잣, 밀을 사용하는 제품과 같은 제조시설에서 제조하고 있습니다."
','구입 후 냉장보관 하십시오.',to_date('23/12/10','RR/MM/DD'),to_date('23/11/18','RR/MM/DD'),'국내산',9270);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (47,'test','Better me','백색 반숙란 10구','dc993d6d-7c03-4df8-9d7c-a3f5b36d305d',6190,0,to_date('23/11/27','RR/MM/DD'),'달걀은 익히는 정도에 따라 맛과 식감이 천차만별이죠. 특히 촉촉하고 부드러운 반숙란을 좋아하는 분들이라면, 지금 선보이는 Better me의 반숙란을 놓치지 마세요. 양계 분야의 전문가로 손꼽히는 브랜드 조인과 컬리가 함께 기획한 백색란입니다. 별다른 조리 없이 반숙란의 녹진함과 고소함을 그대로 즐길 수 있어 무척 간편하죠. 소금 간도 짜지 않고 적당히 배어있어 만족스러울 거예요. 아침에 한두 알씩 챙겨 드시거나, 샐러드 및 브런치 재료로도 활용해 보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'meat','구입 후 냉장보관 하십시오.','구운란 및 훈제란은 1차적으로 실금판별기로 검사진행 후 2차례에 걸친 육안검사를 통해 실금 유무를 확인 함에도 불구하고 계란에 생긴 미세한 실금으로 인해 계란 안에서 곰팡이가 생길 수 있습니다. 가공식품이긴 하나 가공된 원물 자체인 계란의 경우 충분히 깨지거나 금이 갈 수 있으며 상품에 곰팡이가 생기셨을 경우 1:1 문의로 문의 주신다면 CS 전문 상담원을 통하여 신속히 조치 받으실 수 있습니다.
해당 상품의 사육환경 번호는 4번입니다. 
',to_date('23/12/30','RR/MM/DD'),to_date('23/11/12','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (48,'chohee1031','존쿡 델리미트','팜프레시 잠봉 100g','48e37674-dc67-4cec-b504-96dbe385716a',6480,35,to_date('23/11/27','RR/MM/DD'),'잠봉은 프랑스인들의 식탁 위에서 빠지지 않고 등장하는 햄이에요. 돼지고기를 통째로 삶아 만들기에 고기의 결이 선명하게 살아있죠. 지금 선보이는 존쿡 델리미트의 잠봉은 국내 지정 목장에서 얻은 돼지 뒷다리살로 만들어집니다. 전문 마이스터가 직접 뼈를 발라낸 통고기를 72시간 이상 숙성하고, 참나무로 훈연해 수제 잠봉을 완성하지요. 여기에 시럽까지 더해 달콤한 향미도 가미했답니다. 얇게 슬라이스한 잠봉을 차가운 상태 그대로 즐겨보세요. 잠봉 뵈르와 잠봉 프로마쥬에 빼놓을 수 없는 핵심 재료이자, 샐러드 토핑으로도 손색없으니 다양하게 활용하기 좋을 거예요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,39,'meat','돼지고기 함유 이 제품은 알류, 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 복숭아, 토마토, 아황산류, 호두, 닭고기, 쇠고기, 오징어, 조개류, 잣을 사용한 제품과 같은 제조시설에서 제조하고 있습니다.','구입 후 냉장보관 하십시오.',to_date('23/12/05','RR/MM/DD'),to_date('23/11/21','RR/MM/DD'),'국내산',4220);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (49,'test','샤인트리','깐대파 500g','d4f485db-731f-408a-b7eb-65b5fa64a58e',4990,0,to_date('23/11/27','RR/MM/DD'),'생으로 먹거나 살짝 데쳐냈을 때는 알싸하면서도 은은한 단맛을, 오래 끓여내면 시원한 맛을 내는 마법의 채소, 대파를 소개할게요. 각종 국물 요리의 육수를 낼 때는 통으로 넣어주면 시원한 맛이 제대로 우러나요. 기름기가 있는 요리에 곁들인다면 얇게 채를 썰어 파절이를 만들거나 동그렇게 송송 썰어 고명으로 뿌려주세요. 다채로운 활용도를 자랑하는 만큼 잦은 손질이 필요한 대파를 조금 더 간편하게 사용해보세요. 오키친은 그때그때 유명산지 대파를 가락시장에서 수급하여 보내드립니다.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','직사광선을 받는 곳에 두거나 물이 묻은 상태로 보관하면 상하기 쉬우니 보관 시 물기를 제거하고 서늘한 곳에 보관해주세요.','상품 특성상 중량은 3% 내외의 차이가 발생할 수 있습니다. 시세에 따라 가격이 변동될 수 있습니다. 대파는 시기적 특성으로 인해 뿌리 부분이 누렇게 될 수 있습니다.',to_date('23/12/05','RR/MM/DD'),to_date('23/11/24','RR/MM/DD'),'강원도 원주시 문막읍',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (50,'test','프레베','다다기오이 3입','078f31f0-66ef-434b-97d2-04c9fdc7467c',5490,9,to_date('23/11/27','RR/MM/DD'),'마디마다 열매가 다닥다닥 열린다 하여 붙여진 이름, 다다기오이. 꼭지로 갈수록 점차 짙어지는 녹색 그라데이션, 오돌토돌 솟아있는 돌기가 매력적인 오이예요. 특히 조직감이 뛰어나고, 씨방이 적어 쉽게 무르지 않는다는 장점이 있답니다. 식감도 우수해 오이소박이,장아찌 등 다양한 메뉴에 두루 활용하기 좋지요. 1인 가구도 부담 없는 소량 구성으로 알뜰하게 전해드릴게요. 오이의 아삭거리는 식감, 싱그러운 수분감을 오롯이 누려보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','신선 식품의 특성상 원물마다 크기 및 형태가 조금씩 다를 수 있으니 참고하세요.','계절적 요인에 따라 토질에 수분이 부족할 경우 쓴맛이 강하게 날 수 있습니다. 쓴맛을 제거하려면 꼭지를 자르고 약한 소금물 혹은 식초 물에 담가두면 효과가 있습니다. 신선식품 특성상 중량에 3% 내외의 차이가 발생할 수 있습니다.',to_date('23/12/14','RR/MM/DD'),to_date('23/11/27','RR/MM/DD'),'경기도 광주시 초월읍',5000);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (51,'test','프레베','애호박','bb1c79fb-0254-4e8b-b408-3338b6637a6e',2290,8,to_date('23/11/27','RR/MM/DD'),'지금 소개하는 채소는 어느 요리와도 잘 어울리는, 만능 식재료 애호박입니다. 반찬이 마땅치 않은 날, 냉장고 속의 애호박으로 다양한 요리를 만들 수 있지요. 노릇노릇한 애호박전과 구수한 된장찌개, 부드럽고 고소한 볶음 반찬까지. 역시 만능 채소 1순위로 손꼽힐 만하답니다. 오키친을 통해 신선한 애호박을 부담없는 양, 합리적인 가격으로 만나보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','신선 식품의 특성상 원물마다 크기 및 형태가 조금씩 다를 수 있으니 참고하세요.','시세에 따라 가격이 변동될 수 있습니다. ',to_date('23/12/15','RR/MM/DD'),to_date('23/11/27','RR/MM/DD'),'국내산',2110);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (52,'test','프레베','한입 꿀고구마 1kg','50796804-e5eb-4ce0-b7b7-6d104b75ec0c',6400,10,to_date('23/11/27','RR/MM/DD'),'꿀처럼 달콤하고 촉촉한 꿀고구마의 매력, 컬리가 준비한 한입 꿀고구마로 가볍게 즐겨 보세요. 국내 농가에서 정성스레 기른 고구마 중 한입 사이즈로만 선별해 담았답니다. 앙증맞은 크기 덕에 아이들 손에 쥐어주기도 부담 없고요. 조리 시 빨리 익고, 간식으로 하나씩 꺼내 먹기도 딱 알맞답니다. 입맞에 따라 굽거나 쪄내어, 포슬포슬 달큰한 행복을 가득 누려 보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','한입 꿀고구마는 성인 손바닥 정도의 앙증맞은 크기예요. 사진을 통해 크기를 가늠해 보세요.','상품 특성상 중량은 3% 내외의 차이가 발생할 수 있습니다. 햇고구마의 경우 저장고구마와 달리 큐어링(숙성) 과정을 길게 거치지 않은 상태이기 때문에 저장 고구마 대비 당도가 낮은 편입니다. 에어프라이어 조리보다는 찌거나 삶는 방식의 조리를 추천드립니다. 23년산 상품입니다.
',to_date('23/12/31','RR/MM/DD'),to_date('23/11/25','RR/MM/DD'),'국내산',5760);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (53,'test','팜에이트','친환경 유러피안 샐러드 130g','f6076075-6a02-46d4-b2a3-a480d8ab2df5',4790,0,to_date('23/11/27','RR/MM/DD'),'늘 먹던 채소를 대신해 새로운 식감과 맛을 느껴보고 싶다면 지금 소개하는 유러피안 샐러드를 꼭 맛보세요. 수경 재배 시설을 갖춘 스마트팜에서 깨끗하게 키워낸 특수채소를 담은 샐러드예요. 버터헤드레터스, 카이피라, 이자트릭스, 스텔릯 4가지 채소를 골고루 담아냈지요.각기 채소가 지닌 이름이 무척 생소하게 다가오지만, 샐러드는 물론 샌드위치 속재료로 활용하기에 딱 알맞아요. 그간 먹어왔던 샐러드의 식감과는 확실히 다른 아삭함과 싱그러움을 느껴볼 수 있을 거랍니다. 먹기 좋은 크기로 컷팅하여 보내드리니 가볍게 세척하여 즐겨보세요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','가급적 빠른 시일 내에 섭취하세요','신선식품의 특성상 상품의 중량의 3% 내외의 차이가 발생할 수 있습니다.
',to_date('23/12/26','RR/MM/DD'),to_date('23/11/22','RR/MM/DD'),'경기도 이천시 진상미로',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (54,'test','록야','상추&깻잎 간편쌈 120g','0688051c-6fda-4842-afb5-c88ec24929bb',3590,0,to_date('23/11/27','RR/MM/DD'),'고기를 구워 먹거나 회를 먹을 때, 채소가 빠지면 뭔가 허전한 기분이 들어요. 자칫 느끼할 수도 있는 맛을 깔끔하게 잡아주기에 쌈 채소는 필수적이에요. 오키친은 클래식한 조합이 돋보이는 상추&깻잎 간편쌈을 준비했어요. 고추,마늘을 즐겨 먹지 않고 기본적인 쌈 채소만을 찾는다면 이만한 게 없죠. 1,2인의 한 끼 식사로 적당한 양이기 때문에 먹고 남은 채소의 뒤처리를 고민할 필요도 없답니다. 고기 구이, 회에 곁들여도 좋지만 밥과 젓갈, 혹은 쌈장만 준비하여 쌈밥으로도 활용해보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','세척하지 않고 포장한 제품으로, 먹기 전 흐르는 물에 살짝 씻어주세요.','상품 특성 상 약 3% 내외의 중량 차이가 있을 수 있습니다. 시세에 따라 가격 변동이 있을 수 있습니다.',to_date('23/12/06','RR/MM/DD'),to_date('23/11/15','RR/MM/DD'),'원주시 문막읍 개나루길',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (55,'test','풀무원','국산콩 무농약 콩나물 340g','6215927f-de28-46d7-91cf-1a605f92e7c1',2590,0,to_date('23/11/27','RR/MM/DD'),'풀무원의 깐깐한 기준으로 재배한 특등급 국산콩 콩나물을 만나보세요. 콩의 품질을 나누는 등급 중에서 가장 높은 ''특''등급 국산콩으로 엄격히 선별해 키워냈어요. 줄기를 일부러 통통하게 만드는 성장촉진제는 사용하지 않고 , 오직 콩과 물로만 깨끗하게 길렀지요. 거기에 무농약 인증까지 받았으니 믿고 선택하셔도 좋답니다. 고소한 나물 반찬부터 국,밥 등 다채롭게 활용해 보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','0~10ºC 의 냉장고에 보관하세요.','시세에 따라 가격 변동이 있을 수 있습니다.',to_date('23/12/07','RR/MM/DD'),to_date('23/11/16','RR/MM/DD'),'충북 음성군 대소면 삼양로',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (56,'test','Dole','로메인 하트 300g','6e6d9072-4fd2-481f-8d24-7a16540b537d',6590,15,to_date('23/11/27','RR/MM/DD'),'로마인의 상추''라는 뜻을 담고 있는 로메인 상추는 더 이상 낯선 채소가 아니에요. 우리나라에서 흔히 먹는 상추에 비해 쓴맛이 적고 아삭아삭한 식감이 돋보이기에 샐러드는 물론, 쌈 채소로도 각광을 받고 있지요. 오키친은 외국 종자를 들여와 국내에서 재배한 Dole 의 로메인을 준비했습니다. 마치 포기 배추처럼 자라난 통 로메인에서 겉잎을 떼어내고 연한 식감의 중심(하트) 부분만을 포장했어요. 덕분에 잎을 손질하는 수고 없이, 밑동만 똑 자르고 흐르는 물에 씻어 간편하게 먹을 수 있답니다. 청량한 식감을 가진 잎채를 찾고 있었다면 로메인 하트를 권해드릴게요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','밑동을 잘라낸 뒤 흐르는 찬물에 한 장씩 가볍게 씻어주세요.','신선식품의 특성상 상품의 중량의 3% 내외의 차이가 발생할 수 있습니다. 기온상승으로 로메인의 원활한 수급을 위해 다른 품종의 로메인도 함께 배송될 수 있는 점 안내드립니다.
',to_date('23/12/07','RR/MM/DD'),to_date('23/11/15','RR/MM/DD'),'국내산',5610);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (57,'test','웰팜넷','친환경 데친 고사리 150g','651bb215-cdf1-428e-b1c5-f3b3c04bcb26',5990,0,to_date('23/11/27','RR/MM/DD'),'나물 반찬은 간단해 보여도 은근 손이 많이 가는 음식이에요. 번거로운 손질은 물론, 잘못 데치면 질겨지거나 물러지기 십상이죠. 한결 간편하고 맛있는 요리를 위해 데친 고사리를 선택해 보세요. 농약 없이 재배한 통통한 국산 고사리를 수확해, 부드럽게 데친 뒤 팩에 포장했답니다. 흐르는 물에 가볍게 세척 후 조물조물 무쳐 반찬으로 만들어도 훌륭하고요. 육개장이나 비빔밥, 생선조림 등 다양한 요리에 활용해 보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','흐르는 물에 깨끗이 세척한 뒤 요리에 사용하세요.
','상품 특성상 상품의 중량에 3% 차이가 발생할 수 있습니다.
',to_date('23/12/31','RR/MM/DD'),to_date('23/11/14','RR/MM/DD'),'경남 남해군',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (58,'test','팜조아','뚝딱! 볶음밥용 채소 500g (냉동)','2f92ae06-856d-463e-8313-f94defa1ed5e',6450,10,to_date('23/11/27','RR/MM/DD'),'볶음밥에 알록달록한 색감과 맛을 더해주는 채소, 이젠 번거로운 손질 없이 간편하게 만나보세요. 신선한 국산 감자,양파,당근,파프리카를 잘게 썰어 급속 냉동했어요. 한 알 한 알 잘 떨어져서 원하는 만큼 꺼내 쏙 넣어주면 되고요. 해동이나 세척할 필요 없이 바로 사용하면 되니 더없이 간편하지요. 볶음밥 뿐만 아니라 오믈렛, 계란찜 등 채소가 들어가는 요리에도 요긴하게 쓰일 거예요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','이 제품은 메밀, 대두, 밀, 복숭아, 토마토, 호두, 쇠고기, 조개류를 사용한 제품과 같은 제조시절에서 제조됩니다. ','이미 세척과 손질을 완료한 채소입니다. 해동과 세척 없이 냉동 상태 그대로 요리에 사용하세요.',to_date('23/12/12','RR/MM/DD'),to_date('23/11/15','RR/MM/DD'),'전라북도 익산시 번영로',5810);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (59,'test','팜에이트','월남쌈용 채소 300g','b284ea45-c4bd-457e-ba64-2a7b245b01d3',6690,10,to_date('23/11/27','RR/MM/DD'),'한 입 가득 다채로운 맛과 풍성한 식감을 안겨주는 월남쌈. 하지만 재료 준비가 번거로워 좀처럼 도전하기도 어렵기도 한데요. 오키친이 월남쌈에 잘 어울리는 국산 채소를 깔끔하게 채썰어 한데 모았어요. 혼자서도 부담 없는 양으로 담아, 1~2인 가구의 한 끼 식사로도 알맞답니다. 취향에 따라 소스,육류,해산물 등을 준비해 간편하고 든든한 월남쌈을 즐겨보세요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','드시기 전에, 반드시 세척해 주세요.','수분이 많은 파프리카 특성상 포장에 물이 고여 있거나, 물이 들어 원물 색이 어두워 보일 수 있어요. 제품 품질 및 선도에 이상이 아닌 점 알려드립니다.',to_date('23/12/07','RR/MM/DD'),to_date('23/11/09','RR/MM/DD'),'경기도 평택시 진위면 ',6030);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (60,'test','록야','꽈리고추 100g','4d762e1b-98b2-4a09-a619-f3a99d5fc92a',1490,0,to_date('23/11/27','RR/MM/DD'),'쭈글쭈글한 형태의 꽈리고추는 생으로 먹기보다는 요리에 사용되는 경우가 많아요. 무르지 않게 살짝 볶으면 야들야들하면서도 아삭한 식감을, 알맞게 쪄내면 개운한 매콤함을 즐길 수 있죠. 입에 착 감기는 듯한 감칠맛을 품고 있어 다양한 찜,볶음,조림 요리에 활용된답니다. 오키친이 신선한 꽈리고추를 부담 없는 양으로 전해드릴게요. 남길 걱정 없이 원하는 만큼 여러 요리에 더해보세요.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'vege','세척한 꽈리고추는 물기를 제거한 상태로 키친타월이나 신문지로 감싼 뒤, 밀폐용기에 담아 냉장고 채소칸에 보관하세요.
','상품 특성상 중량은 3% 내외의 차이가 발생할 수 있습니다.
',to_date('23/12/14','RR/MM/DD'),to_date('23/11/23','RR/MM/DD'),'원주시 문막읍 개나루길',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (61,null,'몽슈슈','떠먹는 도지마','b735d9f3-14ab-48e0-9567-86fb0d71eee2',14500,0,to_date('23/11/27','RR/MM/DD'),'''몽슈슈'' 하면 도지마롤이 떠오를 정도로, 도지마롤은 지금의 몽슈슈를 있게 한 시그니처 메뉴지요. 폭신한 식감 사이로 퍼지는 뽀얀 크림의 부드러움에 절로 감탄이 나오기도 하는데요. 이번에는 몽슈슈의 특제 크림과 시트를 층층이 쌓아 완성한 떠먹는 도지마를 준비했어요. 고급 스러운 원형 상자를 열면 솔솔 뿌려진 슈가 파우더가 시선을 끄는데요. 한입 떠먹으면 도지마 특유의 산뜻하면서도 달콤한 풍미가 고스란히 느껴진답니다. 부담 없는 선물이나 손님맞이 디저트로 센스 있게 꺼내 보세요.','거절','비전시',to_date('23/11/28','RR/MM/DD'),null,40,'bakery','밀, 대두, 알류(계란), 우유, 땅콩, 호두 함유
','이미 냉동된 바 있으니 해동 후 재냉동하지 마시길 바랍니다.
',to_date('24/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경기도 광주시 곤지암읍',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (62,'test','몽슈슈','떠먹는 도지마','ac450e90-0534-45f1-b00a-9db59bd2dd08',14500,0,to_date('23/11/27','RR/MM/DD'),'''몽슈슈'' 하면 도지마롤이 떠오를 정도로, 도지마롤은 지금의 몽슈슈를 있게 한 시그니처 메뉴지요. 폭신한 식감 사이로 퍼지는 뽀얀 크림의 부드러움에 절로 감탄이 나오기도 하는데요. 이번에는 몽슈슈의 특제 크림과 시트를 층층이 쌓아 완성한 떠먹는 도지마를 준비했어요. 고급 스러운 원형 상자를 열면 솔솔 뿌려진 슈가 파우더가 시선을 끄는데요. 한입 떠먹으면 도지마 특유의 산뜻하면서도 달콤한 풍미가 고스란히 느껴진답니다. 부담 없는 선물이나 손님맞이 디저트로 센스 있게 꺼내 보세요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'bakery','밀, 대두, 알류(계란), 우유, 땅콩, 호두 함유
','이미 냉동된 바 있으니 해동 후 재냉동하지 마시길 바랍니다.
',to_date('24/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경기도 광주시 곤지암읍',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (63,'test','우드앤브릭','말돈 소금빵(2개입)','a11b8289-d363-442d-b9a1-a2796fa451f9',6000,0,to_date('23/11/27','RR/MM/DD'),'빵집에 가면 꼭 집어 오는 스테디셀러들이 있지요. 엄선된 재료로 순수한 빵을 만드는 우드앤브릭에서 심플하지만 깊이 있는 빵을 선보입니 다. 말돈 소금은 바닷물을 끓여서 얻은 자염인데요. 깨끗하면서도 부드러운 맛이 특징이지요. 우드앤브릭은 말돈 소금을 얹어, 한결 조화로운 풍미의 소금빵을 만들었어요. 고소한 버터의 향을 해치지 않으면서도, 짭짤한 맛으로 포인트를 더해 준답니다.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'bakery','밀, 대두, 알류(계란), 우유, 땅콩, 호두 함유
','이미 냉동된 바 있으니 해동 후 재냉동하지 마시길 바랍니다.
',to_date('24/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경기도 고양시 덕양구',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (64,'test','근대골목단팥빵','소보루단팥빵(5개입)','4afd1ab5-0098-4976-9d50-ad70e4253b14',14000,0,to_date('23/11/27','RR/MM/DD'),'단팥빵은 어느 재료와 조합해도 참 맛있고 변함없이 친근해요. 생크림을 더해 달콤하게 즐기거나, 딸기와 함께 새콤달콤하게 즐겨도 좋은데 요. 이번엔 팥 특유의 고소한 맛을 제대로 느낄 수 있는 ''소보루 단팥빵''을 소개할게요. 단팥빵 위에 땅콩버터의 풍미를 가득 안은 소보루를 두 텁게 덮어주었어요. 빵 속 팥앙금에는 호두까지 들어 있어 고소함이 배가 되어 다가오죠. 팥앙금 속에 콕콕 박혀있는 통팥과 호두 그리고 크 런치한 소보루가 함께 만들어내는 재미난 식감까지 한 번에 즐겨보세요. 5개씩 깔끔한 상자에 담은 상품이라, 센스 있는 선물로도 제격이랍니다.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'bakery','밀, 대두, 알류(계란), 우유, 땅콩, 호두 함유
','이미 냉동된 바 있으니 해동 후 재냉동하지 마시길 바랍니다.
',to_date('24/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'대구 중구 남성로',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (65,'test','블랑제리코팡','바질식빵','f7875de4-511f-48f0-9d37-c5ef7fd02a44',7300,0,to_date('23/11/27','RR/MM/DD'),'다양한 프랑스 빵으로 유명한 망원동의 작은 빵집, 블랑제리코팡의 바질식빵을 소개합니다. 푹신한 식빵 반죽 속에 바질페스토를 넣고 네모 나게 모양을 잡아 구웠는데요. 촉촉한 빵을 반으로 가르면, 바질의 기분 좋은 향기가 코 끝에 맴돌고요. 틈틈이 쫄깃하게 씹히는 세미 선드라 이 토마토의 짭짤하고 달달한 맛이 입맛을 돋우죠. 이 모든 것을 치즈 2☆부드럽게 감싸주니, 더할 나위가 없답니다. 별다른 스프레드를 바르 지 않고도, 그 자체만으로 풍성한 한 입을 만끽해 보세요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'bakery','밀, 대두, 알류(계란), 우유, 땅콩, 호두 함유
','이미 냉동된 바 있으니 해동 후 재냉동하지 마시길 바랍니다.',to_date('24/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경기도 파주시 문산읍',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (66,'test','포비베이글','듬뿍 무화과 스콘','184634ce-f86f-42a1-9750-0e7cb0f0ccc2',4000,0,to_date('23/11/27','RR/MM/DD'),'좋은 재료로 정직하게 만든 베이글로 큰 사랑을 받고 있는 포비베이글. 이번에는 그동안의 노하우를 담아 만든 무화과 스콘을 선보입니다. 포 비의 시그니처 플레이버라고 할 수 있는 무화과를 활용해 완성한 제품이에요. 반건조 무화과를 아낌 없이 넣어 식감이 아주 풍부하고요. 무화 과 고유의 달큰함 또한 가득 느낄 수 있답니다. 따뜻하게 데운 뒤 고소한 우유를 곁들여 드셔 보세요. 부드러운 크림을 얹어 드셔도 아주 잘 어 울릴 거예요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'bakery','밀, 대두, 알류(계란), 우유, 땅콩, 호두 함유
','이미 냉동된 바 있으니 해동 후 재냉동하지 마시길 바랍니다.
',to_date('24/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경기도 파주시 문산읍',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (67,'test','야심작','슈크림 붕어빵 500g','99cce35c-0276-44dc-906a-6acc8526a091',6900,10,to_date('23/11/28','RR/MM/DD'),'추운 겨울에 손을 호호 불며 먹곤 했던 붕어빵. 이제는 집에서 편안하게 즐겨 보세요. 프레시지가 선보이는 새로운 브랜드, 야심작의 슈크림 붕어빵을 소개합니다. 야심작만의 노하우를 담아 반죽한 빵에 커스터드 크림을 가득 채워 만들었어요. 한입 베어 물면, 쫄깃한 식감과 함께 고소하면서도 달콤한 풍미가 느껴지지요. 전자레인지나 에어프라이어로 데워 따뜻하게 드셔 보세요. 온 가족이 함께 즐길 간식으로 꼭 알맞을 거예요.

','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'bakery','밀, 대두, 알류(계란), 우유, 땅콩, 호두 함유
','이미 냉동된 바 있으니 해동 후 재냉동하지 마시길 바랍니다.',to_date('24/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경기도 용인시 처인구',6210);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (68,'test','야심작','통팥앙금 단팥 붕어빵 500g','7fb01a8b-0804-4850-a427-04f536a24719',6900,10,to_date('23/11/28','RR/MM/DD'),'추운 겨울에 손을 호호 불며 먹곤 했던 붕어빵. 이제는 집에서 편안하게 즐겨 보세요. 프레시지가 선보이는 새로운 브랜드, 야심작의 슈크림 붕어빵을 소개합니다. 야심작만의 노하우를 담아 반죽한 빵에 커스터드 크림을 가득 채워 만들었어요. 한입 베어 물면, 쫄깃한 식감과 함께 고소하면서도 달콤한 풍미가 느껴지지요. 전자레인지나 에어프라이어로 데워 따뜻하게 드셔 보세요. 온 가족이 함께 즐길 간식으로 꼭 알맞을 거예요.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'bakery','밀, 대두, 알류(계란), 우유, 땅콩, 호두 함유
','이미 냉동된 바 있으니 해동 후 재냉동하지 마시길 바랍니다.
',to_date('24/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경기도 용인시 처인구',6210);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (69,'test','KF365','귤 1.5kg','4790c767-823a-4459-8f0c-ad767d13080b',5000,0,to_date('23/11/28','RR/MM/DD'),'상품 특징
- 당도 선별을 거쳐 높은 당도를 자랑
- 상큼한 향과 달콤한 맛이 진한 감귤

인증과 수상
- GAP 우수관리인증(농림축산식품부)

브랜드&생산지
- 깨끗한 자연을 자랑하는 곳
- 해풍을 맞은 감귤','승인','전시',to_date('23/11/28','RR/MM/DD'),null,300,'fruit','통풍이 잘 되는 서늘한 곳에 보관하셔야하고, 껍질이 갈라져있거나 흠이 있는 귤은 상하기가 쉬워 곰팡이가 생기거나 주위에 맞닿은 귤들을 썩게 할 수 있으니 가급적 빨리 드시는 것이 좋습니다. 오랜 기간 보관하시려면?냉장 보관하시는 것을 추천드립니다. 운영기간과 평균 당도는 작황에 따라 일부 달라질 수 있다는 점도 참고해주세요. ','평일 13시 이전 주문건은 당일 출고 됩니다.
',to_date('24/01/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'제주',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (70,'test','KF365','샤인머스켓','15144718-3acc-4e97-8e0e-5fdf97fc9ca8',15000,0,to_date('23/11/29','RR/MM/DD'),'상품 특징
- 껍질째 먹기 좋은 샤인머스켓
 - 망고 같은 향과 아삭한 식감이 특징
- 탄탄하고 굵은 과육을 가진 품종
  - 생과로 즐길 때 가장 맛있는 과일','승인','전시',to_date('23/11/28','RR/MM/DD'),null,100,'fruit','냉장보관 및 세척 후 드세요.
','받으신 후 포장을 뜯지 않은 상태로 냉장고나 김치냉장고에 보관하면 오래도록 달콤하고 아삭한 맛을 느끼실 수 있습니다.
',to_date('23/12/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (71,'test','KF365','세척사과 1.5kg','ea5e5fed-7734-4cc5-a37e-f8b91961cd93',35900,0,to_date('23/11/29','RR/MM/DD'),'껍질째 먹는 세척사과는, 경북 지역에서 수확한 당도 12Brix 이상의 달콤한 사과만 엄선하여 소비자에게 제공합니다.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,120,'fruit','사과는 배송중에 멍이 발생될 수 있으나, 당도나 맛에는 지장이 없으니 드셔도 무관합니다.
','받으신 후 포장을 뜯지 않은 상태로 냉장고나 김치냉장고에 보관하면 오래도록 달콤하고 아삭한 맛을 느끼실 수 있습니다.
',to_date('24/12/27','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'경북',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (72,'test','KF365','골드키위','076cae56-aba9-4567-8748-3d56c1cb092f',9660,0,to_date('23/11/29','RR/MM/DD'),'세계적인 프리미엄 키위 브랜드 제스프리는 품질관리를 통해 키위 시장을 선도하고 있습니다. 전 세계적으로 1년 내내 우수한 품질의 키위를 공급하기 위해 현지 농장과 협업하여 일원화된 시스템을 통해 맛있고 신선한 키위를 전해드리고 있습니다. 또한 세계적인 키위 브랜드로서 좋은 모범 기준이 되고자 노력하며 환경을 파괴하지 않고 지속 가능한 사업을 추진하는 브랜드입니다.
','승인','전시',to_date('23/11/28','RR/MM/DD'),null,40,'fruit','성인이 손에 들고 있는 이미지로 사이즈를 가늠해보세요. 신선 상품이라 크기가 일정하지 않을 수 있으니, 참고용으로만 확인해주세요.
','썬골드 키위와 호트 16 키위 두 가지 품종 중 한 가지로 발송되는 상품입니다. 두 종류 모두 제주 골드 키위의 품종인데요. 두 키위의 모양이 다소 다를 수 있으나, 품종에 대한 차이이며 모두 제주에서 자란 골드 키위랍니다. 썬골드 키위 품종은 타원형 모양이며 끝에 부리 모양이 없고, 호트 16 키위는 끝이 새 부리 모양과 같지요. 두 품종 모두 맛은 일반 골드 키위처럼 달콤하니 참고해주세요.
',to_date('24/02/28','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'제주',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (73,'test','KF365','레몬 ','dea599dd-8545-4757-b441-793fb98cce49',3000,0,to_date('23/11/29','RR/MM/DD'),'한 팩에 3개의 레몬이 개별 포장되어 필요할 때마다 꺼내어 사용하기에 좋습니다.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,38,'fruit','서늘한 곳에 보관해주세요
','세척 후 드세요',to_date('23/12/31','RR/MM/DD'),to_date('23/11/02','RR/MM/DD'),'칠레',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (75,'chohee1031','KF365','칠리체리','783c3695-1934-41c5-a6a2-789a3732724f',17200,0,to_date('23/11/29','RR/MM/DD'),'보는 것만으로도 상큼한 기분이 드는 체리. 탱글탱글 달달한 맛이 돋보이는 체리로 만나보세요. 검붉은 색의 체리는 매끈하고 탱글한 하트 모양으로 더욱 사랑스러워 보이는데요. 달콤한 과즙을 품고 있어 입속에 달달한 향이 금세 퍼진답니다. 생으로 먹어도 충분히 맛있지만, 믹서기에 우유와 함께 갈아 스무디를 만들면 색다른 맛을 즐길 수 있답니다. ','승인','전시',to_date('23/11/28','RR/MM/DD'),null,39,'fruit','직사광선이 닿지 않는 서늘한 곳에 보관해주세요.
','체리 세척 시, 소금물이나 식초물로 빠르게 씻어주세요.
',to_date('23/12/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'칠리',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (76,'chohee1031','KF365','배','b7ab13e9-dbe9-42d6-bc78-2801dec85a3d',17000,0,to_date('23/11/30','RR/MM/DD'),'토질이 비옥하고 따뜻한 기후로 배를 재배하기에 최적의 조건을 갖춘 배의 주산지, 전남 나주에서 생산하여 산지 직송으로 더욱 신선하고 맛있는 명품 나주배입니다.','승인','전시',to_date('23/11/28','RR/MM/DD'),null,50,'fruit','수령후 즉시 상자를 개봉해 냉장 보관하세요. 배는 신선식품이기에 최대한 빠른 시일 내 섭취해 주세요
','평일 13시 이전 주문건은 당일 출고 됩니다.
',to_date('23/12/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'전남',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (77,'chohee1031','KF365','델몬트 골드파인','8070ab20-a319-40fc-8f85-8ea2ff8d8c97',8000,0,null,'노란빛 과육 속 달콤한 과즙이 가득한 파인애플이에요. 껍질을 제거하고 먹기 좋게 손질해 담았지요. 탄탄하면서도 촉촉한 식감이 일품이랍니다. 한입 크기로 자른 뒤 포크로 콕 찍어 간편하게 즐겨보세요.
','승인대기','비전시',to_date('23/11/28','RR/MM/DD'),null,40,'fruit','이 제품은 토마토를 사용한 제품과 같은 시설에서 제조하였습니다.','냉장 보관 및  개봉 후 빠른 섭취 권장',to_date('23/12/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'충북 음성',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (78,'chohee1031','KF365','용과','a11f7086-ed7a-48db-b6e6-b458056a821a',9000,0,null,'상품 특징
- 신맛이 적으며 달콤한 과즙이 풍부
- 부드러운 과육과 톡톡 터지는 씨앗
브랜드&생산지
- 신선함을 전달하는 브랜드 Dole
재료와 영양 성분
- 비타민, 미네랄, 식이섬유 등 함유','승인대기','비전시',to_date('23/11/28','RR/MM/DD'),null,40,'fruit','직사광선을 피해 서늘한 곳에 보관
','용과를 실온에 후숙하여 더욱 달콤하게 드세요. 초록색 부분이 살짝 갈색으로 변하고, 만졌을 때 말랑말랑하면 먹기 좋은 상태랍니다
',to_date('23/12/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'서울',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (79,'chohee1031','KF365','바나나','0c155783-fde6-41d5-8f4b-18f9e8123497',8000,0,null,'달콤하고 향긋한 풍미의 바나나
한 손에 쏙 들어오는 크기
쫀득쫀득하면서도 부드러운 식감
후숙해서 먹으면 더욱 달콤한 과일
주스, 샐러드, 샌드위치 등으로 활용','승인대기','비전시',to_date('23/11/28','RR/MM/DD'),null,40,'fruit','실온보관','짓무름과 상처 방지를 위해 후숙이 덜 된 상태로 유통하며, 이로 인해 초록빛 바나나를 받으실 수 있습니다. 실온에 1~2일 정도 두어 후숙 해보세요',to_date('23/12/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'필리핀',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (80,'chohee1031','KF365','수박','157da7b8-b5dd-47e9-ac5d-bc62d677f9a4',20000,0,to_date('23/11/29','RR/MM/DD'),'국내 산지에서 재배되어 선별하여 믿고 드실 수 있습니다.
','승인','비전시',to_date('23/11/28','RR/MM/DD'),null,80,'fruit','품질 유지를 위해 냉장보관해주세요(0~10℃)','신선 식품의 특성상 크기 및 중량이 일정하거나 동일할 수 없습니다.',to_date('23/12/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'국내산',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (81,'chohee1031','dfe','fef','2ef5fd7f-11f9-4a83-913d-94fe992fd7df',234324,0,null,'efef','거절','비전시',to_date('23/11/29','RR/MM/DD'),null,234,'vege','sfee','fsef',to_date('23/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'efef',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (82,'tester123','KF365','오이 3개입','113b6e47-da38-4c6c-99b0-a29b9efee9fd',123,0,null,'ㅓㄴㄹㄷ','거절','비전시',to_date('23/11/30','RR/MM/DD'),null,123,'vege','dsf','sfdfs',to_date('23/12/01','RR/MM/DD'),to_date('23/11/15','RR/MM/DD'),'dfs',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (83,'tester123','sefe','귤','3345c0c9-4988-4d9c-9a8e-32475ca31816',30000,0,null,'수정','승인대기','비전시',to_date('23/11/30','RR/MM/DD'),null,100,'vege','수정','수정',to_date('23/11/30','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'dsf',0);
Insert into OKITCHEN.PRODUCT (PRODUCT_ID,SELLER_ID,BRAND,TITLE,IMAGE,PRICE,DISCOUNT_RATE,ACCEPT_DATE,CONTENT,APPROVAL_STATUS,PRODUCT_STATUS,SUBMIT_DATE,OPTION_CHECK,STOCK,CATEGORY_NAME,CAUTION,NOTIFICATION,EXPIRATION_DATE,MANUFACTURING_DATE,ORIGIN,DISCOUNTED_PRICE) values (84,'tester1234','KF365','오이 3개입','fa5feb1a-ab4f-4556-9f61-da57f9658715',3000,10,to_date('23/11/30','RR/MM/DD'),'오이 3개입 수정','승인','전시',to_date('23/11/30','RR/MM/DD'),null,30,'vege','주의사항','안내사항',to_date('23/12/31','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),'여주',2700);
REM INSERTING into OKITCHEN.PRODUCT_IMAGE
SET DEFINE OFF;
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (2,4,'480f30ca-c66f-41bd-8090-8eae3c10b5d2');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (3,4,'c2a20a4a-d0cf-4314-930c-3db2f6b1b423');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (4,5,'61926fa4-f1a7-4ae3-9d79-16a6fe659bad');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (5,5,'7682de8c-4ecc-4495-a8c0-04afc269bf76');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (6,6,'d8894160-75e6-4a94-8e6b-b0c3bb7f4d6f');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (7,6,'c360778a-99de-4c6e-8d2c-f9d784d5281a');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (8,7,'0d1dfa5f-c845-46a4-92c8-e4a8e730e506');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (9,7,'1da125e3-52c6-40fc-a536-3db8b8b14158');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (10,8,'4e5f2ae4-7e87-4ad2-9a30-a67f67ba91da');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (11,8,'1dc128fe-de88-48fe-95bc-ac1e5584c0ed');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (12,9,'4e60fd15-e290-4023-97c9-5af493e9fe27');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (13,9,'3577f763-1c6b-49da-b7ef-0cc9445fe596');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (14,10,'c7844f0d-c32b-41a4-aae7-d82e5503855d');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (15,10,'44bfd3db-8fa9-477f-b9c2-b475513b7504');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (16,11,'67b764a3-60bc-4b4c-b3d7-3e70eb3ad501');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (17,12,'b73701bb-b7bd-4ff7-b31a-f1bc615ef7a6');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (18,13,'94a1351e-95ff-4919-89cf-f784f0f5c14a');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (19,13,'fb17e679-c69b-4afa-aac7-15f1a2faa02c');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (20,13,'a129489d-9783-45f8-8385-7121068e4f25');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (21,15,'5b2f33d5-43f3-4503-9fb4-7b406cff7b9b');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (22,16,'b4ae2d14-ea7f-419b-880b-ee256faedd68');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (23,16,'a2c9012f-21c4-4ab6-9f81-8b2ddb0ee068');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (24,17,'024582a2-8f79-4d66-9125-d318f91a9cd9');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (25,17,'39fa085f-fdfd-494a-904b-bafb3d883fbf');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (26,18,'델리치오_detail_01');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (27,18,'델리치오_detail_02');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (28,21,'또보겠지_detail_01');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (29,21,'또보겠지_detail_02');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (30,21,'또보겠지_detail_03');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (31,23,'266578a2-0e18-4d05-964f-5fb58c722bee');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (32,23,'85809a30-d203-40a4-93db-7623b73ec412');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (33,25,'85a6e411-7b60-4a8c-ac88-7a8d6d590726');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (34,25,'0fcd5f7e-3475-4c00-910e-a11a260d42c8');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (35,26,'e712047e-3072-428f-9d52-ff1d1659e878');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (36,26,'70d388a9-1e14-4687-87c8-9703065a7c98');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (37,26,'83c58b73-ca59-4f2a-a98d-8cfd625ffc26');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (38,28,'9e62a404-4514-4df2-865e-304e826df529');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (39,29,'5fca2f22-e2d2-46de-b0da-5d2864657211');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (40,29,'717a0cb3-0c08-476f-bb58-983d60c8d9e7');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (41,29,'6ba5eccb-439a-4ca6-b389-08d9846f54c4');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (42,30,'be589b1e-0122-4d91-afe4-0a6f64cff023');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (43,30,'e080de0e-4fbb-4dcc-9507-9f67e827cc8f');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (44,30,'4c2adbec-7f44-47ca-8126-38d3dcc46748');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (45,31,'15082a18-55bd-46cb-a656-83d04dbba2fd');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (46,31,'7bf3ae99-0465-4ff6-baf1-1ad164a58f8f');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (47,31,'51b3f656-6aed-41da-ad81-e0bd5e23ee55');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (48,32,'064ee8b2-f397-4170-b6e6-981ffb7464f5');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (49,32,'4a6a5694-d051-4057-9c76-8831a149fc9c');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (50,32,'6218645e-58cf-48bb-9cf9-b2bd4008a2db');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (51,33,'8a0a315e-57e6-4503-adde-1dd07efb5f77');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (52,33,'e0cd5de1-3cd9-4a0b-aa66-19365fb19f08');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (53,34,'3c35541b-287f-4d35-9847-fa3dc4faf182');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (54,34,'08c72fdf-e2aa-42c2-9c4c-b1ab9c5da33d');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (55,35,'873f01ee-aca3-46d8-ab90-cda2184b27be');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (56,35,'5e09dce7-ef51-4bdc-8ff7-17a8d49f24f5');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (57,36,'e7a61da3-3423-4e20-baf9-166c660376ad');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (58,36,'fa254dbd-ae47-41b2-bcd4-348af604e799');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (59,37,'f30468ce-0769-4bca-8b51-edada7ad37c4');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (60,37,'2b8b8a0d-43f9-46e6-86fb-8738dfcfa31b');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (61,38,'15314ecc-4245-4021-84ee-49759ba41707');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (62,38,'f53a8e17-e77e-4e82-9fff-061c93bbf693');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (63,38,'4ff52586-2782-4741-82b3-f819e16a16b7');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (64,39,'7dcd6fc3-8a76-4dc6-8826-22c30bcb8486');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (65,39,'95cbc696-6913-497f-8fdb-73a108fdd211');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (66,39,'64b2f741-3b94-44c5-95cb-bca456793a5f');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (67,40,'c723072b-8586-4923-9c8c-e2a0d1487aaa');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (68,40,'21fecf39-08bc-4dbf-b0cf-628fad457ac1');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (69,40,'7cf79f1a-6481-4222-a8f2-a49c15784452');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (70,41,'a8f739ef-a65d-4ff7-8251-b35392be32ea');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (71,41,'8dca409c-2894-4a01-b70e-becffb24aaec');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (72,42,'95ca674d-582e-410b-a855-dd14d43eafcf');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (73,42,'02ae0365-ef70-4435-9d93-32f4e31b505d');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (74,43,'dee697c8-b07d-45ed-9193-9493d57a504a');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (75,43,'03d896da-690f-479b-b7bc-d8dd36891b84');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (76,44,'be1cd9cd-b9f4-40a8-a91e-74ba7f041434');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (77,44,'e4295807-930c-4cea-8e81-4f9f84eea3cc');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (78,45,'54c6e235-9667-48b7-bcd0-a1af00ad6b0e');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (79,45,'1b76dd81-c244-49bc-ab85-3a10d4269978');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (80,46,'f5ed440a-dd9d-4798-90d3-cf7f3a2eafc6');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (81,46,'be87a4af-5c04-49a8-a6f4-88dd735ce0eb');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (82,47,'7295dc47-1d97-4b19-b112-16bde7babf83');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (83,47,'5cd15489-738d-4a2c-a553-747671141a5e');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (84,48,'e07934db-7a0d-4d02-851d-f17f7122136a');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (85,48,'822699cc-6f0a-47c6-a526-78bbf7062367');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (86,49,'6905d588-3210-48da-92de-a7c6e733a2eb');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (87,49,'1f12983f-7bfe-45d7-9059-522c1cc94072');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (88,50,'fde2b2d8-b092-4a78-a1ac-9d27dd03572d');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (89,50,'9bd06da4-35d5-48fc-a45a-238f7f475d51');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (90,51,'7e7818f7-783f-4762-8f03-89108bf318b1');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (91,51,'528e9f89-c0fd-403f-bb3e-3392a33a52bf');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (92,52,'0b635aa8-4fcf-4567-8779-e6774abd5ee3');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (93,52,'cfc04fe3-67f8-4ed1-836c-71a8dc94a41e');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (94,52,'15e9b4d0-2a03-4280-9abd-704b98e8db8d');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (95,53,'b41c3fc3-cf69-4fd9-b59b-531b5668fa69');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (96,53,'98047deb-22de-4fca-87a2-3f1e2be8e812');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (97,53,'b807032a-94ec-4186-8e1c-7eec63173e06');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (98,54,'0ea9874d-d274-4ab0-acb1-cd6567d13275');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (99,54,'9de67c81-6014-4684-9b73-ed80ffcc6c41');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (100,55,'412be986-bcde-4c2f-bf47-3f66824fa8d1');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (101,55,'ee739c44-231b-4fab-a2a2-e3dd6ac7624a');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (102,56,'ec79ef35-046f-4194-a5db-8b60a13c354d');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (103,56,'40b0cb31-d421-4967-8a55-a0c3450ed9cf');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (104,57,'b01b1a95-4050-4849-add8-15fdd1ad4271');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (105,57,'f699d362-b231-4037-8911-acf0181b3330');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (106,57,'3aa99136-9b40-4bdb-856e-84ceb8637768');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (107,58,'76a90ed6-54b0-4ef1-a709-ff4368ceb558');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (108,58,'087906a2-e3b3-4756-8e61-511ac0ee8dc7');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (109,59,'d721f411-7514-4197-a9bb-28f6dd82cf68');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (110,59,'1ed08d22-d826-494d-899f-d60a7008861b');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (111,60,'f5e6ee98-d289-4cde-899d-a94f6666d012');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (112,60,'33d080f8-dffa-436f-9b33-e9c7db336662');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (113,61,'95522424-3d10-4a88-b91e-125d0123a1e0');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (114,61,'e6444b37-687a-4f45-95ca-e39b413808c5');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (115,62,'72447b9d-69d4-4e94-8ea0-72bf5a750608');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (116,62,'59ef47a6-2b18-4854-b25c-dc828e3c73bf');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (117,63,'0c82ad3d-90f7-4ec0-b19b-f7ebe87e0787');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (118,63,'e8700d77-793c-42d7-b0f0-5755d5037820');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (119,64,'98181543-4bed-412e-aa16-9928c82f57f3');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (120,64,'50153cbd-4485-458b-bdb4-eca87fa6f745');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (121,65,'f5b637c1-b065-43da-9e98-bb4b99398ad8');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (122,65,'06a2f5d7-15b4-4aaa-a89f-1d9926c196f0');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (123,66,'9cf86044-4365-447d-a96d-44f138dae882');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (124,66,'f0368941-0b8b-4a61-ba01-08c6788eb070');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (125,67,'e97e9bd4-1879-447a-84be-f696cc653912');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (126,67,'4d1fa955-a7d7-424b-a720-9dbb80aad387');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (127,68,'854924ae-b925-4378-8500-1252539ea406');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (128,68,'ed1b06d4-f7c8-4c5c-a1cf-d39bd31040e6');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (129,69,'5a747c54-7e4d-4105-a2d3-c459ce9f43c0');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (130,69,'0f8a8559-9bbd-4030-ad49-d4b271ed62d4');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (131,69,'b7e078cc-fa5c-4ecc-9250-1953d299da8f');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (132,70,'937da19b-a858-4a2d-b5e7-32e7b5380ce9');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (133,70,'bf2f89ee-2426-413b-9a16-fd86f22a7643');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (134,71,'e4e5bf17-243f-4526-8ffa-b25d750d276b');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (135,71,'7070d35b-4008-45d7-a58b-bbbfbb886ff3');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (136,71,'4f59f5fe-bdd4-4079-8ac1-1904827a7eab');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (137,72,'31758375-77d0-409f-b7cc-6cc5dae10a0c');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (138,72,'9b148310-8de5-4814-9cb9-e01de130039f');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (139,73,'3370aa6e-418e-4aee-b035-d96b50496634');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (140,73,'e8d0e6aa-3324-4a9c-99ae-419aa87ce73e');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (141,75,'aad806d8-fb7b-4c6a-8694-75095062b86d');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (142,75,'205dbb14-a1f1-4ded-8531-ed34e0e0824d');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (143,75,'6c854409-e192-4f52-bb54-1b7c1dfa6de8');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (144,76,'28071cba-8752-409c-9a67-3aa7794ed5d5');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (145,76,'ae8afac4-8acc-4c7f-a5bf-ceabc2fa9b36');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (146,77,'b2b7e54b-b866-4fb9-bce0-4f98092127df');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (147,77,'77f7c398-987f-4eb6-b4b7-378663a18ec0');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (148,77,'afb2bbb6-9e11-4d7b-bb87-9c0045b15836');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (149,78,'d8ecb9c4-de0a-4eea-ab5a-00b1536078d5');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (150,78,'47f139b4-6ca0-4029-a8e8-115c8466f1f0');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (151,79,'7da37f48-3c40-4ef7-b981-0b2a2734e4f0');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (152,79,'65b602ca-48e5-427e-9648-1e997ab981a0');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (153,79,'7d011cd3-5849-4e47-b386-ffcab254a4f1');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (154,80,'6b50167a-9b87-488a-97eb-f92179f86776');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (155,80,'679c1773-8283-4961-ba3f-6ebde6769756');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (167,84,'e7b92ac9-50d0-445d-9185-aa930e7fd8ea');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (157,83,'1ecb38b0-4ec9-4eda-9b71-5bb17fe0137c');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (164,81,'a06222bb-d9c8-4310-acbd-d0abf9f851b6');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (165,81,'b9805ceb-d150-4eaf-afd5-75f924fa933b');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (166,81,'1278984b-b626-4526-92b5-e83a18747571');
Insert into OKITCHEN.PRODUCT_IMAGE (IMAGE_ID,PRODUCT_ID,PRODUCT_PHOTO) values (168,84,'27dcde04-832f-48ba-a0a3-dc84bdce0e74');
REM INSERTING into OKITCHEN.RECIPE_INFO
SET DEFINE OFF;
Insert into OKITCHEN.RECIPE_INFO (PIC_ID,COMMUNITY_ID,RECIPE_PHOTO) values (9,10,'a410fdb6-f4e6-4b7b-958e-c262236b83d7');
Insert into OKITCHEN.RECIPE_INFO (PIC_ID,COMMUNITY_ID,RECIPE_PHOTO) values (10,10,'ac338278-7931-4af0-a18a-7c186ac0775d');
Insert into OKITCHEN.RECIPE_INFO (PIC_ID,COMMUNITY_ID,RECIPE_PHOTO) values (11,10,'a9f485d4-81ca-40d6-92f7-0402efb9663b');
Insert into OKITCHEN.RECIPE_INFO (PIC_ID,COMMUNITY_ID,RECIPE_PHOTO) values (12,10,'f4ea96af-1cd7-487e-8f26-ada7137c8042');
Insert into OKITCHEN.RECIPE_INFO (PIC_ID,COMMUNITY_ID,RECIPE_PHOTO) values (7,10,'d8733aa3-92f9-4def-abcd-b3c7b31cd53b');
Insert into OKITCHEN.RECIPE_INFO (PIC_ID,COMMUNITY_ID,RECIPE_PHOTO) values (8,10,'6f0c3648-4712-4257-982f-fa9b5c04da54');
REM INSERTING into OKITCHEN.REVIEW
SET DEFINE OFF;
Insert into OKITCHEN.REVIEW (REVIEW_ID,ORDER_DETAIL_ID,REVIEW_IMAGE,REVIEW_CONTENT,REVIEW_DATE,USER_ID) values (8,8,'fd5e82ab-6dc8-4e84-8eb0-552834a48d4e','dsfsf',to_date('23/11/30','RR/MM/DD'),'dmlwls123');
Insert into OKITCHEN.REVIEW (REVIEW_ID,ORDER_DETAIL_ID,REVIEW_IMAGE,REVIEW_CONTENT,REVIEW_DATE,USER_ID) values (9,10,'da9adad1-98f9-4461-981b-7dc674f7827b','정말 맛있어요!!!!!',to_date('23/11/30','RR/MM/DD'),'jesjo91933');
Insert into OKITCHEN.REVIEW (REVIEW_ID,ORDER_DETAIL_ID,REVIEW_IMAGE,REVIEW_CONTENT,REVIEW_DATE,USER_ID) values (1,1,'리뷰이미지1','가격도 착하고 정말 맛있어요 다먹으면 재구매 할 것 같아요!!',to_date('23/09/20','RR/MM/DD'),'user');
Insert into OKITCHEN.REVIEW (REVIEW_ID,ORDER_DETAIL_ID,REVIEW_IMAGE,REVIEW_CONTENT,REVIEW_DATE,USER_ID) values (2,2,'리뷰이미지2','오키친에서는 후기를 처음 남겨보는데 이거 정말 맛있어요ㅠㅠ 맨날 밥도 이거랑밖에 안먹어요 다들 한번 꼭 드셔봤으면 좋겠어용',to_date('23/09/30','RR/MM/DD'),'user1');
Insert into OKITCHEN.REVIEW (REVIEW_ID,ORDER_DETAIL_ID,REVIEW_IMAGE,REVIEW_CONTENT,REVIEW_DATE,USER_ID) values (3,3,'리뷰이미지3','제입맛에는 별로였어요ㅠㅠ',to_date('23/10/11','RR/MM/DD'),'user2');
Insert into OKITCHEN.REVIEW (REVIEW_ID,ORDER_DETAIL_ID,REVIEW_IMAGE,REVIEW_CONTENT,REVIEW_DATE,USER_ID) values (4,4,'리뷰이미지4','조리도 간편하고 단짠단짠 밥이랑 같이 먹으면 한끼 뚝딱이에요~~',to_date('23/10/19','RR/MM/DD'),'user3');
Insert into OKITCHEN.REVIEW (REVIEW_ID,ORDER_DETAIL_ID,REVIEW_IMAGE,REVIEW_CONTENT,REVIEW_DATE,USER_ID) values (5,5,'리뷰이미지5','맛있긴 한데 유통기한이 너무 짧아서 아쉬워요ㅠㅠ 사놓고 천천히 먹고 싶었는데 유통기한 확인하고는 
후다닥 해치웠네요ㅋㅋ',to_date('23/10/31','RR/MM/DD'),'user4');
Insert into OKITCHEN.REVIEW (REVIEW_ID,ORDER_DETAIL_ID,REVIEW_IMAGE,REVIEW_CONTENT,REVIEW_DATE,USER_ID) values (6,6,'리뷰이미지6','애기들 입맛에도 맞나봐요ㅎㅎ 저희 애들 밥먹을때 해주고 있는데 너무 밥을 잘먹네요^^ 또 구매할것 같아요',to_date('23/11/14','RR/MM/DD'),'user5');
Insert into OKITCHEN.REVIEW (REVIEW_ID,ORDER_DETAIL_ID,REVIEW_IMAGE,REVIEW_CONTENT,REVIEW_DATE,USER_ID) values (7,7,'리뷰이미지7','굿굿!!!',to_date('23/11/30','RR/MM/DD'),'user6');
REM INSERTING into OKITCHEN.SELLER
SET DEFINE OFF;
Insert into OKITCHEN.SELLER (SELLER_ID,COMPANY_NAME,REPRESENTATIVE,CUSTOMER_CENTER,CUSTOMER_EMAIL,REGISTRATION_NUM,SELLER_PASSWORD,SELLER_TYPE,SELLER_STATUS,SELLER_REGDATE,SELLER_CHANGE_DATE) values ('test','월드미트','홍길동','080-8888-8888','test@test.com','111-111-111','test','개인',null,to_date('23/11/29','RR/MM/DD'),null);
Insert into OKITCHEN.SELLER (SELLER_ID,COMPANY_NAME,REPRESENTATIVE,CUSTOMER_CENTER,CUSTOMER_EMAIL,REGISTRATION_NUM,SELLER_PASSWORD,SELLER_TYPE,SELLER_STATUS,SELLER_REGDATE,SELLER_CHANGE_DATE) values ('admin',null,null,null,null,null,null,null,null,to_date('23/11/29','RR/MM/DD'),null);
Insert into OKITCHEN.SELLER (SELLER_ID,COMPANY_NAME,REPRESENTATIVE,CUSTOMER_CENTER,CUSTOMER_EMAIL,REGISTRATION_NUM,SELLER_PASSWORD,SELLER_TYPE,SELLER_STATUS,SELLER_REGDATE,SELLER_CHANGE_DATE) values ('chohee1031','월드미트','이초희','010-1111-1111','test@test','111-11-11111','$2a$10$.vrONjW3E0hf9hr7H758N.NTRYmJXV9dOQNnBI6p1YsGdt/f98y1y','개인','회원',to_date('23/11/29','RR/MM/DD'),to_date('23/11/29','RR/MM/DD'));
Insert into OKITCHEN.SELLER (SELLER_ID,COMPANY_NAME,REPRESENTATIVE,CUSTOMER_CENTER,CUSTOMER_EMAIL,REGISTRATION_NUM,SELLER_PASSWORD,SELLER_TYPE,SELLER_STATUS,SELLER_REGDATE,SELLER_CHANGE_DATE) values ('test1','chicken','김치킨','02-1111-1111','chicken@chicken.com','426-97-01401','aa1111!!','법인','회원',to_date('23/11/30','RR/MM/DD'),null);
Insert into OKITCHEN.SELLER (SELLER_ID,COMPANY_NAME,REPRESENTATIVE,CUSTOMER_CENTER,CUSTOMER_EMAIL,REGISTRATION_NUM,SELLER_PASSWORD,SELLER_TYPE,SELLER_STATUS,SELLER_REGDATE,SELLER_CHANGE_DATE) values ('test2','pizza','이피자','02-2222-2222','pizza@pizza.com','134-13-34731','bb2222!!','개인','정지',to_date('23/11/30','RR/MM/DD'),null);
Insert into OKITCHEN.SELLER (SELLER_ID,COMPANY_NAME,REPRESENTATIVE,CUSTOMER_CENTER,CUSTOMER_EMAIL,REGISTRATION_NUM,SELLER_PASSWORD,SELLER_TYPE,SELLER_STATUS,SELLER_REGDATE,SELLER_CHANGE_DATE) values ('tester123','월드미트','이초희','010-1111-1111','test@test.com','426-97-01405','$2a$10$xKCAfTjohWgeSFP.Hna8keuZFS2O5p1VxSc/46IdktZ3JASg.Tvkm','법인','회원',to_date('23/11/30','RR/MM/DD'),to_date('23/11/30','RR/MM/DD'));
Insert into OKITCHEN.SELLER (SELLER_ID,COMPANY_NAME,REPRESENTATIVE,CUSTOMER_CENTER,CUSTOMER_EMAIL,REGISTRATION_NUM,SELLER_PASSWORD,SELLER_TYPE,SELLER_STATUS,SELLER_REGDATE,SELLER_CHANGE_DATE) values ('tester1234','월드미트','이초희','010-1111-1111','test@test.com','134-13-34730','$2a$10$MgAUoFvyh3C12jmNQazdDehMzX7ccwo7Q4i7Oqnjaft0eT8Gy.62W','개인','회원',to_date('23/11/30','RR/MM/DD'),to_date('23/11/30','RR/MM/DD'));
REM INSERTING into OKITCHEN.USERS
SET DEFINE OFF;
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user','이초희','user',null,null,null,to_date('23/11/24','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user1','신민기',null,null,null,null,to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user2','박수진',null,null,null,null,to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user3','이주녕',null,null,null,null,to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user4','김서영',null,null,null,null,to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user5','전의진',null,null,null,null,to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user6','이지원',null,null,null,null,to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user7','김민지',null,null,null,null,to_date('23/11/29','RR/MM/DD'),null,null,null);
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('chohee1031','이초희','$2a$10$lpm8kcSAadoH.zA3AQlzz.FOjS6fqv49WOVzI4IaGEPjauHwfGdG6','48561h@naver.com','1996-10-31','Y',to_date('23/11/29','RR/MM/DD'),'FEMALE','서울 강남구 테헤란로 124 4층','01051501031');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('rlatjdud8796','김서영','$2a$10$KfiUZ6AXynaU7w5JZTUuvOy/A4F99BUmUlzwOvbBCEORdrqc4iN5a','rlatjdud8796@naver.com','2001-03-01','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','경기 의정부시 용민로 374 903-1604','01034489100');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('cozymarble','이주녕','$2a$10$b9yoZPJUmFQy.damAOfeH.s6dNo6tIQvLBYIbHVA/tJpQ2MSeeoXe','cozy@naver.com','2002-02-27','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','서울 강남구 가로수길 5 302','01034489101');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('tjdud9188','신민기','$2a$10$ee0aG0y.E9c9SlAsC80KBuXUArsSP1ajhupQX7JeXiyVdy3vQ5BKy','tjdud9188@naver.com','2003-02-26','Y',to_date('23/11/30','RR/MM/DD'),'MALE','서울 강남구 가로수길 9 903','01034489102');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user216','전의진','$2a$10$qg9p0ZP2omjNkuE5JifzU.V2US3B/1Cd/1wjCjzrHyg6MeAVkBl8e','user216@naver.com','2002-02-21','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','경기 성남시 분당구 대왕판교로 364 123','01034489102');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user456','김선우','$2a$10$KUtTbL7jliTfaQyBdO6LhuDUPysGaZeQJBnAmxK7wSWRn14LmgRIq','user456@naver.com','2002-03-09','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','경기 의정부시 용민로 374 903-1604','01034489104');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('user7686','이주연','$2a$10$L7mlZyjswpZ3nkCIbE7OluLxFdTywbM53ZQ50aYe1825SchQ/X5Qm','user7686@naver.com','2004-01-30','Y',to_date('23/11/30','RR/MM/DD'),'MALE','서울 강남구 강남대로122길 39-16 1층','01034489106');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('tidlsl13','김기범','$2a$10$LMAwoF1HfwVrwr/30rqEIuD2vg4oL6yOPMuow8D9hm2NAyrGw0UeW','tidlsl13@naver.com','1999-03-26','Y',to_date('23/11/30','RR/MM/DD'),'MALE','서울 성동구 가람길 46 sm사옥','01034489107');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('dlwlsrl11','이진기','$2a$10$Dp5SNeOe9H5x.1G32aNXRe4KPCI9ih7Fs4z1wqd528eDYNQWrR8Py','dlwlsrl11@naver.com','2002-02-13','Y',to_date('23/11/30','RR/MM/DD'),'MALE','서울 마포구 가양대로 1 가양','01034489110');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('rlawhdgus87','김종현','$2a$10$uC9MkVxgE8O6.zCEgPlK/unXYxodp7w2CLTqh14GKqeX5bFMOTWCG','rlawhdgus87@naver.com','2004-03-03','Y',to_date('23/11/30','RR/MM/DD'),'MALE','경기 여주시 가남읍 가남로 9 여주','01034489111');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('dlxoals22','이태민','$2a$10$CZ5EolVHxu6gdE/rNKihw.jD7A5ToxtOD8QjSUwzLvY97Yln9nkP6','dlxoals22@naver.com','2003-01-22','Y',to_date('23/11/30','RR/MM/DD'),'MALE','경기 과천시 구리안로 5 903','01034489112');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('dnjsqls56','원빈','$2a$10$dmXaSZZV622M1rvtczD4vOoRbGsp5spEsABO1H9KDCtKkSKHtgneC','dnjsqls56@naver.com','2000-02-24','Y',to_date('23/11/30','RR/MM/DD'),'MALE','경기 구리시 갈매길 18 801호','01034489113');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('rkdehddnjs4','강동원','$2a$10$Kn53FXqhIL1W9lR9YBakZeLT8N7H.vGVV4DH3ZsEMcD5EfjqkXuSe','rkdehddnjs4@naver.com','1998-03-05','Y',to_date('23/11/30','RR/MM/DD'),'MALE','서울 강남구 가로수길 5 12','01034489113');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('ckdmsdn33','차은우','$2a$10$bkkfQKQJZ8Y4YBSSiIjZxOX4arzKWS0yadkcen8BS3Xbrw/1dW766','ckdmsdn33@naver.com','2000-02-16','Y',to_date('23/11/30','RR/MM/DD'),'MALE','경기 의정부시 가금로 29 101호','01034489115');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('rladudgns88','김영훈','$2a$10$Yuam2BllrZ/uJD4iMjp/wOqM/YkN/oltleuupwItOTit9mRokd1Ta','rladudgns88@naver.com','1993-12-27','Y',to_date('23/11/30','RR/MM/DD'),'MALE','경기 의정부시 가금로 70-1 12','01034489116');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('dlguswo6','이현재','$2a$10$8u8.lWOrs3e8tQc93yckUO5A3kkbWyLu0HHbnarKuaCZDXNXxApsG','dlguswo6@naver.com','2004-03-04','Y',to_date('23/11/30','RR/MM/DD'),'MALE','경기 용인시 기흥구 갈곡로7번길 3 504호','01034489117');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('wkddnjsdud2','장원영','$2a$10$5mEYco4d8VTSbHgO3AukD.18pe1NRAc1NhwA3bdoP/C0c8rop8TrK','wkddnjsdud2@naver.com','2002-01-23','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','서울 송파구 도곡로 458 123','01034489119');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('zkflsk87','유지민','$2a$10$ksbzj28xoUWSNtleyIPfSu1zNjMASv6CuVpMPQlxwO38fVgaVyo8i','zkflsk87@naver.com','1999-03-23','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','서울 성동구 광나루로 142-8 104호','01034489120');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('wkdehdrjs3','장동건','$2a$10$ZkdMDbhasVDK0kKGg8ltoOM3A7bV2vaJaE05MPlAEdsDYBejnzYGe','wkdehdrjs3@naver.com','2001-01-30','Y',to_date('23/11/30','RR/MM/DD'),'MALE','경기 의정부시 문충로 320 903','01034489121');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('chlrhtla22','최고심','$2a$10$ExByQakfKeKEniALL8mZCu1UUeSR8IXyqJHxmQW/HTMNItgwDJh/i','chlrhtla22@naver.com','2005-02-01','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','경기 시흥시 서촌상가1길 11 123','01034489122');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('qkrtnwls12','박수진','$2a$10$yh8mS2P.NIj0Sbk7e6KPMujqYUALSbNr/uwTDJxEVq8ejuAFlSTxm','qkrtnwlss12@naver.com','1996-03-01','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','서울 강남구 가로수길 22 12','01034489188');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('wjsdmlwls','전의진','$2a$10$F6LP.NZFTMyzlm7YnboOJe79P1Pz6yfNngikBt9K0BYZ/q9vR6WE6','wjsdmlwls@naver.com','1998-03-16','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','서울 강남구 테헤란로 124 4층 408호','01091718274');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('dmlwls123','전의진','$2a$10$EoCVByD1BThqGv1HatjrHOzE01tsQDHDKIOP0D7VQcoXRfHPhdhgW','dmlwls123@naver.com','2000-02-22','Y',to_date('23/11/30','RR/MM/DD'),'FEMALE','서울 강남구 가로수길 9 ','01027366119');
Insert into OKITCHEN.USERS (USER_ID,USER_NAME,USER_PASSWORD,USER_EMAIL,USER_BIRTH,USER_STATUS,USER_DATE,USER_GENDER,USER_ADDRESS,USER_PHONENUM) values ('jesjo91933','전의진','$2a$10$0A66rmm0N5xWnoLTOhDX9.aVqMHT6W9jhiUlXu5DBRsd0FoMje6ae','jesjo919333@naver.com','1998-02-18','N',to_date('23/11/30','RR/MM/DD'),'FEMALE','서울 강남구 가로수길 14 ','01068869901');
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ADMIN_PK" ON "OKITCHEN"."ADMIN" ("ADMIN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BOOKMARK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."BOOKMARK_PK" ON "OKITCHEN"."BOOKMARK" ("BOOKMARK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."CART_PK" ON "OKITCHEN"."CART" ("CART_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COMMUNITY_PICKED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."COMMUNITY_PICKED_PK" ON "OKITCHEN"."COMMUNITY_PICKED" ("COMM_PICK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COMMUNITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."COMMUNITY_PK" ON "OKITCHEN"."COMMUNITY" ("COMMUNITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INQUIRY_ANS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."INQUIRY_ANS_PK" ON "OKITCHEN"."INQUIRY_ANS" ("ANS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INQUIRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."INQUIRY_PK" ON "OKITCHEN"."INQUIRY" ("INQ_ID") 
  ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."NOTICE_PK" ON "OKITCHEN"."NOTICE" ("NOTICE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index OPTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."OPTIONS_PK" ON "OKITCHEN"."OPTIONS" ("OPTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ORDERS_PK" ON "OKITCHEN"."ORDERS" ("ORDER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDER_DETAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ORDER_DETAIL_PK" ON "OKITCHEN"."ORDER_DETAIL" ("ORDER_DETAIL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PICKED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."PICKED_PK" ON "OKITCHEN"."PICKED" ("PICK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCT_IMAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."PRODUCT_IMAGE_PK" ON "OKITCHEN"."PRODUCT_IMAGE" ("IMAGE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."PRODUCT_PK" ON "OKITCHEN"."PRODUCT" ("PRODUCT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RECIPE_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."RECIPE_INFO_PK" ON "OKITCHEN"."RECIPE_INFO" ("PIC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."REVIEW_PK" ON "OKITCHEN"."REVIEW" ("REVIEW_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SELLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."SELLER_PK" ON "OKITCHEN"."SELLER" ("SELLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."USERS_PK" ON "OKITCHEN"."USERS" ("USER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ADMIN_PK" ON "OKITCHEN"."ADMIN" ("ADMIN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BOOKMARK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."BOOKMARK_PK" ON "OKITCHEN"."BOOKMARK" ("BOOKMARK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."CART_PK" ON "OKITCHEN"."CART" ("CART_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COMMUNITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."COMMUNITY_PK" ON "OKITCHEN"."COMMUNITY" ("COMMUNITY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index COMMUNITY_PICKED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."COMMUNITY_PICKED_PK" ON "OKITCHEN"."COMMUNITY_PICKED" ("COMM_PICK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INQUIRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."INQUIRY_PK" ON "OKITCHEN"."INQUIRY" ("INQ_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INQUIRY_ANS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."INQUIRY_ANS_PK" ON "OKITCHEN"."INQUIRY_ANS" ("ANS_ID") 
  ;
--------------------------------------------------------
--  DDL for Index NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."NOTICE_PK" ON "OKITCHEN"."NOTICE" ("NOTICE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index OPTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."OPTIONS_PK" ON "OKITCHEN"."OPTIONS" ("OPTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ORDERS_PK" ON "OKITCHEN"."ORDERS" ("ORDER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ORDER_DETAIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."ORDER_DETAIL_PK" ON "OKITCHEN"."ORDER_DETAIL" ("ORDER_DETAIL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PICKED_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."PICKED_PK" ON "OKITCHEN"."PICKED" ("PICK_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."PRODUCT_PK" ON "OKITCHEN"."PRODUCT" ("PRODUCT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PRODUCT_IMAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."PRODUCT_IMAGE_PK" ON "OKITCHEN"."PRODUCT_IMAGE" ("IMAGE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index RECIPE_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."RECIPE_INFO_PK" ON "OKITCHEN"."RECIPE_INFO" ("PIC_ID") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."REVIEW_PK" ON "OKITCHEN"."REVIEW" ("REVIEW_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SELLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."SELLER_PK" ON "OKITCHEN"."SELLER" ("SELLER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OKITCHEN"."USERS_PK" ON "OKITCHEN"."USERS" ("USER_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ADMIN" MODIFY ("ADMIN_PWD" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("ADMIN_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."ADMIN" MODIFY ("ADMIN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKMARK
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."BOOKMARK" ADD CONSTRAINT "BOOKMARK_PK" PRIMARY KEY ("BOOKMARK_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."BOOKMARK" MODIFY ("BOOKMARK_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("CART_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."CART" MODIFY ("CART_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."COMMUNITY" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."COMMUNITY" ADD CONSTRAINT "COMMUNITY_PK" PRIMARY KEY ("COMMUNITY_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."COMMUNITY" MODIFY ("COMMUNITY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY_PICKED
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" MODIFY ("COMM_PICK_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" ADD CONSTRAINT "COMMUNITY_PICKED_PK" PRIMARY KEY ("COMM_PICK_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" MODIFY ("COMMUNITY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INQUIRY
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."INQUIRY" ADD CONSTRAINT "INQUIRY_PK" PRIMARY KEY ("INQ_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."INQUIRY" MODIFY ("INQ_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INQUIRY_ANS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."INQUIRY_ANS" MODIFY ("ANS_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."INQUIRY_ANS" ADD CONSTRAINT "INQUIRY_ANS_PK" PRIMARY KEY ("ANS_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."NOTICE" MODIFY ("NOTICE_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."NOTICE" ADD CONSTRAINT "NOTICE_PK" PRIMARY KEY ("NOTICE_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table OPTIONS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."OPTIONS" MODIFY ("OPTION_PRICE" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."OPTIONS" MODIFY ("OPTION_STOCK" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."OPTIONS" MODIFY ("OPTION_NAME" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."OPTIONS" ADD CONSTRAINT "OPTIONS_PK" PRIMARY KEY ("OPTION_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."OPTIONS" MODIFY ("OPTION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ORDERS" MODIFY ("ORDER_STATUS" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."ORDERS" ADD CONSTRAINT "ORDERS_PK" PRIMARY KEY ("ORDER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."ORDERS" MODIFY ("ORDER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER_DETAIL
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_PK" PRIMARY KEY ("ORDER_DETAIL_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" MODIFY ("ORDER_DETAIL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PICKED
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PICKED" ADD CONSTRAINT "PICKED_PK" PRIMARY KEY ("PICK_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."PICKED" MODIFY ("PICK_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PRODUCT" MODIFY ("CATEGORY_NAME" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PRODUCT" MODIFY ("PRODUCT_STATUS" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PRODUCT" MODIFY ("APPROVAL_STATUS" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PRODUCT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PRODUCT" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PRODUCT" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PRODUCT" MODIFY ("BRAND" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("PRODUCT_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."PRODUCT" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT_IMAGE
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PRODUCT_IMAGE" ADD CONSTRAINT "PRODUCT_IMAGE_PK" PRIMARY KEY ("IMAGE_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."PRODUCT_IMAGE" MODIFY ("IMAGE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RECIPE_INFO
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."RECIPE_INFO" MODIFY ("PIC_ID" NOT NULL ENABLE);
  ALTER TABLE "OKITCHEN"."RECIPE_INFO" ADD CONSTRAINT "RECIPE_INFO_PK" PRIMARY KEY ("PIC_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("REVIEW_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."REVIEW" MODIFY ("REVIEW_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SELLER
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."SELLER" ADD CONSTRAINT "SELLER_PK" PRIMARY KEY ("SELLER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."SELLER" MODIFY ("SELLER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOOKMARK
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."BOOKMARK" ADD CONSTRAINT "BOOKMARK_FK1" FOREIGN KEY ("COMMUNITY_ID")
	  REFERENCES "OKITCHEN"."COMMUNITY" ("COMMUNITY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."CART" ADD CONSTRAINT "CART_FK1" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."CART" ADD CONSTRAINT "CART_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."COMMUNITY" ADD CONSTRAINT "COMMUNITY_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."COMMUNITY" ADD CONSTRAINT "COMMUNITY_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY_PICKED
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" ADD CONSTRAINT "COMMUNITY_PICKED_FK1" FOREIGN KEY ("COMMUNITY_ID")
	  REFERENCES "OKITCHEN"."COMMUNITY" ("COMMUNITY_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "OKITCHEN"."COMMUNITY_PICKED" ADD CONSTRAINT "COMMUNITY_PICKED_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INQUIRY
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."INQUIRY" ADD CONSTRAINT "INQUIRY_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."INQUIRY" ADD CONSTRAINT "INQUIRY_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INQUIRY_ANS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."INQUIRY_ANS" ADD CONSTRAINT "INQUIRY_ANS_FK1" FOREIGN KEY ("INQ_ID")
	  REFERENCES "OKITCHEN"."INQUIRY" ("INQ_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OPTIONS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."OPTIONS" ADD CONSTRAINT "OPTIONS_FK1" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ORDERS" ADD CONSTRAINT "ORDERS_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_DETAIL
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK4" FOREIGN KEY ("ORDER_ID")
	  REFERENCES "OKITCHEN"."ORDERS" ("ORDER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PICKED
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PICKED" ADD CONSTRAINT "PICKED_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
  ALTER TABLE "OKITCHEN"."PICKED" ADD CONSTRAINT "PICKED_FK2" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PRODUCT" ADD CONSTRAINT "PRODUCT_FK2" FOREIGN KEY ("SELLER_ID")
	  REFERENCES "OKITCHEN"."SELLER" ("SELLER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_IMAGE
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."PRODUCT_IMAGE" ADD CONSTRAINT "PRODUCT_IMAGE_FK1" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "OKITCHEN"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RECIPE_INFO
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."RECIPE_INFO" ADD CONSTRAINT "RECIPE_INFO_FK1" FOREIGN KEY ("COMMUNITY_ID")
	  REFERENCES "OKITCHEN"."COMMUNITY" ("COMMUNITY_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "OKITCHEN"."REVIEW" ADD CONSTRAINT "REVIEW_FK1" FOREIGN KEY ("ORDER_DETAIL_ID")
	  REFERENCES "OKITCHEN"."ORDER_DETAIL" ("ORDER_DETAIL_ID") DISABLE;
  ALTER TABLE "OKITCHEN"."REVIEW" ADD CONSTRAINT "REVIEW_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "OKITCHEN"."USERS" ("USER_ID") ENABLE;
