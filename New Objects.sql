DROP TABLE CREDIT_UNION;
CREATE TABLE CREDIT_UNION 
(
  CREDIT_UNION_ID VARCHAR2(10 BYTE) NOT NULL 
, CREDIT_UNION_CODE VARCHAR2(2 BYTE) NOT NULL 
, CREDIT_UNION_NAME VARCHAR2(100 BYTE) NOT NULL 
, CREDIT_UNION_ADDRES_1 VARCHAR2(100 BYTE) NOT NULL 
, CREDIT_UNION_ADDRES_2 VARCHAR2(100 BYTE) 
, CREDIT_UNION_ADDRES_3 VARCHAR2(100 BYTE) 
, CREDIT_UNION_ADDRES_4 VARCHAR2(100 BYTE) 
, CREDIT_UNION_CITY VARCHAR2(100 BYTE) NOT NULL 
, CREDIT_UNION_COUNTRY VARCHAR2(100 BYTE) NOT NULL 
, CREDIT_UNION_PHONE_1 VARCHAR2(15 BYTE) NOT NULL 
, CREDIT_UNION_PHONE_2 VARCHAR2(15 BYTE) 
, CREDIT_UNION_FAX VARCHAR2(15 BYTE) 
, CREDIT_UNION_EMAIL_ID VARCHAR2(50 BYTE) NOT NULL 
, CREATED_BY VARCHAR2(60 BYTE) NOT NULL 
, CREATION_DATE DATE NOT NULL 
, LAST_UPDATED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_UPDATE_DATE DATE NOT NULL 
, OBJECT_VERSION_ID NUMBER(15, 0) NOT NULL 
, LAST_APPROVED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_APPROVED_DATE DATE NOT NULL 
, CONSTRAINT CREDIT_UNION_PK PRIMARY KEY 
  (
    CREDIT_UNION_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX CREDIT_UNION_PK ON CREDIT_UNION (CREDIT_UNION_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;
------------------------------------------------------------------
DROP TABLE CREDIT_UNION_BRANCH;
CREATE TABLE CREDIT_UNION_BRANCH 
(
  CREDIT_UNION_ID VARCHAR2(10 BYTE) NOT NULL 
, CREDIT_UNION_BRANCH_ID VARCHAR2(10 BYTE) NOT NULL 
, CREDIT_UNION_BRANCH_CODE VARCHAR2(2 BYTE) NOT NULL 
, CREDIT_UNION_BRANCH_NAME VARCHAR2(100 BYTE) NOT NULL 
, CREDIT_UNION_ADDRES_1 VARCHAR2(100 BYTE) NOT NULL 
, CREDIT_UNION_ADDRES_2 VARCHAR2(100 BYTE) 
, CREDIT_UNION_ADDRES_3 VARCHAR2(100 BYTE) 
, CREDIT_UNION_ADDRES_4 VARCHAR2(100 BYTE) 
, CREDIT_UNION_CITY VARCHAR2(100 BYTE) NOT NULL 
, CREDIT_UNION_COUNTRY VARCHAR2(100 BYTE) NOT NULL 
, CREDIT_UNION_PHONE_1 VARCHAR2(15 BYTE) NOT NULL 
, CREDIT_UNION_PHONE_2 VARCHAR2(15 BYTE) 
, CREDIT_UNION_EMAIL_ID VARCHAR2(50 BYTE) NOT NULL 
, CREATED_BY VARCHAR2(60 BYTE) NOT NULL 
, CREATION_DATE DATE NOT NULL 
, LAST_UPDATED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_UPDATE_DATE DATE NOT NULL 
, OBJECT_VERSION_ID NUMBER(15, 0) NOT NULL 
, LAST_APPROVED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_APPROVED_DATE DATE NOT NULL 
, CONSTRAINT CREDIT_UNION_BRANCH_PK PRIMARY KEY 
  (
    CREDIT_UNION_ID 
  , CREDIT_UNION_BRANCH_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX CREDIT_UNION_BRANCH_PK ON CREDIT_UNION_BRANCH (CREDIT_UNION_ID ASC, CREDIT_UNION_BRANCH_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE CREDIT_UNION_BRANCH
ADD CONSTRAINT CREDIT_UNION_BRANCH_FK FOREIGN KEY
(
  CREDIT_UNION_ID 
)
REFERENCES CREDIT_UNION
(
  CREDIT_UNION_ID 
)
ENABLE;
---------------------------------------------------------------------
DROP TABLE LINCU_MEMBER_INFO;
CREATE TABLE LINCU_MEMBER_INFO 
(
  LINCU_ID VARCHAR2(20 BYTE) NOT NULL 
, MEMBER_ID VARCHAR2(15 BYTE) NOT NULL 
, CREDIT_UNION_ID VARCHAR2(10 BYTE) NOT NULL 
, CREDIT_UNION_BRANCH_ID VARCHAR2(10 BYTE) NOT NULL 
, MEMBER_PREFIX VARCHAR2(5 BYTE) NOT NULL 
, FIRST_NAME VARCHAR2(17 BYTE) NOT NULL 
, MIDDLE_NAME VARCHAR2(30 BYTE) 
, LAST_NAME VARCHAR2(30 BYTE) NOT NULL 
, DATE_OF_BIRTH DATE 
, GENDER VARCHAR2(1 BYTE) 
, EMAIL VARCHAR2(60 BYTE) 
, HOME_PHONE_NUMBER VARCHAR2(12 BYTE) 
, BUSINESS_PHONE_NUMBER VARCHAR2(12 BYTE) 
, BUSINESS_PHONE_EXTN VARCHAR2(4 BYTE) 
, MOBILE_PHONE_NUMBER VARCHAR2(12 BYTE) 
, FAX_NUMBER VARCHAR2(30 BYTE) 
, TIN_OR_SID VARCHAR2(20 BYTE) 
, CREATED_BY VARCHAR2(60 BYTE) NOT NULL 
, CREATION_DATE DATE NOT NULL 
, LAST_UPDATED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_UPDATE_DATE DATE NOT NULL 
, OBJECT_VERSION_ID NUMBER(15, 0) NOT NULL 
, LAST_APPROVED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_APPROVED_DATE DATE NOT NULL 
, CONSTRAINT LINCU_MEMBER_INFO_PK PRIMARY KEY 
  (
    LINCU_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LINCU_MEMBER_INFO_PK ON LINCU_MEMBER_INFO (LINCU_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE LINCU_MEMBER_INFO
ADD CONSTRAINT LINCU_MEMBER_INFO_FK_1 FOREIGN KEY
(
  CREDIT_UNION_ID 
, CREDIT_UNION_BRANCH_ID 
)
REFERENCES CREDIT_UNION_BRANCH
(
  CREDIT_UNION_ID 
, CREDIT_UNION_BRANCH_ID 
)
ENABLE;

ALTER TABLE LINCU_MEMBER_INFO
ADD CONSTRAINT MEMBER_GENDER_CHK CHECK 
(GENDER in ('M','F'))
ENABLE;
-------------------------------------------------------
DROP TABLE LINCU_MEMBER_INFO_AUDIT;
CREATE TABLE LINCU_MEMBER_INFO_AUDIT 
(
  LINCU_ID VARCHAR2(20 BYTE) NOT NULL 
, MEMBER_ID VARCHAR2(15 BYTE) NOT NULL 
, CREDIT_UNION_ID VARCHAR2(10 BYTE) NOT NULL 
, CREDIT_UNION_BRANCH_ID VARCHAR2(10 BYTE) NOT NULL 
, MEMBER_PREFIX VARCHAR2(5 BYTE) NOT NULL 
, FIRST_NAME VARCHAR2(17 BYTE) NOT NULL 
, MIDDLE_NAME VARCHAR2(30 BYTE) 
, LAST_NAME VARCHAR2(30 BYTE) NOT NULL 
, DATE_OF_BIRTH DATE 
, GENDER VARCHAR2(1 BYTE) 
, EMAIL VARCHAR2(60 BYTE) 
, HOME_PHONE_NUMBER VARCHAR2(12 BYTE) 
, BUSINESS_PHONE_NUMBER VARCHAR2(12 BYTE) 
, BUSINESS_PHONE_EXTN VARCHAR2(4 BYTE) 
, MOBILE_PHONE_NUMBER VARCHAR2(12 BYTE) 
, FAX_NUMBER VARCHAR2(30 BYTE) 
, TIN_OR_SID VARCHAR2(20 BYTE) 
, UPDATED_BY VARCHAR2(60 BYTE) NOT NULL 
, UPDATE_DATE DATE NOT NULL 
, OBJECT_VERSION_ID NUMBER(15, 0) NOT NULL 
, LINCU_AUDIT_ID NUMBER NOT NULL 
, CONSTRAINT LINCU_MEMBER_INFO_AUDIT_PK PRIMARY KEY 
  (
    LINCU_AUDIT_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LINCU_MEMBER_INFO_AUDIT_PK ON LINCU_MEMBER_INFO_AUDIT (LINCU_AUDIT_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE LINCU_MEMBER_INFO_AUDIT
ADD CONSTRAINT LINCU_MEMBER_INFO_AUDIT_FK1 FOREIGN KEY
(
  LINCU_ID 
)
REFERENCES LINCU_MEMBER_INFO
(
  LINCU_ID 
)
ENABLE;

ALTER TABLE LINCU_MEMBER_INFO_AUDIT
ADD CONSTRAINT MEMBER_GENDER_AUDIT_CHK CHECK 
(GENDER in ('M','F'))
ENABLE;
-----------------------------------------------------------------------------
DROP TABLE LINCU_MEMBER_KYC;
CREATE TABLE LINCU_MEMBER_KYC 
(
  LINCU_ID VARCHAR2(20 BYTE) NOT NULL 
, MEMBER_ID VARCHAR2(15 BYTE) NOT NULL 
, CREDIT_UNION_ID VARCHAR2(10 BYTE) NOT NULL 
, CREDIT_UNION_BRANCH_ID VARCHAR2(10 BYTE) NOT NULL 
, ELECTORIAL_ID VARCHAR2(11 BYTE) NOT NULL 
, DRIVER_PERMIT VARCHAR2(11 BYTE) NOT NULL 
, DP_ISSUE_DATE DATE 
, DP_EXPIRY_DATE DATE 
, PASSPORT_NO VARCHAR2(11 BYTE) NOT NULL 
, PP_ISSUE_DATE DATE 
, PP_EXPIRY_DATE DATE 
, BIR_NO VARCHAR2(11 BYTE) NOT NULL 
, PERMANENT_ADDR_LINE1 VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_ADDR_LINE2 VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_ADDR_LINE3 VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_ADDR_LINE4 VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_CITY VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_STATE VARCHAR2(2 BYTE) NOT NULL 
, PERMANENT_ZIP_CODE VARCHAR2(10 BYTE) NOT NULL 
, PERMANENT_COUNTRY_CODE VARCHAR2(2 BYTE) NOT NULL 
, PERMANENT_COUNTRY_DESC VARCHAR2(40 BYTE) NOT NULL 
, MAILING_ADDR_LINE1 VARCHAR2(40 BYTE) NOT NULL 
, MAILING_ADDR_LINE2 VARCHAR2(40 BYTE) NOT NULL 
, MAILING_ADDR_LINE3 VARCHAR2(40 BYTE) NOT NULL 
, MAILING_ADDR_LINE4 VARCHAR2(40 BYTE) NOT NULL 
, MAILING_CITY VARCHAR2(40 BYTE) NOT NULL 
, MAILING_STATE VARCHAR2(2 BYTE) NOT NULL 
, MAILING_ZIP_CODE VARCHAR2(10 BYTE) NOT NULL 
, MAILING_COUNTRY_CODE VARCHAR2(2 BYTE) NOT NULL 
, BIRTH_COUNTRY_CODE VARCHAR2(2 BYTE) NOT NULL 
, BIRTH_COUNTRY_DESC VARCHAR2(40 BYTE) NOT NULL 
, LOCAL_TAX_EXEMPT VARCHAR2(1 BYTE) NOT NULL 
, NATIONALITY VARCHAR2(2 BYTE) NOT NULL 
, ELIGIBLE_FOREIGN_TAX VARCHAR2(1 BYTE) NOT NULL 
, DOC_FOREIGN_TAX_EXEMPT VARCHAR2(1 BYTE) NOT NULL 
, FOREIGN_CITIZENSHIP VARCHAR2(1 BYTE) NOT NULL 
, POWER_OF_ATTORNEY VARCHAR2(1 BYTE) NOT NULL 
, CITIZEN_SHIP_COUNTRY1 VARCHAR2(2 BYTE) 
, CITIZEN_SHIP_COUNTRY2 VARCHAR2(2 BYTE) 
, CITIZEN_SHIP_COUNTRY3 VARCHAR2(2 BYTE) 
, CITIZEN_SHIP_COUNTRY4 VARCHAR2(2 BYTE) 
, RESIDENCE_TIN1 VARCHAR2(40 BYTE) 
, RESIDENCE_TIN2 VARCHAR2(40 BYTE) 
, RESIDENCE_TIN3 VARCHAR2(40 BYTE) 
, RESIDENCE_TIN4 VARCHAR2(40 BYTE) 
, EMPLOYER VARCHAR2(40 BYTE) 
, EMPLOYER_ADDRESS1 VARCHAR2(40 BYTE) 
, EMPLOYER_ADDRESS2 VARCHAR2(40 BYTE) 
, WORK_PHONE VARCHAR2(12 BYTE) 
, OCCUPATION_CODE VARCHAR2(3 BYTE) 
, RESIDENCY_CODE NUMBER(3, 0) 
, MOTHER_MAIDEN_NAME VARCHAR2(20 BYTE) NOT NULL 
, NO_OF_DEPENDENTS NUMBER(2, 0) 
, INCOME_CODE VARCHAR2(3 BYTE) 
, EDUCATION_CODE VARCHAR2(4 BYTE) 
, SHAREHOLDER_CODE VARCHAR2(4 BYTE) 
, HOME_OWNERSHIP VARCHAR2(1 BYTE) 
, STREET_TYPE VARCHAR2(2 BYTE) 
, MONTHLY_SALARY NUMBER(12, 2) 
, EMPLOYER_CITY VARCHAR2(20 BYTE) 
, MARITAL_STATUS VARCHAR2(2 BYTE) NOT NULL 
, CREATED_BY VARCHAR2(60 BYTE) NOT NULL 
, CREATION_DATE DATE NOT NULL 
, LAST_UPDATED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_UPDATE_DATE DATE NOT NULL 
, OBJECT_VERSION_ID NUMBER(15, 0) NOT NULL 
, LAST_APPROVED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_APPROVED_DATE DATE NOT NULL 
, CONSTRAINT LINCU_MEMBER_KYC_PK PRIMARY KEY 
  (
    LINCU_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LINCU_MEMBER_KYC_PK ON LINCU_MEMBER_KYC (LINCU_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE LINCU_MEMBER_KYC
ADD CONSTRAINT LINCU_MEMBER_KYC_FK_1 FOREIGN KEY
(
  CREDIT_UNION_ID 
, CREDIT_UNION_BRANCH_ID 
)
REFERENCES CREDIT_UNION_BRANCH
(
  CREDIT_UNION_ID 
, CREDIT_UNION_BRANCH_ID 
)
ENABLE;

ALTER TABLE LINCU_MEMBER_KYC
ADD CONSTRAINT LINCU_MEMBER_KYC_FK_2 FOREIGN KEY
(
  LINCU_ID 
)
REFERENCES LINCU_MEMBER_INFO
(
  LINCU_ID 
)
ENABLE;
-----------------------------------------------------------------
DROP TABLE LINCU_MEMBER_KYC_AUDIT;
CREATE TABLE LINCU_MEMBER_KYC_AUDIT 
(
  LINCU_ID VARCHAR2(20 BYTE) NOT NULL 
, MEMBER_ID VARCHAR2(15 BYTE) NOT NULL 
, CREDIT_UNION_ID VARCHAR2(10 BYTE) NOT NULL 
, CREDIT_UNION_BRANCH_ID VARCHAR2(10 BYTE) NOT NULL 
, ELECTORIAL_ID VARCHAR2(11 BYTE) NOT NULL 
, DRIVER_PERMIT VARCHAR2(11 BYTE) NOT NULL 
, DP_ISSUE_DATE DATE 
, DP_EXPIRY_DATE DATE 
, PASSPORT_NO VARCHAR2(11 BYTE) NOT NULL 
, PP_ISSUE_DATE DATE 
, PP_EXPIRY_DATE DATE 
, BIR_NO VARCHAR2(11 BYTE) NOT NULL 
, PERMANENT_ADDR_LINE1 VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_ADDR_LINE2 VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_ADDR_LINE3 VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_ADDR_LINE4 VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_CITY VARCHAR2(40 BYTE) NOT NULL 
, PERMANENT_STATE VARCHAR2(2 BYTE) NOT NULL 
, PERMANENT_ZIP_CODE VARCHAR2(10 BYTE) NOT NULL 
, PERMANENT_COUNTRY_CODE VARCHAR2(2 BYTE) NOT NULL 
, PERMANENT_COUNTRY_DESC VARCHAR2(40 BYTE) NOT NULL 
, MAILING_ADDR_LINE1 VARCHAR2(40 BYTE) NOT NULL 
, MAILING_ADDR_LINE2 VARCHAR2(40 BYTE) NOT NULL 
, MAILING_ADDR_LINE3 VARCHAR2(40 BYTE) NOT NULL 
, MAILING_ADDR_LINE4 VARCHAR2(40 BYTE) NOT NULL 
, MAILING_CITY VARCHAR2(40 BYTE) NOT NULL 
, MAILING_STATE VARCHAR2(2 BYTE) NOT NULL 
, MAILING_ZIP_CODE VARCHAR2(10 BYTE) NOT NULL 
, MAILING_COUNTRY_CODE VARCHAR2(2 BYTE) NOT NULL 
, BIRTH_COUNTRY_CODE VARCHAR2(2 BYTE) NOT NULL 
, BIRTH_COUNTRY_DESC VARCHAR2(40 BYTE) NOT NULL 
, LOCAL_TAX_EXEMPT VARCHAR2(1 BYTE) NOT NULL 
, NATIONALITY VARCHAR2(2 BYTE) NOT NULL 
, ELIGIBLE_FOREIGN_TAX VARCHAR2(1 BYTE) NOT NULL 
, DOC_FOREIGN_TAX_EXEMPT VARCHAR2(1 BYTE) NOT NULL 
, FOREIGN_CITIZENSHIP VARCHAR2(1 BYTE) NOT NULL 
, POWER_OF_ATTORNEY VARCHAR2(1 BYTE) NOT NULL 
, CITIZEN_SHIP_COUNTRY1 VARCHAR2(2 BYTE) 
, CITIZEN_SHIP_COUNTRY2 VARCHAR2(2 BYTE) 
, CITIZEN_SHIP_COUNTRY3 VARCHAR2(2 BYTE) 
, CITIZEN_SHIP_COUNTRY4 VARCHAR2(2 BYTE) 
, RESIDENCE_TIN1 VARCHAR2(40 BYTE) 
, RESIDENCE_TIN2 VARCHAR2(40 BYTE) 
, RESIDENCE_TIN3 VARCHAR2(40 BYTE) 
, RESIDENCE_TIN4 VARCHAR2(40 BYTE) 
, EMPLOYER VARCHAR2(40 BYTE) 
, EMPLOYER_ADDRESS1 VARCHAR2(40 BYTE) 
, EMPLOYER_ADDRESS2 VARCHAR2(40 BYTE) 
, WORK_PHONE VARCHAR2(12 BYTE) 
, OCCUPATION_CODE VARCHAR2(3 BYTE) 
, RESIDENCY_CODE NUMBER(3, 0) 
, MOTHER_MAIDEN_NAME VARCHAR2(20 BYTE) NOT NULL 
, NO_OF_DEPENDENTS NUMBER(2, 0) 
, INCOME_CODE VARCHAR2(3 BYTE) 
, EDUCATION_CODE VARCHAR2(4 BYTE) 
, SHAREHOLDER_CODE VARCHAR2(4 BYTE) 
, HOME_OWNERSHIP VARCHAR2(1 BYTE) 
, STREET_TYPE VARCHAR2(2 BYTE) 
, MONTHLY_SALARY NUMBER(12, 2) 
, EMPLOYER_CITY VARCHAR2(20 BYTE) 
, MARITAL_STATUS VARCHAR2(2 BYTE) NOT NULL 
, UPDATED_BY VARCHAR2(60 BYTE) NOT NULL 
, UPDATE_DATE DATE NOT NULL 
, OBJECT_VERSION_ID NUMBER(15, 0) NOT NULL 
, LINCU_AUDIT_ID NUMBER NOT NULL 
, CONSTRAINT LINCU_MEMBER_KYC_AUDIT_PK PRIMARY KEY 
  (
    LINCU_AUDIT_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LINCU_MEMBER_KYC_AUDIT_PK ON LINCU_MEMBER_KYC_AUDIT (LINCU_AUDIT_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE LINCU_MEMBER_KYC_AUDIT
ADD CONSTRAINT LINCU_MEMBER_KYC_AUDIT_FK1 FOREIGN KEY
(
  LINCU_ID 
)
REFERENCES LINCU_MEMBER_KYC
(
  LINCU_ID 
)
ENABLE;
-----------------------------------------------------------------------
DROP TABLE LINCU_MEMBER_CARD;
CREATE TABLE LINCU_MEMBER_CARD 
(
  CARD_ID NUMBER NOT NULL 
, LINCU_ID VARCHAR2(10 BYTE) NOT NULL 
, MEMBER_ID VARCHAR2(15 BYTE) NOT NULL 
, MEMBER_CARD_TYPE VARCHAR2(1 BYTE) NOT NULL 
, ISSUE_DATE TIMESTAMP(6) NOT NULL 
, CARD_REQ_TYPE VARCHAR2(20 BYTE) NOT NULL 
, CONSTRAINT LINCU_MEMBER_CARD_PK PRIMARY KEY 
  (
    CARD_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LINCU_MEMBER_CARD_PK ON LINCU_MEMBER_CARD (CARD_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE LINCU_MEMBER_CARD
ADD CONSTRAINT LINCU_MEMBER_CARD_FK1 FOREIGN KEY
(
  LINCU_ID 
)
REFERENCES LINCU_MEMBER_INFO
(
  LINCU_ID 
)
ENABLE;

ALTER TABLE LINCU_MEMBER_CARD
ADD CONSTRAINT LINCU_MEMBER_CARD_FK2 FOREIGN KEY
(
  LINCU_ID 
)
REFERENCES LINCU_MEMBER_KYC
(
  LINCU_ID 
)
ENABLE;
--------------------------------------------------------------
DROP TABLE LINCU_MEMBER_CARD_AUDIT;
CREATE TABLE LINCU_MEMBER_CARD_AUDIT 
(
  CARD_ID NUMBER NOT NULL 
, LINCU_ID VARCHAR2(10 BYTE) NOT NULL 
, MEMBER_ID VARCHAR2(15 BYTE) NOT NULL 
, MEMBER_CARD_TYPE VARCHAR2(1 BYTE) NOT NULL 
, ISSUE_DATE TIMESTAMP(6) NOT NULL 
, CARD_REQ_TYPE VARCHAR2(20 BYTE) NOT NULL 
, CARD_AUDIT_ID NUMBER NOT NULL 
, UPDATED_BY VARCHAR2(20 BYTE) NOT NULL 
, UPDATED_DATE DATE 
, CONSTRAINT LINCU_MEMBER_CARD_AUDIT_PK PRIMARY KEY 
  (
    CARD_AUDIT_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LINCU_MEMBER_CARD_AUDIT_PK ON LINCU_MEMBER_CARD_AUDIT (CARD_AUDIT_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE LINCU_MEMBER_CARD_AUDIT
ADD CONSTRAINT LINCU_MEMBER_CARD_AUDIT_FK1 FOREIGN KEY
(
  CARD_ID 
)
REFERENCES LINCU_MEMBER_CARD
(
  CARD_ID 
)
ENABLE;
----------------------------------------------------------------------------
DROP TABLE LINCU_ROLES;
CREATE TABLE LINCU_ROLES 
(
  ROLE_ID NUMBER NOT NULL 
, ROLE VARCHAR2(20 BYTE) NOT NULL 
, ROLE_DESCRIPTION VARCHAR2(100 BYTE) NOT NULL 
, CONSTRAINT LINCU_ROLES_PK PRIMARY KEY 
  (
    ROLE_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LINCU_USER_ROLES_PK ON LINCU_ROLES (ROLE_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE LINCU_ROLES
ADD CONSTRAINT LINCU_ROLES_UK1 UNIQUE 
(
  ROLE 
)
USING INDEX 
(
    CREATE UNIQUE INDEX LINCU_USER_ROLES_UK1 ON LINCU_ROLES (ROLE ASC) 
    LOGGING 
    TABLESPACE LINCU 
    PCTFREE 10 
    INITRANS 2 
    STORAGE 
    ( 
      INITIAL 65536 
      NEXT 65536 
      MINEXTENTS 1 
      MAXEXTENTS UNLIMITED 
      PCTINCREASE 0 
      BUFFER_POOL DEFAULT 
    ) 
    NOPARALLEL 
)
 ENABLE;
-------------------------------------------------------------
DROP TABLE LINCU_USER_INFO;
CREATE TABLE LINCU_USER_INFO 
(
  USER_ID NUMBER(15, 0) NOT NULL 
, FIRST_NAME VARCHAR2(30 BYTE) 
, LAST_NAME VARCHAR2(30 BYTE) 
, CREDIT_UNION_ID VARCHAR2(10 BYTE) NOT NULL 
, CREDIT_UNION_BRANCH_ID VARCHAR2(10 BYTE) NOT NULL 
, USER_TYPE_CODE VARCHAR2(30 BYTE) NOT NULL
, USER_ROLE VARCHAR2(30 BYTE) NOT NULL 
, USER_SUPERVISOR VARCHAR2(30 BYTE)
, EMAIL VARCHAR2(25 BYTE) NOT NULL 
, MOBILE_PHONE_NUMBER VARCHAR2(20 BYTE) 
, DATE_OF_BIRTH DATE 
, GENDER VARCHAR2(1 BYTE) NOT NULL 
, CREATED_BY VARCHAR2(60 BYTE) NOT NULL 
, CREATION_DATE DATE NOT NULL 
, LAST_UPDATED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_UPDATE_DATE DATE NOT NULL 
, OBJECT_VERSION_ID NUMBER(15, 0) NOT NULL 
, LAST_APPROVED_BY VARCHAR2(60 BYTE) NOT NULL 
, LAST_APPROVED_DATE DATE NOT NULL 
, PASSWORD VARCHAR2(30 BYTE) NOT NULL 
, USER_NAME VARCHAR2(50 BYTE) NOT NULL 
, CONSTRAINT LINCU_USER_INFO_PK PRIMARY KEY 
  (
    USER_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LINCU_USER_INFO_PK ON LINCU_USER_INFO (USER_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE LINCU_USER_INFO
ADD CONSTRAINT LINCU_USER_INFO_UK1 UNIQUE 
(
  USER_ID 
, CREDIT_UNION_ID 
, CREDIT_UNION_BRANCH_ID 
)
USING INDEX 
(
    CREATE UNIQUE INDEX LINCU_USER_INFO_UK1 ON LINCU_USER_INFO (USER_ID ASC, CREDIT_UNION_ID ASC, CREDIT_UNION_BRANCH_ID ASC) 
    LOGGING 
    TABLESPACE LINCU 
    PCTFREE 10 
    INITRANS 2 
    STORAGE 
    ( 
      INITIAL 65536 
      NEXT 65536 
      MINEXTENTS 1 
      MAXEXTENTS UNLIMITED 
      PCTINCREASE 0 
      BUFFER_POOL DEFAULT 
    ) 
    NOPARALLEL 
)
 ENABLE;

ALTER TABLE LINCU_USER_INFO
ADD CONSTRAINT LINCU_USER_INFO_FK_1 FOREIGN KEY
(
  CREDIT_UNION_ID 
, CREDIT_UNION_BRANCH_ID 
)
REFERENCES CREDIT_UNION_BRANCH
(
  CREDIT_UNION_ID 
, CREDIT_UNION_BRANCH_ID 
)
ENABLE;

ALTER TABLE LINCU_USER_INFO
ADD CONSTRAINT USER_GENDER_CHK CHECK 
(GENDER in ('M','F'))
ENABLE;
-----------------------------------------------------------
DROP TABLE LINCU_USER_ROLES;
CREATE TABLE LINCU_USER_ROLES 
(
  USER_ROLE_ID NUMBER NOT NULL 
, ROLE_ID NUMBER 
, USER_ID NUMBER(15, 0) 
, CONSTRAINT LINCU_USER_ROLES_PK PRIMARY KEY 
  (
    USER_ROLE_ID 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX LINCU_USER_ROLES_PK1 ON LINCU_USER_ROLES (USER_ROLE_ID ASC) 
      LOGGING 
      TABLESPACE LINCU 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 65536 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        PCTINCREASE 0 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE LINCU 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 65536 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  PCTINCREASE 0 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

ALTER TABLE LINCU_USER_ROLES
ADD CONSTRAINT LINCU_USER_ROLES_UK1 UNIQUE 
(
  ROLE_ID 
, USER_ID 
)
USING INDEX 
(
    CREATE UNIQUE INDEX LINCU_USER_ROLES_UK2 ON LINCU_USER_ROLES (ROLE_ID ASC, USER_ID ASC) 
    LOGGING 
    TABLESPACE LINCU 
    PCTFREE 10 
    INITRANS 2 
    STORAGE 
    ( 
      INITIAL 65536 
      NEXT 65536 
      MINEXTENTS 1 
      MAXEXTENTS UNLIMITED 
      PCTINCREASE 0 
      BUFFER_POOL DEFAULT 
    ) 
    NOPARALLEL 
)
 ENABLE;

ALTER TABLE LINCU_USER_ROLES
ADD CONSTRAINT LINCU_USER_ROLES_FK1 FOREIGN KEY
(
  ROLE_ID 
)
REFERENCES LINCU_ROLES
(
  ROLE_ID 
)
ENABLE;

ALTER TABLE LINCU_USER_ROLES
ADD CONSTRAINT LINCU_USER_ROLES_FK2 FOREIGN KEY
(
  USER_ID 
)
REFERENCES LINCU_USER_INFO
(
  USER_ID 
)
ENABLE;
---------------------CREDIT_UNIION_ID_SEQ------------------------------
CREATE SEQUENCE CREDIT_UNIION_ID_SEQ INCREMENT BY 1 START WITH 1 MAXVALUE 99999999999999999999999999999999999999999999999999999999999999999 MINVALUE 1;

---------------------------------------------
DROP TABLE COUNTRY_CODES;
CREATE TABLE COUNTRY_CODES 
(
  COUNTRY_ID VARCHAR2(20) NOT NULL 
, COUNTRY_NAME VARCHAR2(100) NOT NULL
, CONSTRAINT COUNTRY_CODES_PK PRIMARY KEY 
  (
    COUNTRY_ID 
  )
  ENABLE 
);

ALTER TABLE COUNTRY_CODES
ADD CONSTRAINT COUNTRY_CODES_UK1 UNIQUE 
(
  COUNTRY_NAME 
)
ENABLE;
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('1', 'TRINIDAD & TOBAGO')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('14', 'GRENADA, ST. VINCENT AND ST. LUCIA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('19', 'OTHER CARIFTA COUNTRY')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('33', 'BAHAMAS AND CAYMAN ISLANDS')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('39', 'OTHER COMMONWEALTH')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('49', 'OTHER COUNTRIES')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('99', 'NO DECLARATION OF RESIDENCE')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('100', 'AFGHANISTAN')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('101', 'ALBANIA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('102', 'ALGERIA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('103', 'ANGOLA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('104', 'ANGUILLA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('105', 'ANTIGUA-BARBUDA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('106', 'ARGENTINA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('107', 'ARUBA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('108', 'ASCENSION')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('109', 'AUSTRALIA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('110', 'AUSTRIA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('111', 'BAHAMAS')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('112', 'BAHRAIN')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('113', 'BANGLADESH')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('114', 'BARBADOS')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('115', 'BELGIUM')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('116', 'BELIZE')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('117', 'BERMUDA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('118', 'BOLIVIA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('119', 'BOSNIA AND HERZEGOVINA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('120', 'BOTSWANA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('121', 'BRAZIL')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('122', 'BRITISH VIRGIN ISLANDS')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('123', 'BULGARIA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('124', 'BURKINA FASO')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('125', 'BURUNDI')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('126', 'CAMEROON')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('127', 'CANADA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('128', 'CARICOM')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('129', 'CAYMAN ISLANDS')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('130', 'CHAD')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('131', 'CHILE')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('132', 'CHINA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('133', 'COLOMBIA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('134', 'CONGO')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('135', 'CONGO,THE DEMOCRATIC REPUBLIC')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('136', 'COSTA RICA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('137', 'CÔTE D''IVOIRE')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('138', 'CROATIA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('139', 'CUBA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('140', 'CYPRUS')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('141', 'CZECH REPUBLIC')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('142', 'DENMARK')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('143', 'DOMINICA')
INSERT INTO "LINCUDB"."COUNTRY_CODES" (COUNTRY_ID, COUNTRY_NAME) VALUES ('144', 'DOMINICAN REPUBLIC')

----------------------------------------CREDIT_UNION_BRANCH_ID_SEQ-------------------------------------------------------------------------
CREATE SEQUENCE CREDIT_UNION_BRANCH_ID_SEQ INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;
----------------------------------------USER_ID_SEQ----------------------------------------------------------------------------
CREATE SEQUENCE USER_ID_SEQ INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;
--------------------------------------------LINCU_LOOKUPS----------------------------------------
CREATE TABLE LINCU_LOOKUPS 
(
  LOOKUP_ID NUMBER NOT NULL 
, LOOKUP_TYPE VARCHAR2(30) 
, LOOKUP_CODE VARCHAR2(30) 
, LOOKUP_DESC VARCHAR2(250) 
, CONSTRAINT LINCU_LOOKUPS_PK PRIMARY KEY 
  (
    LOOKUP_ID 
  )
  ENABLE 
);

ALTER TABLE LINCU_LOOKUPS
ADD CONSTRAINT LINCU_LOOKUPS_UK1 UNIQUE 
(
  LOOKUP_TYPE 
, LOOKUP_CODE 
)
ENABLE;

INSERT INTO "LINCUDB"."LINCU_LOOKUPS" (LOOKUP_ID, LOOKUP_TYPE, LOOKUP_CODE, LOOKUP_DESC) VALUES ('1', 'USER_TYPE_CODE', 'LINCU', 'LinCu');
INSERT INTO "LINCUDB"."LINCU_LOOKUPS" (LOOKUP_ID, LOOKUP_TYPE, LOOKUP_CODE, LOOKUP_DESC) VALUES ('2', 'USER_TYPE_CODE', 'FCB', 'FCB');
