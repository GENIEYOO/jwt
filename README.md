## 1.scaffold로 만들어진 jbuilder사용하기

rails new test_app --api : 미들웨어가 날아간 상태로 세팅됨.



## 2.render방식을 json으로 하기



## 3.1+2



{user_id:1}

=>토큰화

### 크롬익스텐션 포스트맨 => json data 확인 가능

[참고](http://bcho.tistory.com/999)이미 유저가 있는 상태) > email,  pw를 입력받음 > 서버로 전송> jwt 을 받아서 저장(login)

저장된 jwt을 서버로 전송 > 서버는 현재 요청을 보낸 client가 누구인지 파악(authenticate)



------------------

에러

DB못받아 오는 문제

puts @post로 찍어보기.

찍어봐서 나오면 코드가 틀린거고 안나오면 DB를 못받아옴.



파일 위치 잘 확인하기!

모델을 concerns에 넣었음.

검색할 때 쳐서 검색하지 말고 선택하고 복사해서 검색하는 것이 좋다.