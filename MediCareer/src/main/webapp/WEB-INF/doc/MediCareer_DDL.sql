--ALTER TABLE BOARD_IMAGE DROP CONSTRAINT FK_BOARD_NO;
--DROP TABLE BOARD;
--DROP TABLE BOARD_IMAGE;
--ALTER TABLE PROFILE_IMAGE DROP CONSTRAINT FK_CM_NO;
--DROP TABLE COMMON_MEMBER;
--DROP TABLE PROFILE_IMAGE;
--ALTER TABLE LOGO_IMAGE DROP CONSTRAINT FK_EM_NO;
--DROP TABLE LOGO_IMAGE;
--DROP TABLE ENTERPRISE_MEMBER;

--일반 멤버 테이블 생성
CREATE TABLE COMMON_MEMBER(
    CM_NO NUMBER NOT NULL,
    CM_NAME VARCHAR2(30) NOT NULL,
    CM_NICKNAME VARCHAR2(30) NOT NULL,
    CM_EMAIL VARCHAR2(40) NOT NULL,
    CM_PASSWORD VARCHAR2(20) NOT NULL,
    CM_JOIN_DATE DATE NOT NULL
);

--일반 멤버 테이블 논리명 지정
COMMENT ON TABLE COMMON_MEMBER IS '일반 회원 정보';

COMMENT ON COLUMN COMMON_MEMBER.CM_NO IS '일반 회원 식별번호';
COMMENT ON COLUMN COMMON_MEMBER.CM_NAME IS '일반 회원 이름';
COMMENT ON COLUMN COMMON_MEMBER.CM_NICKNAME IS '일반 회원 별명';
COMMENT ON COLUMN COMMON_MEMBER.CM_EMAIL IS '일반 회원 이메일';
COMMENT ON COLUMN COMMON_MEMBER.CM_PASSWORD IS '일반 회원 비밀번호';
COMMENT ON COLUMN COMMON_MEMBER.CM_JOIN_DATE IS '일반 회원 가입일';

--일반 멤버 테이블 기본 키 설정(회원 식별번호)
ALTER TABLE COMMON_MEMBER
ADD CONSTRAINT CM_NO_PK PRIMARY KEY(CM_NO);

--일반 멤버 테이블 유니크 키 설정(회원 별명)
ALTER TABLE COMMON_MEMBER
ADD CONSTRAINT CM_NICKNAME_UK UNIQUE(CM_NICKNAME);

--일반 멤버 테이블 유니크 키 설정(회원 이메일)
ALTER TABLE COMMON_MEMBER
ADD CONSTRAINT CM_EMAIL_UK UNIQUE(CM_EMAIL);

--일반 멤버 테이블 식별번호에 쓰일 시퀀스 생성
CREATE SEQUENCE CM_NO_SEQ
INCREMENT BY 1
START WITH 1;

--=====================================================

--프로필 이미지 테이블 생성
CREATE TABLE PROFILE_IMAGE(
    PI_INDEX NUMBER NOT NULL,
    PI_ORIGINAL_FILE_NAME VARCHAR2(300) NOT NULL,
    PI_AFTER_FILE_NAME VARCHAR2(36) NOT NULL,
    PI_FILE_SIZE NUMBER NOT NULL,
    PI_UPLOAD_DATE DATE,
    CM_NO NUMBER NOT NULL
);

--프로필 이미지 테이블 논리명 지정
COMMENT ON TABLE PROFILE_IMAGE IS '프로필 이미지';

COMMENT ON COLUMN PROFILE_IMAGE.PI_INDEX IS '프로필 이미지 색인';
COMMENT ON COLUMN PROFILE_IMAGE.PI_ORIGINAL_FILE_NAME IS '프로필 이미지 원본 이름';
COMMENT ON COLUMN PROFILE_IMAGE.PI_AFTER_FILE_NAME IS '프로필 이미지 저장된 파일 이름';
COMMENT ON COLUMN PROFILE_IMAGE.PI_FILE_SIZE IS '프로필 이미지 파일 크기';
COMMENT ON COLUMN PROFILE_IMAGE.PI_UPLOAD_DATE IS '프로필 이미지 파일 업로드일';

--프로필 이미지 테이블 기본 키 설정(프로필 이미지 색인)
ALTER TABLE PROFILE_IMAGE
ADD CONSTRAINT PI_INDEX_PK PRIMARY KEY(PI_INDEX);

--프로필 이미지 테이블 외래키 지정(일반 회원 식별번호)
ALTER TABLE PROFILE_IMAGE
ADD CONSTRAINT FK_CM_PI
FOREIGN KEY (CM_NO)
REFERENCES COMMON_MEMBER (CM_NO);

--프로필 이미지 테이블 식별번호에 쓰일 시퀀스 생성
CREATE SEQUENCE PI_INDEX_SEQ
INCREMENT BY 1
START WITH 1;

--=====================================================

--기업 멤버 테이블 생성
CREATE TABLE ENTERPRISE_MEMBER(
    EM_NO NUMBER NOT NULL,
    EM_BRN VARCHAR2(15) NOT NULL,
    EM_COMPANY_NAME VARCHAR2(30) NOT NULL,
    EM_CEO_NAME VARCHAR2(30) NOT NULL,
    EM_ADDRESS VARCHAR2(90) NOT NULL,
    EM_REP VARCHAR2(39) NOT NULL,
    EM_EMAIL VARCHAR2(40) NOT NULL,
    EM_PASSWORD VARCHAR2(20) NOT NULL,
    EM_JOIN_DATE DATE NOT NULL
);

--기업 멤버 테이블 논리명 지정
COMMENT ON TABLE ENTERPRISE_MEMBER IS '기업 회원 정보';

COMMENT ON COLUMN ENTERPRISE_MEMBER.EM_NO IS '기업 회원 식별번호';
COMMENT ON COLUMN ENTERPRISE_MEMBER.EM_BRN IS '기업 회원 사업자등록번호';
COMMENT ON COLUMN ENTERPRISE_MEMBER.EM_COMPANY_NAME IS '기업 회원 회사명';
COMMENT ON COLUMN ENTERPRISE_MEMBER.EM_CEO_NAME IS '기업 회원 대표자';
COMMENT ON COLUMN ENTERPRISE_MEMBER.EM_ADDRESS IS '기업 회원 회사 주소';
COMMENT ON COLUMN ENTERPRISE_MEMBER.EM_REP IS '기업 회원 대표 전화번호';
COMMENT ON COLUMN ENTERPRISE_MEMBER.EM_EMAIL IS '기업 회원 이메일';
COMMENT ON COLUMN ENTERPRISE_MEMBER.EM_PASSWORD IS '기업 회원 비밀번호';
COMMENT ON COLUMN ENTERPRISE_MEMBER.EM_JOIN_DATE IS '기업 회원 가입일';

--기업 멤버 테이블 기본 키 설정(회원 식별번호)
ALTER TABLE ENTERPRISE_MEMBER
ADD CONSTRAINT EM_NO_PK PRIMARY KEY(EM_NO);

--기업 멤버 테이블 유니크 키 설정(회원 이메일)
ALTER TABLE ENTERPRISE_MEMBER
ADD CONSTRAINT EM_EMAIL_UK UNIQUE(EM_EMAIL);

--기업 멤버 테이블 식별번호에 쓰일 시퀀스 생성
CREATE SEQUENCE EM_NO_SEQ
INCREMENT BY 1
START WITH 1;

--=====================================================

--로고 이미지 테이블 생성
CREATE TABLE LOGO_IMAGE(
    LI_INDEX NUMBER NOT NULL,
    LI_ORIGINAL_FILE_NAME VARCHAR2(300) NOT NULL,
    LI_AFTER_FILE_NAME VARCHAR2(36) NOT NULL,
    LI_FILE_SIZE NUMBER NOT NULL,
    LI_UPLOAD_DATE DATE,
    EM_NO NUMBER NOT NULL
);

--로고 이미지 테이블 논리명 지정
COMMENT ON TABLE LOGO_IMAGE IS '로고 이미지';

COMMENT ON COLUMN LOGO_IMAGE.LI_INDEX IS '로고 이미지 색인';
COMMENT ON COLUMN LOGO_IMAGE.LI_ORIGINAL_FILE_NAME IS '로고 이미지 원본 이름';
COMMENT ON COLUMN LOGO_IMAGE.LI_AFTER_FILE_NAME IS '로고 이미지 저장된 파일 이름';
COMMENT ON COLUMN LOGO_IMAGE.LI_FILE_SIZE IS '로고 이미지 파일 크기';
COMMENT ON COLUMN LOGO_IMAGE.LI_UPLOAD_DATE IS '로고 이미지 파일 업로드일';

--로고 이미지 테이블 기본 키 설정(회원 식별번호)
ALTER TABLE LOGO_IMAGE
ADD CONSTRAINT LI_INDEX_PK PRIMARY KEY(LI_INDEX);

--로고 이미지 테이블 외래키 지정(MEMBER_NO)
ALTER TABLE LOGO_IMAGE
ADD CONSTRAINT FK_CM_LI
FOREIGN KEY (EM_NO)
REFERENCES ENTERPRISE_MEMBER (EM_NO);

--로고 이미지 테이블 식별번호에 쓰일 시퀀스 생성
CREATE SEQUENCE LI_INDEX_SEQ
INCREMENT BY 1
START WITH 1;

--=====================================================

--게시판 테이블 생성
CREATE TABLE BOARD(
    BOARD_NO NUMBER NOT NULL,
    BOARD_WRITER VARCHAR2(30) NOT NULL,
    BOARD_TITLE VARCHAR2(60) NOT NULL,
    BOARD_CONTENT VARCHAR2(3000) NOT NULL,
    BOARD_VIEW_COUNT NUMBER NOT NULL,
    BOARD_RECOMMEND NUMBER NOT NULL,
    BOARD_WRITE_DATE DATE NOT NULL,
    CM_NO NUMBER NOT NULL
);

--게시판 테이블 논리명 지정
COMMENT ON TABLE BOARD IS '게시판';

COMMENT ON COLUMN BOARD.BOARD_NO IS '게시글 식별번호';
COMMENT ON COLUMN BOARD.BOARD_WRITER IS '게시글 작성자';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '게시글 제목';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '게시글 내용';
COMMENT ON COLUMN BOARD.BOARD_VIEW_COUNT IS '게시글 조회수';
COMMENT ON COLUMN BOARD.BOARD_RECOMMEND IS '게시글 추천수';
COMMENT ON COLUMN BOARD.BOARD_WRITE_DATE IS '게시글 작성일';

--게시판 테이블 기본 키 설정(회원 식별번호)
ALTER TABLE BOARD
ADD CONSTRAINT BOARD_NO_PK PRIMARY KEY(BOARD_NO);

--게시판 테이블 외래키 지정(일반 회원 식별번호)
ALTER TABLE BOARD
ADD CONSTRAINT FK_CM_BOARD
FOREIGN KEY (CM_NO)
REFERENCES COMMON_MEMBER (CM_NO);

--게시판 테이블 식별번호에 쓰일 시퀀스 생성
CREATE SEQUENCE BOARD_NO_SEQ
INCREMENT BY 1
START WITH 1;

--=====================================================

--게시글 이미지 테이블 생성
CREATE TABLE BOARD_IMAGE(
    BI_INDEX NUMBER NOT NULL,
    BI_ORIGINAL_FILE_NAME VARCHAR2(300) NOT NULL,
    BI_AFTER_FILE_NAME VARCHAR2(36) NOT NULL,
    BI_FILE_SIZE NUMBER NOT NULL,
    BI_UPLOAD_DATE DATE,
    BOARD_NO NUMBER NOT NULL
);

--게시글 이미지 테이블 논리명 지정
COMMENT ON TABLE BOARD_IMAGE IS '게시글 이미지';

COMMENT ON COLUMN BOARD_IMAGE.BI_INDEX IS '게시글 이미지 색인';
COMMENT ON COLUMN BOARD_IMAGE.BI_ORIGINAL_FILE_NAME IS '게시글 이미지 원본 이름';
COMMENT ON COLUMN BOARD_IMAGE.BI_AFTER_FILE_NAME IS '게시글 이미지 저장된 파일 이름';
COMMENT ON COLUMN BOARD_IMAGE.BI_FILE_SIZE IS '게시글 이미지 파일 크기';
COMMENT ON COLUMN BOARD_IMAGE.BI_UPLOAD_DATE IS '게시글 이미지 파일 업로드일';

--게시글 이미지 테이블 기본 키 설정(게시글 식별번호)
ALTER TABLE BOARD_IMAGE
ADD CONSTRAINT BI_INDEX_PK PRIMARY KEY(BI_INDEX);

--게시글 이미지 테이블 외래키 지정(게시글 식별번호)
ALTER TABLE BOARD_IMAGE
ADD CONSTRAINT FK_BOARD_BI
FOREIGN KEY (BOARD_NO)
REFERENCES BOARD (BOARD_NO);

--게시글 이미지 테이블 식별번호에 쓰일 시퀀스 생성
CREATE SEQUENCE BI_INDEX_SEQ
INCREMENT BY 1
START WITH 1;

--=====================================================

--이력서 테이블 생성
CREATE TABLE RESUME(
    RESUME_NO NUMBER NOT NULL,
    NAME VARCHAR2(30),
    CAREER_STATUS VARCHAR2(15),
    DESIRE_ANNUAL_SALARY VARCHAR2(30),
    GENDER VARCHAR2(30),
    BIRTH_DATE DATE,
    PHONE_NUMBER VARCHAR2(39),
    EMAIL VARCHAR2(90),
    ADDRESS VARCHAR2(90),
    FINAL_ACADEMIC_BACKGROUND VARCHAR2(30),
    EDUCATIONAL_INSTITUTE VARCHAR2(90),
    MAJOR VARCHAR2(60),
    GRADUATION_STATUS VARCHAR2(12),
    ENTRANCE_DATE DATE,
    GRADUATION_DATE DATE,
    LICENSE_NAME VARCHAR2(90),
    LICENSE_ISSUING_AGENCY VARCHAR2(90),
    LICENSE_PASSING_DATE DATE,
    SELF_INTRODUCTION VARCHAR2(3000),
    CM_NO NUMBER
);

--이력서 테이블 논리명 지정
COMMENT ON TABLE RESUME IS '이력서';

COMMENT ON COLUMN RESUME.RESUME_NO IS '이력서 식별번호';
COMMENT ON COLUMN RESUME.NAME IS '이름';
COMMENT ON COLUMN RESUME.CAREER_STATUS IS '경력 여부';
COMMENT ON COLUMN RESUME.DESIRE_ANNUAL_SALARY IS '희망 연봉';
COMMENT ON COLUMN RESUME.GENDER IS '성별';
COMMENT ON COLUMN RESUME.BIRTH_DATE IS '생년월일';
COMMENT ON COLUMN RESUME.PHONE_NUMBER IS '전화번호';
COMMENT ON COLUMN RESUME.EMAIL IS '이메일';
COMMENT ON COLUMN RESUME.ADDRESS IS '주소';
COMMENT ON COLUMN RESUME.FINAL_ACADEMIC_BACKGROUND IS '최종학력';
COMMENT ON COLUMN RESUME.EDUCATIONAL_INSTITUTE IS '교육기관';
COMMENT ON COLUMN RESUME.MAJOR IS '전공';
COMMENT ON COLUMN RESUME.GRADUATION_STATUS IS '졸업 여부';
COMMENT ON COLUMN RESUME.ENTRANCE_DATE IS '입학년월';
COMMENT ON COLUMN RESUME.GRADUATION_DATE IS '졸업년월';
COMMENT ON COLUMN RESUME.LICENSE_NAME IS '자격증 이름';
COMMENT ON COLUMN RESUME.LICENSE_ISSUING_AGENCY IS '자격증 발행기관';
COMMENT ON COLUMN RESUME.LICENSE_PASSING_DATE IS '자격증 합격일';
COMMENT ON COLUMN RESUME.SELF_INTRODUCTION IS '자기소개';

--이력서 테이블 기본 키 설정(게시글 식별번호)
ALTER TABLE RESUME
ADD CONSTRAINT RESUME_NO_PK PRIMARY KEY(RESUME_NO);

--이력서 테이블 외래키 지정(게시글 식별번호)
ALTER TABLE RESUME
ADD CONSTRAINT FK_CM_RESUME
FOREIGN KEY (CM_NO)
REFERENCES COMMON_MEMBER (CM_NO);

--이력서 테이블 식별번호에 쓰일 시퀀스 생성
CREATE SEQUENCE RESUME_NO_SEQ
INCREMENT BY 1
START WITH 1;