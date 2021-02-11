# Jenkins Practice

1. t2.xlarge EC2 생성
2. Jenkins, Docker 설치
3. Plugin 설치
4. Docker 권한 설정
5. Study
6. 삭제

### 환경변수 관리
1. Jenkins Credential에 등록
2. pipeline에서 호출

```
environment {
    KOOZZIKOOZZI = credentials('DATABASE_PASSWORD')
}

sh 'docker run -tid -p 8000:8000 -e PASSWORD=$KOOZZIKOOZZI study-koozzi'
```