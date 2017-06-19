CREATE TABLE JQUERY_BOARD(POST_ID VARCHAR(50) NOT NULL,TITLE VARCHAR(50) NOT NULL,CONTENTS VARCHAR(255) NULL,REG_ID VARCHAR(50) NULL,REG_DATE VARCHAR(10) NULL,COMMUNITY_ID VARCHAR(50) NOT NULL,CONSTRAINT PK_JQUERY_BOARD PRIMARY KEY(POST_ID));
CREATE TABLE JQUERY_CATEGORY(CATEGORY_ID VARCHAR(50) NOT NULL,CATEGORY_NAME VARCHAR(50) NOT NULL,CATEGORY_DESC VARCHAR(100) NULL,REG_DATE VARCHAR(10) NULL,CONSTRAINT PK_JQUERY_CATEGORY PRIMARY KEY(CATEGORY_ID));
CREATE TABLE JQUERY_COMMUNITY(COMMUNITY_ID VARCHAR(50) NOT NULL,COMMUNITY_NAME VARCHAR(50) NOT NULL,COMMUNITY_DESC VARCHAR(100) NULL,CATEGORY_ID VARCHAR(50) NULL,REG_ID VARCHAR(50) NULL,REG_DATE VARCHAR(10) NULL,CONSTRAINT PK_JQUERY_COMMUNITY PRIMARY KEY(COMMUNITY_ID),CONSTRAINT FK_JQUERY_CATEGORY FOREIGN KEY(CATEGORY_ID) REFERENCES JQUERY_CATEGORY(CATEGORY_ID));
CREATE TABLE JQUERY_ATTACHED(ID VARCHAR(50) NOT NULL,NAME VARCHAR(255),FILE_SIZE NUMERIC(15),REF_ID VARCHAR(50) NOT NULL,CONSTRAINT PK_JQUERY_ATTACHED PRIMARY KEY(ID));

INSERT INTO JQUERY_BOARD VALUES('POST-00001','프로젝트 회식','프로젝트 회식있습니다.날짜와 시간은 이영미씨가 공지예정.','hong80','2009/12/25','COMMUNITY-0005');
INSERT INTO JQUERY_BOARD VALUES('POST-00002','FLEX 사용해보신분','FLEX 기본적인 사용방법 좀 알려주세요.','dongnam','2009/12/25','COMMUNITY-0004');
INSERT INTO JQUERY_BOARD VALUES('POST-00004','JavaScript와 DHTML','JavaScript와 DHTML의 세계에 오신것을 환영합니다.','chulsoo','2009/12/25','COMMUNITY-0035');
INSERT INTO JQUERY_BOARD VALUES('POST-00005','SQL인스트럭션','모든 SQL인스트럭션의 용어를 열거합니다.','sooni','2009/12/25','COMMUNITY-0002');
INSERT INTO JQUERY_BOARD VALUES('POST-00006','DB 테이블에 관한 질문입니다.','제가 한 테이블에 모든게시판의 리스트를 넣어놨습니다..','hong80','2009/12/25','COMMUNITY-0002');
INSERT INTO JQUERY_BOARD VALUES('POST-00007','SEAM이 표준?','SEAM과 JSR-299와는 어떤 관계가 있을까요?.','hong80','2009/12/25','COMMUNITY-0005');
INSERT INTO JQUERY_BOARD VALUES('POST-00009','동기모임에 데이터 추가','추가한 데이터가 정산적으로 DB에 저장되는지 확인 합니다.','hong80','2009/12/25','COMMUNITY-0018');
INSERT INTO JQUERY_BOARD VALUES('POST-00011','언제 정모하나요?','언제 정모?','test','2009/12/25','COMMUNITY-0015');
INSERT INTO JQUERY_BOARD VALUES('POST-00012','동기모임','동기야 반갑다','hong80','2009/12/25','COMMUNITY-0018');
INSERT INTO JQUERY_BOARD VALUES('POST-00013','SNSD','소시 팬카페','hong80','2009/12/25','COMMUNITY-0002');
INSERT INTO JQUERY_BOARD VALUES('POST-00017','구성주유소','젤 쌉니다.','hong80','2009/12/25','COMMUNITY-0010');
INSERT INTO JQUERY_BOARD VALUES('POST-00018','프리미어 리그 따라하기','따라할 수 있을까?','test','2009/12/25','COMMUNITY-0017');
INSERT INTO JQUERY_BOARD VALUES('POST-00019','수정 후 재 조회','수정 후 재 조회를 하는것이 맞는 것인가?','hong80','2009/12/25','COMMUNITY-0004');
INSERT INTO JQUERY_BOARD VALUES('POST-00020','유행','유행','hong80','2009/12/25','COMMUNITY-0018');
INSERT INTO JQUERY_BOARD VALUES('POST-00021','크록스','크록스 메리제인','hong80','2009/12/25','COMMUNITY-0017');
INSERT INTO JQUERY_BOARD VALUES('POST-00022','애니카와 프로미','애니카와 프로미중 누가 더 좋을까요?','hong80','2009/12/25','COMMUNITY-0008');
INSERT INTO JQUERY_BOARD VALUES('POST-00023','트랜스포머','범블비와 옵티머스 조립해요','hong80','2009/12/25','COMMUNITY-0018');
INSERT INTO JQUERY_BOARD VALUES('POST-00024','토익공부','토익1등급 받을 수 있어요.','hong80','2009/12/11','COMMUNITY-0018');
INSERT INTO JQUERY_BOARD VALUES('POST-00025','컴퓨터 조립 가장 싸게','용산보다 쌉니다.','hong80','2009/12/25','COMMUNITY-0019');
INSERT INTO JQUERY_BOARD VALUES('POST-10041','망치질 하기','망치질은 내손으로','test','2010/01/14','COMMUNITY-0020');
INSERT INTO JQUERY_BOARD VALUES('POST-10046','2010년 탄천 청소하기','올해에는 매주 토요일에 진행 됩니다.','test','2010/01/14','COMMUNITY-0014');
INSERT INTO JQUERY_BOARD VALUES('POST-10047','탄천에 쓰레기 버리시는 분','벌금이 부과될 수 있으니 주의 바랍니다.','test','2010/01/12','COMMUNITY-0014');
INSERT INTO JQUERY_BOARD VALUES('POST-10048','탄천 지키기','탄천을 지킵시다','test','2010/01/14','COMMUNITY-0014');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-0001','컴퓨터','컴퓨터에 관련된 커뮤니티들이 모여있습니다.','2009/12/25');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-0002','자동차','자동차에 관련된 커뮤니티들이 모여 있습니다.','2009/12/25');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-0003','스포츠','스포츠에 관련된 커뮤니티들이 모여 있습니다.','2009/12/25');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-0004','친목','친목에 관련된 커뮤니티들이 모여 있습니다.','2009/12/25');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-0005','취미','취미에 관련된 커뮤니티들이 모여 있습니다.','2009/12/25');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-0006','봉사','봉사에 관련된 커뮤니티들이 모여 있습니다.','2009/12/08');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1021','핸드폰','핸드폰에 관련된 커뮤니티들이 모여 있습니다.','2010/01/07');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1022','부동산','부동산에 관련된 커뮤니티들이 모여 있습니다.','2010/01/13');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1023','등산','등산에 관련된 커뮤니티들이 모여 있습니다.','2010/01/13');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1024','레포츠','레포츠에 관련된 커뮤니티들이 모여 있습니다.','2010/01/13');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1025','재테크','재테크에 관련된 커뮤니티들이 모여 있습니다.','2010/01/13');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1026','영화','영화에 관련된 커뮤니티들이 모여 있습니다.','2010/01/13');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1027','꽃','꽃에 관련된 커뮤니티들이 모여 있습니다.','2010/01/12');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1028','로보트','로보트에 관련된 커뮤니티들이 모여 있습니다.','2010/01/13');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1029','맛집','맛집에 관련된 커뮤니티들이 모여 있습니다.','2010/01/07');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1030','애완동물','애완동물에 관련된 커뮤니티들이 모여 있습니다.','2010/01/15');
INSERT INTO JQUERY_CATEGORY VALUES('CATEGORY-1031','국내여행','국내여행에 관련된 커뮤니티들이 모여 있습니다.','2010/01/22');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0002','THE PRACTICAL SQL','SQL 학습을 위한 커뮤니티입니다.','CATEGORY-0001','bowman','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0003','HTML CSS 자바스크립트','HTML CSS  자바스크립트 개발을 위한 커뮤니티입니다.','CATEGORY-0001','subman','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0004','FLEX 쉽게 배워보기','FLEX개발과 실무에 대한 의견을 나누는 커뮤니티입니다.','CATEGORY-0001','zoon73','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0005','Spring Framework 사용자 모임','Spring Framework 사용자 모임입니다.','CATEGORY-0001','howrock','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0006','SM3 같이 타요','SM3 차량 정보를 공유하고 친목을 동호하기 위한 커뮤니티입니다.','CATEGORY-0002','minminmin','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0007','중고차 비싸게 팔고 싸게 사기','중고차 매매 정보를 공유하는 커뮤니티입니다.','CATEGORY-0002','urobba','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0008','자동차 보험에 대한 모든 것','자동차 보험에 대한 모든 정보가 있습니다.','CATEGORY-0002','whatsub','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0009','혼자서 자동차 고치지','자동차 정비 관련 정보를 나눠요.','CATEGORY-0002','bigblue','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0010','넌 어느 주유소에서 기름 넣니?','전국 주유소 기름값 정보를 공유 할 수 있습니다.','CATEGORY-0002','babopack','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0011','자가용 함께 타기','고유가 시대에 카플을 원하시는 분들을 위한 모임입니다.','CATEGORY-0002','eugene','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0012','컴퓨터 만들기','컴퓨터 조립해서 써요~','CATEGORY-0001','hong80','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0013','MLB 매니아','MLB 매니아','CATEGORY-0003','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0014','탄천 환경 정화','탄천을 깨끗하게','CATEGORY-0006','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0015','농활','농촌 봉사활동','CATEGORY-0006','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0017','K리그 봐요','K리그에 관심이 있는 분들이면 누구나 환영합니다.','CATEGORY-0003','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0018','동기모임','동기야 반갑다.','CATEGORY-0004','hong80','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0019','컴퓨터 도우미','컴퓨터 공부를 도와드립니다.','CATEGORY-0006','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0020','목공 나들이','책상을 내손으로 만들어 쓸 수 있습니다.','CATEGORY-0005','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0021','아이폰 쉽게 사용하기','아이폰을 처음 사용하시는 분들의 정보를 공유합니다.','CATEGORY-1021','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0022','아이폰 App. 개발자 모임','아이폰 App 개발자 모입니다.','CATEGORY-1021','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0023','안드로이드','구글 안드로이드에 관심 있으신 분 환영합니다.','CATEGORY-1021','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0024','핸드폰 튜닝','핸드폰 튜닝에 관심 있으신 분은 가입해 주세요','CATEGORY-1021','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0025','로보트 프라모델 조립','프라모델 조립에 관심 있으신 분들 정보 공유해요','CATEGORY-1028','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0026','전투로봇 개발','전투 로봇 개발에 참여 하실분 모집합니다.','CATEGORY-1028','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0027','고양이 뽐내기','고양이 미용에 관심 있으신 분 환영','CATEGORY-1030','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0028','아지아지 강아지','강아지를 잘 키우는 정보 공유해요. ','CATEGORY-1030',NULL,NULL);
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0029','우리 고양이 네로','고양이 분양 커뮤니티입니다.','CATEGORY-1030',NULL,NULL);
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0030','원예','원예에 관심 있으신 분 환영해요','CATEGORY-1027','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0031','영화 같이 보기','혼자서 영화 보기 싫으신 분 같이 봐요','CATEGORY-1026','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0032','최신 디비디 정보','최신 디비디 정보 같이 공유해요','CATEGORY-1026','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0033','영화 평점','영화 평점 주기','CATEGORY-1026','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0034','명화 같이 보기','일주일에 한번 명화를 골라 같이 보는 커뮤니티입니다.','CATEGORY-1026','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0035','주식왕 되기','주식왕이 되기 위한 커뮤니티입니다.','CATEGORY-1025','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0036','부동산 투자 나도 할 수 있다.','부동산 투자에 대한 정보 공유해요','CATEGORY-1025','test','2010/01/15');
INSERT INTO JQUERY_COMMUNITY VALUES('COMMUNITY-0037','1년에 일억 모으기','일년에 일억 모으는 노하우 전수','CATEGORY-1025','test','2010/01/15');

commit;