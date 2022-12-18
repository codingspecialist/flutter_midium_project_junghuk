-> name => nickname 그림 변경

-> 로긴, 조인 앱바 삭제 (디자인 변경)

-> 종 지우고, 일월 작성시간 지우고!! (메인페이지)

->  ProfileDetailPage -> ProfileUpdatePage

->  종 클릭하면 로그아웃 페이지로 !! - 종을 다른 아이콘으로 변경

-> 홈페이지 삭제

-> 데일리, 비지니스

-> 포스트 디테일 페이지 (appbar달고, 좋아요 아이콘 달고, 삭제)

-> { 유저정보, my글 리스트, visit글 리스트, isSubscribe = true, isMy = false}

-> 유어 라이브러리 탭 삭제 (좋아요 누른 것만)

-> 프로필페이지 (내가쓴글(my), 방문한글(visit)) -> PostView ListView로 달기
메인페이지(일상글(daily), 비지니스글(business)

Postview - 메서드 배경화면 검은색으로 바꾸기

-> 전체 패딩

-> 회원수정페이지

-> 게시글 등록할 때 일상인지 비즈니스있지 체크박스 추가

```dart
Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtherProfilePage(dailyPosts[index].),
                    ),
                  );
```