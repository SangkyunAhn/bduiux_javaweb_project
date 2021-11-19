drop table t_shopping_member;
drop table t_shopping_goods;
drop table t_goods_detail_image;
drop table t_shopping_order;
drop table t_shopping_cart;

--------------------------------------------------------
--  DDL for Table T_GOODS_DETAIL_IMAGE
--------------------------------------------------------

  CREATE TABLE "T_GOODS_DETAIL_IMAGE" 
   (	"IMAGE_ID" NUMBER(20,0) primary key, 
	"GOODS_ID" NUMBER(20,0), 
	"FILENAME" VARCHAR2(50 BYTE), 
	"REG_ID" VARCHAR2(20 BYTE), 
	"FILETYPE" VARCHAR2(40 BYTE), 
	"CREDATE" DATE DEFAULT sysdate
   ) ;

--------------------------------------------------------
--  DDL for Table T_SHOPPING_GOODS
--------------------------------------------------------

CREATE TABLE "T_SHOPPING_GOODS" (
    "GOODS_ID" NUMBER(20,0) PRIMARY KEY,
    "GOODS_SORT" VARCHAR2(50 BYTE),
    "GOODS_TITLE" VARCHAR2(100 BYTE),
    "GOODS_MANUFACTURER" VARCHAR2(50 BYTE),
    "GOODS_PRICE" NUMBER(10,0),
    "GOODS_SALES_PRICE" NUMBER(10,0),
    "GOODS_POINT" NUMBER(10,0),
    "GOODS_DELIVERY_PRICE" NUMBER(10,0),
    "GOODS_DELIVERY_DATE" DATE,
    "GOODS_STATUS" VARCHAR2(50),
	"GOODS_MANUFACTURER_INTRO" VARCHAR2(2000 BYTE),
    "GOODS_MANUFACTURED_DATE" DATE,
    "GOODS_CREDATE" DATE DEFAULT SYSDATE
);

--------------------------------------------------------
--  DDL for Table T_SHOPPING_MEMBER
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_MEMBER" 
   (	"MEMBER_ID" VARCHAR2(20 BYTE) primary key, 
	"MEMBER_PW" VARCHAR2(30 BYTE), 
	"MEMBER_NAME" VARCHAR2(50 BYTE), 
	"MEMBER_GENDER" VARCHAR2(10 BYTE), 
	"TEL1" VARCHAR2(20 BYTE), 
	"TEL2" VARCHAR2(20 BYTE), 
	"TEL3" VARCHAR2(20 BYTE), 
	"HP1" VARCHAR2(20 BYTE), 
	"HP2" VARCHAR2(20 BYTE), 
	"HP3" VARCHAR2(20 BYTE), 
	"SMSSTS_YN" VARCHAR2(20 BYTE), 
	"EMAIL1" VARCHAR2(20 BYTE), 
	"EMAIL2" VARCHAR2(20 BYTE), 
	"EMAILSTS_YN" VARCHAR2(20 BYTE), 
	"ZIPCODE" VARCHAR2(20 BYTE), 
	"ROADADDRESS" VARCHAR2(500 BYTE), 
	"JIBUNADDRESS" VARCHAR2(500 BYTE), 
	"NAMUJIADDRESS" VARCHAR2(500 BYTE), 
	"MEMBER_BIRTH_Y" VARCHAR2(20 BYTE), 
	"MEMBER_BIRTH_M" VARCHAR2(20 BYTE), 
	"MEMBER_BIRTH_D" VARCHAR2(20 BYTE), 
	"MEMBER_BIRTH_GN" VARCHAR2(20 BYTE), 
	"JOINDATE" DATE DEFAULT sysdate, 
	"DEL_YN" VARCHAR2(20 BYTE) DEFAULT 'N'
   ) ;

--------------------------------------------------------
--  DDL for Table T_SHOPPING_ORDER
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_ORDER" 
   (	"ORDER_SEQ_NUM" NUMBER(20,0) primary key, 
	"ORDER_ID" NUMBER(20,0), 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"GOODS_ID" NUMBER(20,0), 
	"ORDERER_NAME" VARCHAR2(50 BYTE), 
	"GOODS_TITLE" VARCHAR2(100 BYTE), 
	"ORDER_GOODS_QTY" NUMBER(10,0), 
	"GOODS_SALES_PRICE" NUMBER(10,0), 
	"GOODS_FILENAME" VARCHAR2(60 BYTE), 
	"RECEIVER_NAME" VARCHAR2(50 BYTE), 
	"RECEIVER_HP1" VARCHAR2(20 BYTE), 
	"RECEIVER_HP2" VARCHAR2(20 BYTE), 
	"RECEIVER_HP3" VARCHAR2(20 BYTE), 
	"RECEIVER_TEL1" VARCHAR2(20 BYTE), 
	"RECEIVER_TEL2" VARCHAR2(20 BYTE), 
	"RECEIVER_TEL3" VARCHAR2(20 BYTE), 
	"DELIVERY_ADDRESS" VARCHAR2(500 BYTE), 
	"DELIVERY_METHOD" VARCHAR2(40 BYTE), 
	"DELIVERY_MESSAGE" VARCHAR2(300 BYTE), 
	"GIFT_WRAPPING" VARCHAR2(20 BYTE), 
	"PAY_METHOD" VARCHAR2(200 BYTE), 
	"CARD_COM_NAME" VARCHAR2(50 BYTE), 
	"CARD_PAY_MONTH" VARCHAR2(20 BYTE), 
	"PAY_ORDERER_HP_NUM" VARCHAR2(20 BYTE), 
	"DELIVERY_STATE" VARCHAR2(20 BYTE) DEFAULT 'delivery_prepared', 
	"PAY_ORDER_TIME" DATE DEFAULT sysdate, 
	"ORDERER_HP" VARCHAR2(50 BYTE)
   ) ;

--------------------------------------------------------
--  DDL for Table T_SHOPPING_CART
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_CART" 
   (	"CART_ID" NUMBER(10,0) primary key, 
	"GOODS_ID" NUMBER(20,0), 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"DEL_YN" VARCHAR2(20 BYTE) DEFAULT 'N', 
	"CREDATE" DATE DEFAULT sysdate, 
	"CART_GOODS_QTY" NUMBER(4,0) DEFAULT 1
   ) ;
REM INSERTING into T_GOODS_DETAIL_IMAGE
SET DEFINE OFF;

Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (346,394,'더 비스트_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (347,394,'더 비스트_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (349,395,'스텔라 패럴랙스_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (350,395,'스텔라 패럴랙스_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (351,397,'허니배저 리바이벌_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (352,397,'허니배저 리바이벌_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (353,398,'패스트 피치_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (354,398,'패스트 피치_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (299,334,'코드 다이나믹_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (300,334,'코드 다이나믹_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (301,335,'나도데스 그라스프_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (302,335,'나도데스 그라스프_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (303,336,'도미네이션_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (304,336,'도미네이션_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (305,337,'허슬 업_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (306,337,'허슬 업_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (307,338,'피치 블랙_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (308,338,'피치 블랙_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (309,339,'페펄랙스_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (310,339,'페펄랙스_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (311,340,'퍼플펄우레탄_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (312,340,'퍼플펄우레탄_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (313,341,'다크 코드_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (314,341,'다크 코드_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (315,342,'솔라 패럴랙스_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (316,342,'솔라 패럴랙스_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (317,343,'패럴랙스 이펙트_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (339,343,'패럴랙스 이펙트_detail.jpg','admin','uploadFile',to_date('21/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (319,344,'컴플리트 피직스_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (320,344,'컴플리트 피직스_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (321,345,'매치 업_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (322,345,'매치 업_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (323,346,'블랙위도우 하이브리드_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (324,346,'블랙위도우 하이브리드_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (325,347,'피직스 마에스트로_main.jpg','admin','main_image',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (326,347,'피직스 마에스트로_detail.jpg','admin','detail_image1',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (327,348,'RST X-1_main.jpg','admin','main_image',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (328,348,'RST X-1_detail.jpg','admin','detail_image1',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (330,349,'트로피컬 써지_main.jpg','admin','main_image',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (331,349,'트로피컬 써지_detail.jpg','admin','detail_image1',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (334,350,'아이큐 투어 나노 펄_main.jpg','admin','main_image',to_date('21/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (341,350,'아이큐 투어 나노 펄_detail.jpg','admin','uploadFile',to_date('21/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (342,354,'하이로드 웨이브_main.jpg','admin','main_image',to_date('21/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (343,354,'하이로드 웨이브_detail.jpg','admin','detail_image1',to_date('21/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (345,356,'아이돌 퍼플_main.jpg','admin','main_image',to_date('21/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (346,356,'아이돌 퍼플_detail.jpg','admin','detail_image1',to_date('21/10/23','RR/MM/DD'));
REM INSERTING into T_SHOPPING_GOODS
SET DEFINE OFF;

INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(394, '볼링공/소프트볼', '더 비스트', '콜롬비아300', 189000, 170100, 17010, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '안녕하세요. 콜롬비아300입니다.', TO_DATE('21/10/01', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(395, '볼링공/소프트볼', '스텔라 패럴랙스', '스톰', 259000, 233100, 23310, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/01', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(397, '볼링공/소프트볼', '허니배저 리바이벌', '글로벌900', 209000, 188100, 18810, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '안녕하세요. 글로벌900입니다.', TO_DATE('21/10/02', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(398, '볼링공/소프트볼', '패스트 피치', '스톰', 199000, 179100, 17910, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/02', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(334, '볼링공/소프트볼', '코드 다이나믹', '스톰', 259000, 233100, 23310, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/03', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(335, '볼링공/소프트볼', '나도데스 그라스프', 'ABS', 389000, 350100, 35010, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '안녕하세요. ABS입니다.', TO_DATE('21/10/03', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(336, '볼링공/소프트볼', '도미네이션 2020', '스톰', 259000, 233100, 23310, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/04', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(337, '볼링공/소프트볼', '허슬 업', '로또그립', 130000, 117000, 11700, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'bestseller', '안녕하세요. 로또그립입니다.', TO_DATE('21/10/04', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(338, '볼링공/소프트볼', '피치 블랙', '스톰', 199000, 179100, 17910, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'newgoods', '안녕하세요. 스톰입니다.', TO_DATE('21/10/05', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(339, '볼링공/소프트볼', '패럴랙스', '스톰', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'steadyseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/05', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(340, '볼링공/소프트볼', '퍼플펄우레탄', '햄머', 249000, 224100, 22410, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'bestseller', '안녕하세요. 햄머입니다.', TO_DATE('21/10/06', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(341, '볼링공/소프트볼', '다크 코드', '스톰', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'bestseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/06', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(342, '볼링공/소프트볼', '솔라 패럴랙스', '스톰', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'steadyseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/07', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(343, '볼링공/소프트볼', '패럴랙스 이펙트', '스톰', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'steadyseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/07', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(344, '볼링공/소프트볼', '컴플리트 피직스', '스톰', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'steadyseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/08', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(345, '볼링공/소프트볼', '매치 업', '스톰', 159000, 143100, 14310, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'newgoods', '안녕하세요. 스톰입니다.', TO_DATE('21/10/08', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(346, '볼링공/소프트볼', '블랙위도우 하이브리드', '햄머', 259000, 233100, 23310, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '안녕하세요. 햄머입니다.', TO_DATE('21/10/09', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(347, '볼링공/소프트볼', '피직스 마에스트로', '스톰', 259000, 233100, 23310, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/09', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(348, '볼링공/소프트볼', 'RST X-1', '로또그립', 259000, 233100, 23310, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '안녕하세요. 로또그립입니다.', TO_DATE('21/10/10', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(349, '볼링공/소프트볼', '트로피컬 써지', '스톰', 135000, 121500, 12150, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/10', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(350, '볼링공/소프트볼', '아이큐 투어 나노 펄', '스톰', 239000, 215100, 21510, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '안녕하세요. 스톰입니다.', TO_DATE('21/10/11', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(354, '볼링공/소프트볼', '하이로드 웨이브', '스톰', 199000, 179100, 17910, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'newgoods', '안녕하세요. 스톰입니다.', TO_DATE('21/10/11', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(356, '볼링공/소프트볼', '아이돌 퍼플', '로또그립', 199000, 179100, 17910, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'newgoods', '안녕하세요. 로또그립입니다.', TO_DATE('21/10/12', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));

REM INSERTING into T_SHOPPING_MEMBER
SET DEFINE OFF;
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('admin','1212','어드민','101','02','1111','2222','010','1111','2222','Y','admin','test.com,non','Y','06253','서울 강남구 강남대로 298 (역삼동)','서울 강남구 역삼동 838','럭키빌딩 101호','2000','5','10','2',to_date('18/10/16','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn','1212','안상균','101','02','1111','2222','010','2222','3333','Y','ahn','test.com,non','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 101호','1996','4','28','2',to_date('18/10/23','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim','1212','김현섭','101','02','1111','2222','010','2222','3333','Y','kim','test.com,non','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 101호','1997','4','28','2',to_date('18/10/23','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon','1212','윤동혁','101','02','1111','2222','010','2222','3333','Y','yoon','test.com,non','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 101호','1999','4','28','2',to_date('18/10/23','RR/MM/DD'),'N');
REM INSERTING into T_SHOPPING_ORDER
SET DEFINE OFF;
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (88,92,'ahn',344,'안상균','컴플리트 피직스',1,27000,'컴플리트 피직스_main.jpg','김현섭','010','2222','3333','02','1111','2222','우편번호:13547<br>도로명 주소:경기 성남시 분당구 고기로 25 (동원동)<br>[지번 주소:경기 성남시 분당구 동원동 79-1]<br>럭키빌딩 101호','일반택배',null,'no','신용카드<Br>카드사:삼성<br>할부개월수:일시불','삼성','일시불','해당없음','cancel_order',to_date('21/11/11','RR/MM/DD'),'010-2222-3333');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (89,93,'kim',354,'김현섭','하이로드 웨이브',1,27000,'하이로드 웨이브_main.jpg','윤동혁','010','2222','3333','02','1111','2222','우편번호:13547<br>도로명 주소:경기 성남시 분당구 고기로 25 (동원동)<br>[지번 주소:경기 성남시 분당구 동원동 79-1]<br>럭키빌딩 101호','일반택배',null,'no','신용카드<Br>카드사:삼성<br>할부개월수:일시불','삼성','일시불','해당없음','delivering',to_date('21/11/12','RR/MM/DD'),'010-2232-3343');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (90,94,'yoon',354,'윤동혁','하이로드 웨이브',1,27000,'하이로드 웨이브_main.jpg','안상균','010','2222','3333','02','1111','2222','우편번호:13547<br>도로명 주소:경기 성남시 분당구 고기로 25 (동원동)<br>[지번 주소:경기 성남시 분당구 동원동 79-1]<br>럭키빌딩 101호','일반택배',null,'no','신용카드<Br>카드사:삼성<br>할부개월수:일시불','삼성','일시불','해당없음','cancel_order',to_date('21/11/13','RR/MM/DD'),'010-2122-1333');
REM INSERTING into T_SHOPPING_CART
SET DEFINE OFF;

drop sequence ORDER_SEQ_NUM;
drop sequence SEQ_GOODS_ID;
drop sequence SEQ_IMAGE_ID;
drop sequence SEQ_ORDER_ID;
--------------------------------------------------------
--  DDL for Sequence ORDER_SEQ_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "ORDER_SEQ_NUM"  MINVALUE 0 MAXVALUE 10000000 INCREMENT BY 1 START WITH 400 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_GOODS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_GOODS_ID"  MINVALUE 100 MAXVALUE 1000000 INCREMENT BY 1 START WITH 400 CACHE 20 ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IMAGE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_IMAGE_ID"  MINVALUE 1 MAXVALUE 11111111 INCREMENT BY 1 START WITH 400 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ORDER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ORDER_ID"  MINVALUE 0 MAXVALUE 10000000 INCREMENT BY 1 START WITH 400 NOCACHE  ORDER  NOCYCLE ;

commit;