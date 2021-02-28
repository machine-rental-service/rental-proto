# 공공데이터 해커톤 프로젝트 "공공장비 온라인센터"의 repository입니다
2020공공데이터 청년인턴십 해커톤 대상(서비스트랙)
- presentation video: https://youtu.be/0CWuCquWNDI
reference material: [발표자료.ppt](https://github.com/machine-rental-service/rental-proto/blob/dev/%EB%B3%B8%EC%84%A0_%EA%B3%B5%EA%B3%B5%EC%9E%A5%EB%B9%84%EC%98%A8%EB%9D%BC%EC%9D%B8%EC%84%BC%ED%84%B0_%EB%B0%9C%ED%91%9C%EC%9E%90%EB%A3%8C.pdf)
https://www.data.go.kr/의 전국농기계임대정보표준데이터, 서울시 공구도서관 등의 공공데이터로, 전국 어디에서나 공공장비 임대를 온라인으로 신청가능한 서비스를 만들었습니다.

---------
## 업무 분담🖥
- 이소담sodaMelon: 개발 총괄 지도, 일반인 장비 대여 시스템 개발
- 김지연delllay: 공무원모드 대여 승인/반려 시스템 개발 및 전체적인 UI 구축
- 김수빈soobin1080: 공무원모드 대여 조회 / 일반인 본인 장비현황조회 시스템 개발 및 전체적인 UI 구축, 로고디자인
- 이영석lysuk96: 장비대여 프로토타입 UI 개발 및 PPT 제작
- 심경은 : 공공데이터 분석 및 서비스 기획 
- 이영서 : QA 총괄, 배너 디자인, 카피라이팅


### spring boot 세팅 
- [x] 기본 세팅 (https://www.youtube.com/watch?v=L-Fve3OWhYE 보고 sts로 했습니다 저도기억안나서) 
- [x] 포트 8081
- [x] JSP view엔진 (rental\src\main\webapp\WEB-INF\jsp 하위에 자유롭게 만들어주세요)
- [x] JPA + Mysql (현재 로컬에서 동작, **MySQL 8.0 이상이여아합니다**)

#### 개발 테스트시 변경해주셔야할 곳 (DB URL, USERNAME, PASSWORD)
1. rental/src/main/resources/application.yml 에서 
```
datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: "jdbc:mysql://localhost:3307/(테스트할 DB주소)"
    username: root (테스트할 DB계정 ID)
    password: 1234 (테스트할 DB계정 비밀번호)
```

예시 "jdbc:mysql://localhost:(본인MYSQL전용포트번호)/(MYSQL에 있는 개발용 DB이름)?characterEncoding=UTF-8&serverTimezone=UTC"


