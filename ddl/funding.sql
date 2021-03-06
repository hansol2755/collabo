--------------------------------------------------------
--  파일이 생성됨 - 수요일-7월-07-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence PAY_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOB"."PAY_NO_SEQ"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOB"."PRODUCT_NO_SEQ"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REWARD_NO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOB"."REWARD_NO_SEQ"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table FUNDING_OPEN
--------------------------------------------------------

  CREATE TABLE "BOB"."FUNDING_OPEN" 
   (	"PRODUCT_NO" NUMBER, 
	"PRODUCT_NAME" VARCHAR2(100 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"DEADLINE" DATE, 
	"GOAL_MONEY" NUMBER, 
	"CONTENT" VARCHAR2(1500 BYTE), 
	"REGION" VARCHAR2(50 BYTE), 
	"SAVE_MONEY" NUMBER DEFAULT 0, 
	"SUPPORTER" NUMBER DEFAULT 0, 
	"PIMG_NO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."PRODUCT_NO" IS '상품번호';
   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."PRODUCT_NAME" IS '상품명';
   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."ID" IS '사업자 아이디';
   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."DEADLINE" IS '마감일';
   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."GOAL_MONEY" IS '목표금액';
   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."CONTENT" IS '상품설명';
   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."REGION" IS '지역';
   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."SAVE_MONEY" IS '모금액';
   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."SUPPORTER" IS '후원자 수';
   COMMENT ON COLUMN "BOB"."FUNDING_OPEN"."PIMG_NO" IS '상품 이미지';
--------------------------------------------------------
--  DDL for Table FUNDING_PAY
--------------------------------------------------------

  CREATE TABLE "BOB"."FUNDING_PAY" 
   (	"PAY_NO" NUMBER, 
	"PRODUCT_NO" NUMBER, 
	"TOTAL_SUM" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"CHOICE_REWARD" VARCHAR2(1000 BYTE), 
	"PAY_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "BOB"."FUNDING_PAY"."PAY_NO" IS '펀딩결제 번호';
   COMMENT ON COLUMN "BOB"."FUNDING_PAY"."PRODUCT_NO" IS '상품번호 -fk';
   COMMENT ON COLUMN "BOB"."FUNDING_PAY"."TOTAL_SUM" IS '상품 총 금액 -fk';
   COMMENT ON COLUMN "BOB"."FUNDING_PAY"."NAME" IS '입력한 이름';
   COMMENT ON COLUMN "BOB"."FUNDING_PAY"."PHONE" IS '입력한 폰번호';
   COMMENT ON COLUMN "BOB"."FUNDING_PAY"."ADDRESS" IS '입력한 주소';
   COMMENT ON COLUMN "BOB"."FUNDING_PAY"."ID" IS '회원 id';
   COMMENT ON COLUMN "BOB"."FUNDING_PAY"."CHOICE_REWARD" IS '선택한 리워드';
   COMMENT ON COLUMN "BOB"."FUNDING_PAY"."PAY_DATE" IS '결제시각';
--------------------------------------------------------
--  DDL for Table FUNDING_REWARD
--------------------------------------------------------

  CREATE TABLE "BOB"."FUNDING_REWARD" 
   (	"PRODUCT_NO" NUMBER, 
	"REWARD_NAME" VARCHAR2(1000 BYTE) DEFAULT '리워드명', 
	"REWARD_PRICE" VARCHAR2(1000 BYTE), 
	"REWARD_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "BOB"."FUNDING_REWARD"."PRODUCT_NO" IS '상품번호';
   COMMENT ON COLUMN "BOB"."FUNDING_REWARD"."REWARD_NAME" IS '리워드 이름';
   COMMENT ON COLUMN "BOB"."FUNDING_REWARD"."REWARD_PRICE" IS '리워드 가격';
   COMMENT ON COLUMN "BOB"."FUNDING_REWARD"."REWARD_NO" IS '리워드 번호';
REM INSERTING into BOB.FUNDING_OPEN
SET DEFINE OFF;
Insert into BOB.FUNDING_OPEN (PRODUCT_NO,PRODUCT_NAME,ID,DEADLINE,GOAL_MONEY,CONTENT,REGION,SAVE_MONEY,SUPPORTER,PIMG_NO) values (1,'테스트','qwer',to_date('2021/07/21','YYYY/MM/DD'),100000,'ㅇㄹㄴㅇㄹㄴ','충남',0,0,null);
REM INSERTING into BOB.FUNDING_PAY
SET DEFINE OFF;
REM INSERTING into BOB.FUNDING_REWARD
SET DEFINE OFF;
Insert into BOB.FUNDING_REWARD (PRODUCT_NO,REWARD_NAME,REWARD_PRICE,REWARD_NO) values (1,'마카롱1키로','10000',1);
REM INSERTING into BOB.MEMBER
SET DEFINE OFF;
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (2,'yaho','1234','userA',14,null,null,null,'IN',null,to_timestamp('21/06/27 23:24:39.918679000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('99/12/31 23:59:59.146000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (27,'zcxv','1234','yyyy',22,'010232',null,null,'IN',null,to_timestamp('21/06/27 18:33:45.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('99/12/31 23:59:59.146000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (36,'min1','1234','zxcv',32,'01010101011',null,null,'IN',null,to_timestamp('21/07/01 16:07:39.591275000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (32,'zxcv','1234','야호',21,'01033392231',null,null,'IN',null,to_timestamp('21/06/28 23:23:38.421311000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('99/12/31 23:59:59.146000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (31,'1233','1234','ya',10,'01',null,null,'IN',null,to_timestamp('21/06/28 23:09:49.283408000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('99/12/31 23:59:59.146000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (26,'zxcv2','1234','2`````',15,'01020201032',null,null,'OUT','15115151',to_timestamp('21/06/28 03:25:10.010516000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/06/29 00:23:00.021176000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (33,'qwer','1234','1234',15,'31',null,'asdfadsf@adsf.com','IN','123123',to_timestamp('21/06/28 23:37:37.710495000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('99/12/31 23:59:59.146000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (34,'zxcv1','1234','afdf',32,'0202031402','서울시 서대문구 연희동',null,'IN',null,to_timestamp('21/06/29 00:15:50.128289000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('99/12/31 23:59:59.146000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (35,'idid','1234','yahz',20,'01023421234',null,null,'IN',null,to_timestamp('21/06/29 14:35:38.830234000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('99/12/31 23:59:59.146000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (37,'min9','1919','yaho',22,'01010101011',null,null,'IN',null,to_timestamp('21/07/01 16:12:30.637051000','RR/MM/DD HH24:MI:SSXFF'),null);
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (38,'asdf','1234','dd',19,'01022314123',null,null,'OUT',null,to_timestamp('21/07/02 10:02:11.941769000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/07/02 10:03:27.805343000','RR/MM/DD HH24:MI:SSXFF'));
Insert into BOB.MEMBER (UUID,ID,PASSWORD,NAME,AGE,PHONE,ADDRESS,EMAIL,AVAILABLE,LICENSE,SIGNUP_DATE,SIGNOUT_DATE) values (39,'sads','44565','fdhdgh',12,'01055675756',null,null,'IN',null,to_timestamp('21/07/02 10:14:15.544679000','RR/MM/DD HH24:MI:SSXFF'),null);
--------------------------------------------------------
--  DDL for Index FUNDING_OPEN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOB"."FUNDING_OPEN_PK" ON "BOB"."FUNDING_OPEN" ("PRODUCT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FUNDING_PAY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOB"."FUNDING_PAY_PK" ON "BOB"."FUNDING_PAY" ("PAY_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FUNDING_REWARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOB"."FUNDING_REWARD_PK" ON "BOB"."FUNDING_REWARD" ("REWARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007016
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOB"."SYS_C007016" ON "BOB"."MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FUNDING_OPEN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOB"."FUNDING_OPEN_PK" ON "BOB"."FUNDING_OPEN" ("PRODUCT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FUNDING_PAY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOB"."FUNDING_PAY_PK" ON "BOB"."FUNDING_PAY" ("PAY_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FUNDING_REWARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOB"."FUNDING_REWARD_PK" ON "BOB"."FUNDING_REWARD" ("REWARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FUNDING_OPEN
--------------------------------------------------------

  ALTER TABLE "BOB"."FUNDING_OPEN" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
  ALTER TABLE "BOB"."FUNDING_OPEN" ADD CONSTRAINT "FUNDING_OPEN_PK" PRIMARY KEY ("PRODUCT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FUNDING_PAY
--------------------------------------------------------

  ALTER TABLE "BOB"."FUNDING_PAY" ADD CONSTRAINT "FUNDING_PAY_PK" PRIMARY KEY ("PAY_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOB"."FUNDING_PAY" MODIFY ("PAY_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FUNDING_REWARD
--------------------------------------------------------

  ALTER TABLE "BOB"."FUNDING_REWARD" ADD CONSTRAINT "FUNDING_REWARD_PK" PRIMARY KEY ("REWARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BOB"."FUNDING_REWARD" MODIFY ("REWARD_NO" NOT NULL ENABLE);
  ALTER TABLE "BOB"."FUNDING_REWARD" MODIFY ("PRODUCT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FUNDING_PAY
--------------------------------------------------------

  ALTER TABLE "BOB"."FUNDING_PAY" ADD CONSTRAINT "FUNDING_PAY_FK1" FOREIGN KEY ("PRODUCT_NO")
	  REFERENCES "BOB"."FUNDING_OPEN" ("PRODUCT_NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BOB"."FUNDING_PAY" ADD CONSTRAINT "FUNDING_PAY_ID" FOREIGN KEY ("ID")
	  REFERENCES "BOB"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FUNDING_REWARD
--------------------------------------------------------

  ALTER TABLE "BOB"."FUNDING_REWARD" ADD CONSTRAINT "FUNDING_REWARD_FK1" FOREIGN KEY ("PRODUCT_NO")
	  REFERENCES "BOB"."FUNDING_OPEN" ("PRODUCT_NO") ON DELETE CASCADE ENABLE;
