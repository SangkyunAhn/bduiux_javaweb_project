drop table t_shopping_member;
drop table t_shopping_goods;
drop table t_goods_detail_image;
drop table t_shopping_order;
drop table t_shopping_cart;

--  SQLINES DEMO *** ------------------------------------
-- SQLINES DEMO *** GOODS_DETAIL_IMAGE
--  SQLINES DEMO *** ------------------------------------

  -- SQLINES LICENSE FOR EVALUATION USE ONLY
  CREATE TABLE T_GOODS_DETAIL_IMAGE
   (	IMAGE_ID DECIMAL(20,0) primary key,
	GOODS_ID DECIMAL(20,0),
	FILENAME VARCHAR(50),
	REG_ID VARCHAR(20),
	FILETYPE VARCHAR(40),
	CREDATE DATETIME DEFAULT sysdate()
   ) ;

--  SQLINES DEMO *** ------------------------------------
-- SQLINES DEMO *** SHOPPING_GOODS
--  SQLINES DEMO *** ------------------------------------

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE T_SHOPPING_GOODS (
    GOODS_ID DECIMAL(20,0) PRIMARY KEY,
    GOODS_SORT VARCHAR(50),
    GOODS_TITLE VARCHAR(100),
    GOODS_MANUFACTURER VARCHAR(50),
    GOODS_PRICE BIGINT,
    GOODS_SALES_PRICE BIGINT,
    GOODS_POINT BIGINT,
    GOODS_DELIVERY_PRICE BIGINT,
    GOODS_DELIVERY_DATE DATETIME,
    GOODS_STATUS VARCHAR(50),
	GOODS_MANUFACTURER_INTRO VARCHAR(2000),
    GOODS_MANUFACTURED_DATE DATETIME,
    GOODS_CREDATE DATETIME DEFAULT SYSDATE()
);

--  SQLINES DEMO *** ------------------------------------
-- SQLINES DEMO *** SHOPPING_MEMBER
--  SQLINES DEMO *** ------------------------------------

  -- SQLINES LICENSE FOR EVALUATION USE ONLY
  CREATE TABLE T_SHOPPING_MEMBER
   (	MEMBER_ID VARCHAR(20) primary key,
	MEMBER_PW VARCHAR(30),
	MEMBER_NAME VARCHAR(50),
	MEMBER_GENDER VARCHAR(10),
	TEL1 VARCHAR(20),
	TEL2 VARCHAR(20),
	TEL3 VARCHAR(20),
	HP1 VARCHAR(20),
	HP2 VARCHAR(20),
	HP3 VARCHAR(20),
	SMSSTS_YN VARCHAR(20),
	EMAIL1 VARCHAR(20),
	EMAIL2 VARCHAR(20),
	EMAILSTS_YN VARCHAR(20),
	ZIPCODE VARCHAR(20),
	ROADADDRESS VARCHAR(500),
	JIBUNADDRESS VARCHAR(500),
	NAMUJIADDRESS VARCHAR(500),
	MEMBER_BIRTH_Y VARCHAR(20),
	MEMBER_BIRTH_M VARCHAR(20),
	MEMBER_BIRTH_D VARCHAR(20),
	MEMBER_BIRTH_GN VARCHAR(20),
	JOINDATE DATETIME DEFAULT sysdate(),
	DEL_YN VARCHAR(20) DEFAULT 'N'
   ) ;

--  SQLINES DEMO *** ------------------------------------
-- SQLINES DEMO *** SHOPPING_ORDER
--  SQLINES DEMO *** ------------------------------------

  -- SQLINES LICENSE FOR EVALUATION USE ONLY
  CREATE TABLE T_SHOPPING_ORDER
   (	ORDER_SEQ_NUM DECIMAL(20,0) primary key,
	ORDER_ID DECIMAL(20,0),
	MEMBER_ID VARCHAR(20),
	GOODS_ID DECIMAL(20,0),
	ORDERER_NAME VARCHAR(50),
	GOODS_TITLE VARCHAR(100),
	ORDER_GOODS_QTY BIGINT,
	GOODS_SALES_PRICE BIGINT,
	GOODS_FILENAME VARCHAR(60),
	RECEIVER_NAME VARCHAR(50),
	RECEIVER_HP1 VARCHAR(20),
	RECEIVER_HP2 VARCHAR(20),
	RECEIVER_HP3 VARCHAR(20),
	RECEIVER_TEL1 VARCHAR(20),
	RECEIVER_TEL2 VARCHAR(20),
	RECEIVER_TEL3 VARCHAR(20),
	DELIVERY_ADDRESS VARCHAR(500),
	DELIVERY_METHOD VARCHAR(40),
	DELIVERY_MESSAGE VARCHAR(300),
	GIFT_WRAPPING VARCHAR(20),
	PAY_METHOD VARCHAR(200),
	CARD_COM_NAME VARCHAR(50),
	CARD_PAY_MONTH VARCHAR(20),
	PAY_ORDERER_HP_NUM VARCHAR(20),
	DELIVERY_STATE VARCHAR(20) DEFAULT 'delivery_prepared',
	PAY_ORDER_TIME DATETIME DEFAULT sysdate(),
	ORDERER_HP VARCHAR(50)
   ) ;

--  SQLINES DEMO *** ------------------------------------
-- SQLINES DEMO *** SHOPPING_CART
--  SQLINES DEMO *** ------------------------------------

  -- SQLINES LICENSE FOR EVALUATION USE ONLY
  CREATE TABLE T_SHOPPING_CART
   (	CART_ID BIGINT primary key,
	GOODS_ID DECIMAL(20,0),
	MEMBER_ID VARCHAR(20),
	DEL_YN VARCHAR(20) DEFAULT 'N',
	CREDATE DATETIME DEFAULT sysdate(),
	CART_GOODS_QTY SMALLINT DEFAULT 1
   ) ;
-- INSERTING into T_GOODS_DETAIL_IMAGE
/* SET DEFINE OFF; */

Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (346,394,'394_main.JPG','admin','main_image',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (347,394,'394_detail.JPG','admin','detail_image1',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (349,395,'395_main.JPG','admin','main_image',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (350,395,'395_detail.JPG','admin','detail_image1',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (351,397,'397_main.JPG','admin','main_image',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (352,397,'397_detail.JPG','admin','detail_image1',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (353,398,'398_main.JPG','admin','main_image',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (354,398,'398_detail.JPG','admin','detail_image1',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (299,334,'334_main.JPG','admin','main_image',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (300,334,'334_detail.JPG','admin','detail_image1',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (301,335,'335_main.JPG','admin','main_image',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (302,335,'335_detail.JPG','admin','detail_image1',date_format('21/10/16','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (303,336,'336_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (304,336,'336_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (305,337,'337_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (306,337,'337_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (307,338,'338_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (308,338,'338_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (309,339,'339_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (310,339,'339_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (311,340,'340_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (312,340,'340_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (313,341,'341_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (314,341,'341_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (315,342,'342_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (316,342,'342_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (317,343,'343_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (339,343,'343_detail.JPG','admin','uploadFile',date_format('21/10/21','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (319,344,'344_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (320,344,'344_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (321,345,'345_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (322,345,'345_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (323,346,'346_main.JPG','admin','main_image',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (324,346,'346_detail.JPG','admin','detail_image1',date_format('21/10/17','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (325,347,'347_main.JPG','admin','main_image',date_format('21/10/20','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (326,347,'347_detail.JPG','admin','detail_image1',date_format('21/10/20','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (327,348,'348_main.JPG','admin','main_image',date_format('21/10/20','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (328,348,'348_detail.JPG','admin','detail_image1',date_format('21/10/20','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (330,349,'349_main.JPG','admin','main_image',date_format('21/10/20','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (331,349,'349_detail.JPG','admin','detail_image1',date_format('21/10/20','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (334,350,'350_main.JPG','admin','main_image',date_format('21/10/21','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (341,350,'350_detail.JPG','admin','uploadFile',date_format('21/10/21','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (342,354,'354_main.JPG','admin','main_image',date_format('21/10/23','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (343,354,'354_detail.JPG','admin','detail_image1',date_format('21/10/23','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (344,356,'356_main.JPG','admin','main_image',date_format('21/10/23','%y/%m/%d'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (345,356,'356_detail.JPG','admin','detail_image1',date_format('21/10/23','%y/%m/%d'));
-- INSERTING into T_SHOPPING_GOODS
/* SET DEFINE OFF; */

INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(394, '볼링공/소프트볼', '더 비스트', '콜롬비아300', 189000, 170100, 17010, 1500, date_format('21/11/01', '%y/%m/%d'), 'bestseller', '안녕하세요. 콜롬비아300입니다.', date_format('21/10/01', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(395, '볼링공/소프트볼', '스텔라 패럴랙스', '스톰', 259000, 233100, 23310, 1500, date_format('21/11/01', '%y/%m/%d'), 'bestseller', '안녕하세요. 스톰입니다.', date_format('21/10/01', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(397, '볼링공/소프트볼', '허니배저 리바이벌', '글로벌900', 209000, 188100, 18810, 1500, date_format('21/11/01', '%y/%m/%d'), 'bestseller', '안녕하세요. 글로벌900입니다.', date_format('21/10/02', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(398, '볼링공/소프트볼', '패스트 피치', '스톰', 199000, 179100, 17910, 1500, date_format('21/11/01', '%y/%m/%d'), 'bestseller', '안녕하세요. 스톰입니다.', date_format('21/10/02', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(334, '볼링공/소프트볼', '코드 다이나믹', '스톰', 259000, 233100, 23310, 1500, date_format('21/11/01', '%y/%m/%d'), 'bestseller', '안녕하세요. 스톰입니다.', date_format('21/10/03', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(335, '볼링공/소프트볼', '나도데스 그라스프', 'ABS', 389000, 350100, 35010, 1500, date_format('21/11/01', '%y/%m/%d'), 'bestseller', '안녕하세요. ABS입니다.', date_format('21/10/03', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(336, '볼링공/소프트볼', '도미네이션 2020', '스톰', 259000, 233100, 23310, 1500, date_format('21/11/01', '%y/%m/%d'), 'bestseller', '안녕하세요. 스톰입니다.', date_format('21/10/04', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(337, '볼링공/소프트볼', '허슬 업', '로또그립', 130000, 117000, 11700, 1500, date_format('21/11/02', '%y/%m/%d'), 'bestseller', '안녕하세요. 로또그립입니다.', date_format('21/10/04', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(338, '볼링공/소프트볼', '피치 블랙', '스톰', 199000, 179100, 17910, 1500, date_format('21/11/02', '%y/%m/%d'), 'newgoods', '안녕하세요. 스톰입니다.', date_format('21/10/05', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(339, '볼링공/소프트볼', '패럴랙스', '스톰', 259000, 233100, 23310, 1500, date_format('21/11/02', '%y/%m/%d'), 'steadyseller', '안녕하세요. 스톰입니다.', date_format('21/10/05', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(340, '볼링공/소프트볼', '퍼플펄우레탄', '햄머', 249000, 224100, 22410, 1500, date_format('21/11/02', '%y/%m/%d'), 'bestseller', '안녕하세요. 햄머입니다.', date_format('21/10/06', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(341, '볼링공/소프트볼', '다크 코드', '스톰', 259000, 233100, 23310, 1500, date_format('21/11/02', '%y/%m/%d'), 'bestseller', '안녕하세요. 스톰입니다.', date_format('21/10/06', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(342, '볼링공/소프트볼', '솔라 패럴랙스', '스톰', 259000, 233100, 23310, 1500, date_format('21/11/02', '%y/%m/%d'), 'steadyseller', '안녕하세요. 스톰입니다.', date_format('21/10/07', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(343, '볼링공/소프트볼', '패럴랙스 이펙트', '스톰', 259000, 233100, 23310, 1500, date_format('21/11/02', '%y/%m/%d'), 'steadyseller', '안녕하세요. 스톰입니다.', date_format('21/10/07', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(344, '볼링공/소프트볼', '컴플리트 피직스', '스톰', 259000, 233100, 23310, 1500, date_format('21/11/02', '%y/%m/%d'), 'steadyseller', '안녕하세요. 스톰입니다.', date_format('21/10/08', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(345, '볼링공/소프트볼', '매치 업', '스톰', 159000, 143100, 14310, 1500, date_format('21/11/03', '%y/%m/%d'), 'newgoods', '안녕하세요. 스톰입니다.', date_format('21/10/08', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(346, '볼링공/소프트볼', '블랙위도우 하이브리드', '햄머', 259000, 233100, 23310, 1500, date_format('21/11/03', '%y/%m/%d'), 'bestseller', '안녕하세요. 햄머입니다.', date_format('21/10/09', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(347, '볼링공/소프트볼', '피직스 마에스트로', '스톰', 259000, 233100, 23310, 1500, date_format('21/11/03', '%y/%m/%d'), 'bestseller', '안녕하세요. 스톰입니다.', date_format('21/10/09', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(348, '볼링공/소프트볼', 'RST X-1', '로또그립', 259000, 233100, 23310, 1500, date_format('21/11/03', '%y/%m/%d'), 'bestseller', '안녕하세요. 로또그립입니다.', date_format('21/10/10', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(349, '볼링공/소프트볼', '트로피컬 써지', '스톰', 135000, 121500, 12150, 1500, date_format('21/11/03', '%y/%m/%d'), 'bestseller', '안녕하세요. 스톰입니다.', date_format('21/10/10', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(350, '볼링공/소프트볼', '아이큐 투어 나노 펄', '스톰', 239000, 215100, 21510, 1500, date_format('21/11/03', '%y/%m/%d'), 'bestseller', '안녕하세요. 스톰입니다.', date_format('21/10/11', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(354, '볼링공/소프트볼', '하이로드 웨이브', '스톰', 199000, 179100, 17910, 1500, date_format('21/11/03', '%y/%m/%d'), 'newgoods', '안녕하세요. 스톰입니다.', date_format('21/10/11', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(356, '볼링공/소프트볼', '아이돌 퍼플', '로또그립', 199000, 179100, 17910, 1500, date_format('21/11/03', '%y/%m/%d'), 'newgoods', '안녕하세요. 로또그립입니다.', date_format('21/10/12', '%y/%m/%d'), date_format('21/10/30', '%y/%m/%d'));

-- INSERTING into T_SHOPPING_MEMBER
/* SET DEFINE OFF; */
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('admin','1212','어드민','101','02','1000','2222','010','2000','2222','Y','admin','test.com','Y','06253','서울 강남구 강남대로 298 (역삼동)','서울 강남구 역삼동 838','럭키빌딩 101호','2000','5','10','2',date_format('18/10/16','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn','1212','안상균','101','02','1001','2222','010','2001','3333','Y','ahn','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 101호','1996','4','28','2',date_format('18/10/01','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim','1212','김현섭','101','02','1002','2222','010','2002','3333','Y','kim','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 102호','1997','4','28','2',date_format('18/10/01','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon','1212','윤동혁','101','02','1003','2222','010','2003','3333','Y','yoon','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 103호','1999','4','28','2',date_format('18/10/03','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn2','1212','안상균','101','02','1004','2222','010','2004','3333','Y','ahn2','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 104호','1996','4','28','2',date_format('18/10/04','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim2','1212','김현섭','101','02','1005','2222','010','2005','3333','Y','kim2','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 105호','1997','4','28','2',date_format('18/10/05','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon2','1212','윤동혁','101','02','1006','2222','010','2006','3333','Y','yoon2','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 106호','1999','4','28','2',date_format('18/10/06','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn3','1212','안상균','101','02','1007','2222','010','2007','3333','Y','ahn3','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 107호','1996','4','28','2',date_format('18/10/07','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim3','1212','김현섭','101','02','1008','2222','010','2008','3333','Y','kim3','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 108호','1997','4','28','2',date_format('18/10/08','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon3','1212','윤동혁','101','02','1009','2222','010','2009','3333','Y','yoon3','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 109호','1999','4','28','2',date_format('18/10/09','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn4','1212','안상균','101','02','1010','2222','010','2010','3333','Y','ahn4','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 110호','1996','4','28','2',date_format('18/10/10','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim4','1212','김현섭','101','02','1011','2222','010','2011','3333','Y','kim4','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 111호','1997','4','28','2',date_format('18/10/11','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon4','1212','윤동혁','101','02','1012','2222','010','2012','3333','Y','yoon4','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 112호','1999','4','28','2',date_format('18/10/12','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn5','1212','안상균','101','02','1013','2222','010','2013','3333','Y','ahn5','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 113호','1996','4','28','2',date_format('18/10/13','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim5','1212','김현섭','101','02','1014','2222','010','2014','3333','Y','kim5','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 114호','1997','4','28','2',date_format('18/10/14','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon5','1212','윤동혁','101','02','1015','2222','010','2015','3333','Y','yoon5','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 115호','1999','4','28','2',date_format('18/10/15','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn6','1212','안상균','101','02','1016','2222','010','2016','3333','Y','ahn6','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 116호','1996','4','28','2',date_format('18/10/16','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kin6','1212','김현섭','101','02','1017','2222','010','2017','3333','Y','kim6','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 117호','1997','4','28','2',date_format('18/10/17','%y/%m/%d'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon6','1212','윤동혁','101','02','1018','2222','010','2018','3333','Y','yoon6','test.com','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 118호','1999','4','28','2',date_format('18/10/18','%y/%m/%d'),'N');
-- INSERTING into T_SHOPPING_ORDER
/* SET DEFINE OFF; */
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (88,92,'ahn',344,'안상균','컴플리트 피직스',1,27000,'344_main.JPG','김현섭','010','2222','3333','02','1111','2222','우편번호:13547<br>도로명 주소:경기 성남시 분당구 고기로 25 (동원동)<br>[지번 주소:경기 성남시 분당구 동원동 79-1]<br>럭키빌딩 101호','일반택배',null,'no','신용카드<Br>카드사:삼성<br>할부개월수:일시불','삼성','일시불','해당없음','cancel_order',date_format('21/11/11','%y/%m/%d'),'010-2222-3333');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (89,93,'kim',354,'김현섭','하이로드 웨이브',1,27000,'354_main.JPG','윤동혁','010','2222','3333','02','1111','2222','우편번호:13547<br>도로명 주소:경기 성남시 분당구 고기로 25 (동원동)<br>[지번 주소:경기 성남시 분당구 동원동 79-1]<br>럭키빌딩 101호','일반택배',null,'no','신용카드<Br>카드사:삼성<br>할부개월수:일시불','삼성','일시불','해당없음','delivering',date_format('21/11/12','%y/%m/%d'),'010-2232-3343');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (90,94,'yoon',354,'윤동혁','하이로드 웨이브',1,27000,'354_main.JPG','안상균','010','2222','3333','02','1111','2222','우편번호:13547<br>도로명 주소:경기 성남시 분당구 고기로 25 (동원동)<br>[지번 주소:경기 성남시 분당구 동원동 79-1]<br>럭키빌딩 101호','일반택배',null,'no','신용카드<Br>카드사:삼성<br>할부개월수:일시불','삼성','일시불','해당없음','cancel_order',date_format('21/11/13','%y/%m/%d'),'010-2122-1333');
-- INSERTING into T_SHOPPING_CART
/* SET DEFINE OFF; */

drop sequence ORDER_SEQ_NUM;
drop sequence SEQ_GOODS_ID;
drop sequence SEQ_IMAGE_ID;
drop sequence SEQ_ORDER_ID;
--  SQLINES DEMO *** ------------------------------------
-- SQLINES DEMO ***  ORDER_SEQ_NUM
--  SQLINES DEMO *** ------------------------------------

   CREATE SEQUENCE  ORDER_SEQ_NUM  MINVALUE 0 MAXVALUE 10000000 INCREMENT BY 1 START WITH 400 CACHE 20  NOCYCLE ;
--  SQLINES DEMO *** ------------------------------------
-- SQLINES DEMO ***  SEQ_GOODS_ID
--  SQLINES DEMO *** ------------------------------------

   CREATE SEQUENCE  SEQ_GOODS_ID  MINVALUE 100 MAXVALUE 1000000 INCREMENT BY 1 START WITH 400 CACHE 20 /* Warning: ORDER */  NOCYCLE ;
--  SQLINES DEMO *** ------------------------------------
-- SQLINES DEMO ***  SEQ_IMAGE_ID
--  SQLINES DEMO *** ------------------------------------

   CREATE SEQUENCE  SEQ_IMAGE_ID  MINVALUE 1 MAXVALUE 11111111 INCREMENT BY 1 START WITH 400 NOCACHE   NOCYCLE ;
--  SQLINES DEMO *** ------------------------------------
-- SQLINES DEMO ***  SEQ_ORDER_ID
--  SQLINES DEMO *** ------------------------------------

   CREATE SEQUENCE  SEQ_ORDER_ID  MINVALUE 0 MAXVALUE 10000000 INCREMENT BY 1 START WITH 400 NOCACHE  /* Warning: ORDER */  NOCYCLE ;

commit;