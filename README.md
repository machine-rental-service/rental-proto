# 공공데이터 해커톤 프로젝트 repository입니다
---------


## spring boot 세팅 
- [x] 기본 세팅 (https://www.youtube.com/watch?v=L-Fve3OWhYE 보고 sts로 했습니다 저도기억안나서) 
- [x] 포트 8081
- [x] JSP view엔진 (rental\src\main\webapp\WEB-INF\jsp 하위에 자유롭게 만들어주세요)
- [x] JPA + Mysql (현재 로컬에서 동작, **MySQL 8.0 이상이여아합니다**)

### 개발 테스트시 변경해주셔야할 곳 (DB URL, USERNAME, PASSWORD)
1. rental/src/main/resources/application.yml 에서 
 datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: "jdbc:mysql://localhost:3307/world?characterEncoding=UTF-8&serverTimezone=UTC"
    username: root
    password: 1234 

예시 "jdbc:mysql://localhost:(본인MYSQL전용포트번호)/(MYSQL에 있는 개발용 DB이름)?characterEncoding=UTF-8&serverTimezone=UTC"


----------------
## 헤로쿠 세팅int
- [ ] mysql 설치
- [ ] jsp 호환성 테스트
- [ ] 고유 포트번호 확인
