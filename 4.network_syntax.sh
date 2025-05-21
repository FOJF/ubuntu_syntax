# 프로세스 목록조회
ps -ef
ps -ef | grep "nginx"

# 패키지 관련
# yum : 레드햇 계열
# apt , apt-get: 데비안 계열

# 패키지 목록 최신화
sudo apt update

# 패키지 설치
apt install 패키지명

# 프로그램 실행관리 도구 : systemctl
sudo systemctl stop 유닛명
sudo systemctl start 유닛명

# 프로세스 강제 종료
kill -9 프로세스ID

# 네트워크 관련한 명령어
# 로컬 ip 정보 조회
ifconfig

# 특정 도메인의 ip 정보 주소 조회
nslookup 도메인

# 네트워크 연결 상태 확인
ping ip주소

# ip와 포트를 이용해, 특정 프로그램의 이용 가능 상태까지 조회
telnet ip주소 포트번호
nc -zv ip주소 포트번호 # netcat

# 원격 접속 : 22번 포트
ssh username@도메인(또는 ip주소)

# 원격파일전송 : 22번 포트
scp 전송하려는파일 원격지주소

