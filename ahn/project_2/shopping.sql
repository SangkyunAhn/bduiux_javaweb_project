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

Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (346,394,'??? ?????????_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (347,394,'??? ?????????_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (349,395,'????????? ????????????_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (350,395,'????????? ????????????_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (351,397,'???????????? ????????????_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (352,397,'???????????? ????????????_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (353,398,'????????? ??????_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (354,398,'????????? ??????_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (299,334,'?????? ????????????_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (300,334,'?????? ????????????_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (301,335,'???????????? ????????????_main.jpg','admin','main_image',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (302,335,'???????????? ????????????_detail.jpg','admin','detail_image1',to_date('21/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (303,336,'???????????????_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (304,336,'???????????????_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (305,337,'?????? ???_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (306,337,'?????? ???_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (307,338,'?????? ??????_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (308,338,'?????? ??????_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (309,339,'????????????_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (310,339,'????????????_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (311,340,'??????????????????_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (312,340,'??????????????????_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (313,341,'?????? ??????_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (314,341,'?????? ??????_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (315,342,'?????? ????????????_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (316,342,'?????? ????????????_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (317,343,'???????????? ?????????_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (339,343,'???????????? ?????????_detail.jpg','admin','uploadFile',to_date('21/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (319,344,'???????????? ?????????_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (320,344,'???????????? ?????????_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (321,345,'?????? ???_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (322,345,'?????? ???_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (323,346,'??????????????? ???????????????_main.jpg','admin','main_image',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (324,346,'??????????????? ???????????????_detail.jpg','admin','detail_image1',to_date('21/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (325,347,'????????? ???????????????_main.jpg','admin','main_image',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (326,347,'????????? ???????????????_detail.jpg','admin','detail_image1',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (327,348,'RST X-1_main.jpg','admin','main_image',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (328,348,'RST X-1_detail.jpg','admin','detail_image1',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (330,349,'???????????? ??????_main.jpg','admin','main_image',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (331,349,'???????????? ??????_detail.jpg','admin','detail_image1',to_date('21/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (334,350,'????????? ?????? ?????? ???_main.jpg','admin','main_image',to_date('21/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (341,350,'????????? ?????? ?????? ???_detail.jpg','admin','uploadFile',to_date('21/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (342,354,'???????????? ?????????_main.jpg','admin','main_image',to_date('21/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (343,354,'???????????? ?????????_detail.jpg','admin','detail_image1',to_date('21/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (344,356,'????????? ??????_main.jpg','admin','main_image',to_date('21/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (345,356,'????????? ??????_detail.jpg','admin','detail_image1',to_date('21/10/23','RR/MM/DD'));
REM INSERTING into T_SHOPPING_GOODS
SET DEFINE OFF;

INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(394, '?????????/????????????', '??? ?????????', '????????????300', 189000, 170100, 17010, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '???????????????. ????????????300?????????.', TO_DATE('21/10/01', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(395, '?????????/????????????', '????????? ????????????', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/01', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(397, '?????????/????????????', '???????????? ????????????', '?????????900', 209000, 188100, 18810, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '???????????????. ?????????900?????????.', TO_DATE('21/10/02', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(398, '?????????/????????????', '????????? ??????', '??????', 199000, 179100, 17910, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/02', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(334, '?????????/????????????', '?????? ????????????', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/03', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(335, '?????????/????????????', '???????????? ????????????', 'ABS', 389000, 350100, 35010, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '???????????????. ABS?????????.', TO_DATE('21/10/03', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(336, '?????????/????????????', '??????????????? 2020', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/01', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/04', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(337, '?????????/????????????', '?????? ???', '????????????', 130000, 117000, 11700, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'bestseller', '???????????????. ?????????????????????.', TO_DATE('21/10/04', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(338, '?????????/????????????', '?????? ??????', '??????', 199000, 179100, 17910, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'newgoods', '???????????????. ???????????????.', TO_DATE('21/10/05', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(339, '?????????/????????????', '????????????', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'steadyseller', '???????????????. ???????????????.', TO_DATE('21/10/05', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(340, '?????????/????????????', '??????????????????', '??????', 249000, 224100, 22410, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/06', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(341, '?????????/????????????', '?????? ??????', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/06', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(342, '?????????/????????????', '?????? ????????????', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'steadyseller', '???????????????. ???????????????.', TO_DATE('21/10/07', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(343, '?????????/????????????', '???????????? ?????????', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'steadyseller', '???????????????. ???????????????.', TO_DATE('21/10/07', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(344, '?????????/????????????', '???????????? ?????????', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/02', 'RR/MM/DD'), 'steadyseller', '???????????????. ???????????????.', TO_DATE('21/10/08', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(345, '?????????/????????????', '?????? ???', '??????', 159000, 143100, 14310, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'newgoods', '???????????????. ???????????????.', TO_DATE('21/10/08', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(346, '?????????/????????????', '??????????????? ???????????????', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/09', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(347, '?????????/????????????', '????????? ???????????????', '??????', 259000, 233100, 23310, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/09', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(348, '?????????/????????????', 'RST X-1', '????????????', 259000, 233100, 23310, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '???????????????. ?????????????????????.', TO_DATE('21/10/10', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(349, '?????????/????????????', '???????????? ??????', '??????', 135000, 121500, 12150, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/10', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(350, '?????????/????????????', '????????? ?????? ?????? ???', '??????', 239000, 215100, 21510, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'bestseller', '???????????????. ???????????????.', TO_DATE('21/10/11', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(354, '?????????/????????????', '???????????? ?????????', '??????', 199000, 179100, 17910, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'newgoods', '???????????????. ???????????????.', TO_DATE('21/10/11', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));
INSERT INTO T_SHOPPING_GOODS (GOODS_ID, GOODS_SORT, GOODS_TITLE, GOODS_MANUFACTURER, GOODS_PRICE, GOODS_SALES_PRICE, GOODS_POINT, GOODS_DELIVERY_PRICE, GOODS_DELIVERY_DATE, GOODS_STATUS, GOODS_MANUFACTURER_INTRO, GOODS_MANUFACTURED_DATE, GOODS_CREDATE) VALUES(356, '?????????/????????????', '????????? ??????', '????????????', 199000, 179100, 17910, 1500, TO_DATE('21/11/03', 'RR/MM/DD'), 'newgoods', '???????????????. ?????????????????????.', TO_DATE('21/10/12', 'RR/MM/DD'), TO_DATE('21/10/30', 'RR/MM/DD'));

REM INSERTING into T_SHOPPING_MEMBER
SET DEFINE OFF;
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('admin','1212','?????????','101','02','1000','2222','010','2000','2222','Y','admin','test.com','Y','06253','?????? ????????? ???????????? 298 (?????????)','?????? ????????? ????????? 838','???????????? 101???','2000','5','10','2',to_date('18/10/16','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn','1212','?????????','101','02','1001','2222','010','2001','3333','Y','ahn','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 101???','1996','4','28','2',to_date('18/10/01','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim','1212','?????????','101','02','1002','2222','010','2002','3333','Y','kim','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 102???','1997','4','28','2',to_date('18/10/01','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon','1212','?????????','101','02','1003','2222','010','2003','3333','Y','yoon','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 103???','1999','4','28','2',to_date('18/10/03','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn2','1212','?????????','101','02','1004','2222','010','2004','3333','Y','ahn2','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 104???','1996','4','28','2',to_date('18/10/04','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim2','1212','?????????','101','02','1005','2222','010','2005','3333','Y','kim2','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 105???','1997','4','28','2',to_date('18/10/05','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon2','1212','?????????','101','02','1006','2222','010','2006','3333','Y','yoon2','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 106???','1999','4','28','2',to_date('18/10/06','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn3','1212','?????????','101','02','1007','2222','010','2007','3333','Y','ahn3','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 107???','1996','4','28','2',to_date('18/10/07','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim3','1212','?????????','101','02','1008','2222','010','2008','3333','Y','kim3','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 108???','1997','4','28','2',to_date('18/10/08','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon3','1212','?????????','101','02','1009','2222','010','2009','3333','Y','yoon3','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 109???','1999','4','28','2',to_date('18/10/09','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn4','1212','?????????','101','02','1010','2222','010','2010','3333','Y','ahn4','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 110???','1996','4','28','2',to_date('18/10/10','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim4','1212','?????????','101','02','1011','2222','010','2011','3333','Y','kim4','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 111???','1997','4','28','2',to_date('18/10/11','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon4','1212','?????????','101','02','1012','2222','010','2012','3333','Y','yoon4','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 112???','1999','4','28','2',to_date('18/10/12','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn5','1212','?????????','101','02','1013','2222','010','2013','3333','Y','ahn5','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 113???','1996','4','28','2',to_date('18/10/13','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kim5','1212','?????????','101','02','1014','2222','010','2014','3333','Y','kim5','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 114???','1997','4','28','2',to_date('18/10/14','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon5','1212','?????????','101','02','1015','2222','010','2015','3333','Y','yoon5','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 115???','1999','4','28','2',to_date('18/10/15','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('ahn6','1212','?????????','101','02','1016','2222','010','2016','3333','Y','ahn6','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 116???','1996','4','28','2',to_date('18/10/16','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('kin6','1212','?????????','101','02','1017','2222','010','2017','3333','Y','kim6','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 117???','1997','4','28','2',to_date('18/10/17','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('yoon6','1212','?????????','101','02','1018','2222','010','2018','3333','Y','yoon6','test.com','Y','13547','?????? ????????? ????????? ????????? 25 (?????????)','?????? ????????? ????????? ????????? 79-1','???????????? 118???','1999','4','28','2',to_date('18/10/18','RR/MM/DD'),'N');
REM INSERTING into T_SHOPPING_ORDER
SET DEFINE OFF;
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (88,92,'ahn',344,'?????????','???????????? ?????????',1,27000,'???????????? ?????????_main.jpg','?????????','010','2222','3333','02','1111','2222','????????????:13547<br>????????? ??????:?????? ????????? ????????? ????????? 25 (?????????)<br>[?????? ??????:?????? ????????? ????????? ????????? 79-1]<br>???????????? 101???','????????????',null,'no','????????????<Br>?????????:??????<br>???????????????:?????????','??????','?????????','????????????','cancel_order',to_date('21/11/11','RR/MM/DD'),'010-2222-3333');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (89,93,'kim',354,'?????????','???????????? ?????????',1,27000,'???????????? ?????????_main.jpg','?????????','010','2222','3333','02','1111','2222','????????????:13547<br>????????? ??????:?????? ????????? ????????? ????????? 25 (?????????)<br>[?????? ??????:?????? ????????? ????????? ????????? 79-1]<br>???????????? 101???','????????????',null,'no','????????????<Br>?????????:??????<br>???????????????:?????????','??????','?????????','????????????','delivering',to_date('21/11/12','RR/MM/DD'),'010-2232-3343');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (90,94,'yoon',354,'?????????','???????????? ?????????',1,27000,'???????????? ?????????_main.jpg','?????????','010','2222','3333','02','1111','2222','????????????:13547<br>????????? ??????:?????? ????????? ????????? ????????? 25 (?????????)<br>[?????? ??????:?????? ????????? ????????? ????????? 79-1]<br>???????????? 101???','????????????',null,'no','????????????<Br>?????????:??????<br>???????????????:?????????','??????','?????????','????????????','cancel_order',to_date('21/11/13','RR/MM/DD'),'010-2122-1333');
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