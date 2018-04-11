create table FREE_BOARD
(
    BOARD_NUM NUMBER NOT NULL,
    BOARD_NAME VARCHAR2(100) NOT NULL,
    BOARD_SUBJECT VARCHAR2(200) NOT NULL,
    BOARD_CONTENT VARCHAR2(4000) NOT NULL,
    BOARD_COUNT NUMBER NOT NULL,
    BOARD_DATE DATE NOT NULL,
    CONSTRAINT FREE_BNUM_PK PRIMARY KEY (BOARD_NUM)
)

--No	Column 명	한글명 	자료형	NULL	Key	비고 / 설명			
--1	BOARD_NUM	글번호	NUMBER	N	PK				
--2	BOARD_NAME	작성자	VARCHAR2(100)	N					
--3	BOARD_SUBJECT	글제목	VARCHAR2(200)	N					
--4	BOARD_CONTENT	글내용	VARCHAR2(4000)	N					
--5	BOARD_COUNT	조회수	NUMBER	N					
--6	BOARD_DATE	작성날짜	DATE	N		

insert into FREE_BOARD values((select nvl(max(BOARD_NUM) + 1, 1) from FREE_BOARD), 'admin', '게시글'||
(select nvl(max(BOARD_NUM) + 1, 1) from FREE_BOARD), '본문...', 0, sysdate)

select * from FREE_BOARD

create table FREE_BOARD_REPLY
(
    REPLY_NUM NUMBER NOT NULL,
    RELPY_LEVEL NUMBER NOT NULL,
    RELPY_NAME VARCHAR2(100) NOT NULL,
    RELPY_CONTENT VARCHAR2(300) NOT NULL,
    REPLY_DATE DATE NOT NULL,
    CONSTRAINT FREE_RNUM_FK FOREIGN KEY(REPLY_NUM) REFERENCES FREE_BOARD(BOARD_NUM)
)
-- Table 명		FREE_BOARD_REPLY							
--No	Column 명	한글명 	자료형	NULL	Key	비고 / 설명			
--1	REPLY_NUM	리플넘버	NUMBER	N	FK(BOARD_NUM)	리플이 달린 게시판넘버			
--2	RELPY_LEVEL	리플레벨	NUMBER	N		리플의 작성순서(1부터 시작 댓글달때 리플 순서대로 표시)			
--3	RELPY_NAME	리플작성자	VARCHAR2(100)	N		리플의 작성자			
--4	RELPY_CONTENT	리플내용	VARCHAR2(300)	N		리플의 내용			
--5	REPLY_DATE	작성날짜	DATE	N		리플 날짜

insert into FREE_BOARD_REPLY values(1, 1, 'user11', '게시글1의 댓글..', sysdate)
insert into FREE_BOARD_REPLY values(1, 2, 'user12', '게시글1의 댓글..', sysdate)
insert into FREE_BOARD_REPLY values(1, 3, 'user13', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 4, 'user14', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 5, 'user15', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 6, 'user16', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 7, 'user17', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 8, 'user18', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 9, 'user19', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 10, 'user20', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 11, 'user21', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 12, 'user22', '게시글1의 댓글..', sysdate);
insert into FREE_BOARD_REPLY values(1, 13, 'user23', '게시글1의 댓글..', sysdate);

select * from FREE_BOARD_REPLY

select * from REPLY_VIEW;

create table QNA_BOARD
(
    BOARD_NUM NUMBER NOT NULL,
    BOARD_NAME VARCHAR2(100) NOT NULL,
    BOARD_SUBJECT VARCHAR2(200) NOT NULL,
    BOARD_CONTENT VARCHAR2(4000) NOT NULL,
    BOARD_COUNT NUMBER NOT NULL,
    BOARD_DATE DATE NOT NULL,
    BOARD_TYPE VARCHAR2(100) NOT NULL,
    BOARD_PHOTO VARCHAR2(200) NOT NULL,
    CONSTRAINT QNA_BNUM_PK PRIMARY KEY (BOARD_NUM)
)

-- Table 명		QNA_BOARD							
--No	Column 명	한글명 	자료형	NULL	Key	비고 / 설명			
--1	BOARD_NUM	글번호	NUMBER	N	PK	게시글번호			
--2	BOARD_NAME	작성자	VARCHAR2(100)	N					
--3	BOARD_SUBJECT	글제목	VARCHAR2(200)	N					
--4	BOARD_CONTENT	글내용	VARCHAR2(4000)	N					
--5	BOARD_COUNT	조회수	NUMBER	N		조회수 0이 미처리글 운영자가 처리하고 답변완료를 누를시 1로 변함			
--6	BOARD_DATE	작성날짜	DATE	N					
--7	BOARD_TYPE	질문분류	VARCHAR2(100)	N		문의 종류(대분류로 나눈다 . 신고, 건의, 환불탈퇴)			
--8	BOARD_PHOTO	사진파일이름	VARCHAR2(200)	N	디폴트 NONE	사진파일이름(확장자 포함) ,NONE일경우 사진파일이 등록안된경우			

create table QNA_BOARD_REPLY
(
    REPLY_NUM NUMBER NOT NULL,
    RELPY_NAME NUMBER NOT NULL,
    REPLY_SUBJECT VARCHAR2(100) NOT NULL,
    RELPY_CONTENT VARCHAR2(300) NOT NULL,
    REPLY_DATE DATE NOT NULL,
    CONSTRAINT QNA_RNUM_FK FOREIGN KEY(REPLY_NUM) REFERENCES QNA_BOARD(BOARD_NUM)
)

-- Table 명		QNA_BOARD_REPLY							
--No	Column 명	한글명 	자료형	NULL	Key	비고 / 설명			
--1	REPLY_NUM	글번호	NUMBER	N	FK(BOARD_NUM)				
--2	RELPY_NAME	작성자	VARCHAR2(100)	N					
--3	REPLY_SUBJECT	글제목	VARCHAR2(200)	N					
--4	REPLY_CONTENT	글내용	VARCHAR2(4000)	N					
--5	REPLY_DATE	작성날짜	DATE	N					

create table RESEARCH_BOARD
(
    BOARD_NUM NUMBER NOT NULL,
    BOARD_NAME VARCHAR2(100) NOT NULL,
    BOARD_SUBJECT VARCHAR2(200) NOT NULL,
    BOARD_CONTENT VARCHAR2(4000) NOT NULL,
    BOARD_COUNT NUMBER NOT NULL,
    BOARD_DATE DATE NOT NULL,
    CONSTRAINT RESEARCH_BNUM_PK PRIMARY KEY (BOARD_NUM)
)

--Table 명		RESEARCH_BOARD							
--No	Column 명	한글명 	자료형	NULL	Key	비고 / 설명			
--1	BOARD_NUM	글번호	NUMBER	N	PK				
--2	BOARD_NAME	작성자	VARCHAR2(100)	N					
--3	BOARD_SUBJECT	글제목	VARCHAR2(200)	N					
--4	BOARD_CONTENT	글내용	VARCHAR2(4000)	N					
--5	BOARD_COUNT	조회수	NUMBER	N					
--6	BOARD_DATE	작성날짜	DATE	N					
									
create table RESEARCH_REPLY
(
    REPLY_NUM NUMBER NOT NULL,
    RELPY_LEVEL NUMBER NOT NULL,
    RELPY_NAME VARCHAR2(100) NOT NULL,
    RELPY_CONTENT VARCHAR2(300) NOT NULL,
    REPLY_DATE DATE NOT NULL,
    CONSTRAINT RESEARCH_RNUM_FK FOREIGN KEY(REPLY_NUM) REFERENCES RESEARCH_BOARD(BOARD_NUM)
)	

 --Table 명		RESEARCH_REPLY							
--No	Column 명	한글명 	자료형	NULL	Key	비고 / 설명			
--1	REPLY_NUM	리플넘버	NUMBER	N	FK(BOARD_NUM)	리플이 달린 게시판넘버			
--2	RELPY_LEVEL	리플레벨	NUMBER	N		리플의 작성순서(1부터 시작 댓글달때 리플 순서대로 표시)			
--3	RELPY_NAME	리플작성자	VARCHAR2(100)	N		리플의 작성자			
--4	RELPY_CONTENT	리플내용	VARCHAR2(300)	N		리플의 내용			
--5	REPLY_DATE	작성날짜	DATE	N		리플 날짜	

