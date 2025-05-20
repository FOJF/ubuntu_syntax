# 현재 위치 경로를 출력
pwd

# 현재 위치에서 파일 및 폴더 조회
ls

# 목록 조회 자세히
ls -l

# 목록 조회 자세히, 숨김 파일까지
ls -al

# 목록 조회 자세히, 숨김 파일, 오래된 순으로 정렬 all, list, revert, time
ls -alrt

# 목록 조회 자세히, 숨김 파일, 최신 순으로 정렬
ls -alt

# 현재 디렉토리 생성 make directory
mkdir

# 특정 디렉토리로 이동
cd home/jjw/jjw_dir #상대경로
cd /home/jjw/jjw_dir #절대경로

# 상위 디렉토리로 이동
cd ..

# 루트(최상위 디렉토리) 디렉토리로 이동
cd /

# 직전 폴더로 이동
cd -

# 홈(아래 본인 계정) 경로로 이동
cd 

# 상대 경로와 절대 경로
# 상대 경로 : cd ../../ (내 위치를 기준으로)
# 절대 경로 : cd /home (어떤 위치에서든 똑같은 폴더로 이동)
# /로 시작하는 지 여부

# 비어있는 파일 만들기
touch 파일명

# 파일 내용 조회해 터미널에 출력
cat 파일명

# 파일 내용 상위 10개 조회해서 터미널에 출력
head 파일명

# 파일 내용 하위 10개 조회해서 터미널에 출력
tail 파일명

# 파일 내용 상/하위 n개 조회해서 터미널에 출력
head -n 파일명
tail -n 파일명

# 파일내용 실시간 조회 -> 중요
tail -f 파일명

# 파일 내용 편집기 : nano, vi

# 방향키 위, 아래를 통해 이전 명령어들 조회 가능

# Control + C를 통해 입력하던 명령어 취소

# 이전에 실행했던 모든 명령어 조회
history

# 터미널 창 깔끔하게
clear

# 파일 삭제 명령어
rm 파일명

# 폴더 째로 삭제(폴더와 하위 폴더 및 파일들)

rm -r 폴더명

# 내용 입력 (문장 뒤에 아무것도 없으면 터미널에 그대로 출력)
echo "Hello World"

# echo를 활용해 파일에 내용 덮어쓰기
echo "Hello World" > 파일명

# echo를 활용해 파일에 내용 이어쓰기
echo "Hello World" >> 파일명

# 복사
# 복사 복사대상 복사될 파일명
# 폴더 복사시에는 -r 을 옵션으로
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt

# grep : 파일 내에서 문자열 찾기
# r: 모든 디렉토리 내, n:찾은 문자열이 포함된 줄이 몇번인지, i:대소문자 구분 없이 찾기
grep "hello"
grep -rni 찾을문자열 폴더명

# find : 이름으로 파일 또는 디렉토리 찾기
# *을 활용하여 무엇으로 시작하는지, 무엇으로 끝나는지(확장자 같은경우)로 찾기 가능
find 폴더명 -name 찾고싶은파일또는디렉토리명
find 폴더명 -type f # 파일을 찾겠다.!

# grep과 find 혼용 방법 예시
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file인 파일중에 이름은 first로 시작하고 그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾기
find . -name "first*" -type f | xargs grep -rni "hello"
find . -name "first*" -type f -exec grep -rni "hello" {} \;