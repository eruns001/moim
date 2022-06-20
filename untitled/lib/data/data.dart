
//radius
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ColorsForApp{
  ColorsForApp._();

  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color textFieldBack = Color(0xffF1F1F1);
  static const Color bolder = Color(0xffc4c4c4);
  static const Color buttonTextColor = Color(0xff696969);
  static const Color hintTextColor = Color(0xffc3c3c3);
  static const Color narrationText = Color(0xff797979);
  static const Color selectedItemColor = Color(0xff1F78E1);
}

List<BottomNavigationBarItem>  bottomNavigationBarIconList = [
  const BottomNavigationBarItem(
    icon: Icon(
        Icons.home,
    ),
    label: '홈',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.notifications_active),
    label: '알림',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.people),
    label: '내 모임',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: '프로필',
  ),
];



///List
//시, 도
final List<String> addressList = ["서울특별시","부산광역시", "대구광역시", "인천광역시", "광주광역시", "대전광역시", "울산광역시"
  , "세종특별자치시", "경기도", "강원도", "충청북도", "충청남도", "전라북도", "전라남도", "경상북도", "경상남도", "제주특별자치도"];
final List<String> searchAddressList = ["모든지역", "서울특별시","부산광역시", "대구광역시", "인천광역시", "광주광역시", "대전광역시", "울산광역시"
  , "세종특별자치시", "경기도", "강원도", "충청북도", "충청남도", "전라북도", "전라남도", "경상북도", "경상남도", "제주특별자치도"];
//역활
final List<String> roleList = ["SW 개발", "기획/PM/운영", "마케팅", "일러스트/디자인", "영상/인터넷 방송", "음악"];
final List<String> searchRoleList = ["모든역할", "SW 개발", "기획/PM/운영", "마케팅", "일러스트/디자인", "영상/인터넷 방송", "음악"];
//분야
final List<String> positionDeveloperList = ["모든분야", "서버/백엔드", "프론트엔드", "웹 풀스택", "안드로이드 앱", "아이폰 앱", "머신러닝"
  , "인공지능(AI)", "데이터 엔지니어", "모바일 게임", "게임 클라이언트", "게임 서비", "시스템/네트워크", "시스템 소프트웨어"
  , "인터넷 보안", "QA", "사물인터넷(IoT)", "응용 프로그램", "블록체인", "HW 개발"];
final List<String> positionPlannerList = ["모든분야", "사업기획", "서비스기획", "프로젝트관리", "서비스 운영", "고객관리", "데이터분석", "인사"];
final List<String> positionMarketingList = ["모든분야", "온라인 마케팅", "콘텐츠 마케팅", "디지털 마케팅", "소셜 마케팅", "바이럴 마케팅", "브랜드 마케팅"];
final List<String> positionDesignerList = ["모든분야", "게임 원화", "3D 디자인", "앱 디자인", "웹 디자인", "애니메이터", "웹툰 작가", "어시스턴트"];
final List<String> positionVideoList = ["모든분야", "BJ/스트리머", "유튜버", "편집자"];
final List<String> positionMusicList = ["모든분야", "작곡/프로듀서", "믹싱 엔지니어", "마스터링 엔지니어", "싱어송라이터", "작사가", "보컬/랩", "악기"];
final List<String> positionNullList = ["모든분야"];
List<String> positionList = positionNullList;

//url
String imageUrl = 'https://firebasestorage.googleapis.com/v0/b/harmonics-sports.appspot.com/o/camera-plus.png?alt=media&token=4e96866d-7065-46ea-80b5-3d74c703c18a';
// 'https://arca.live/static/assets/images/empty_ad_sidebar.png?t=571409a2ba31abec0b8e02da23becbec35862f1b';
String basicImageUrl = 'https://firebasestorage.googleapis.com/v0/b/harmonics-sports.appspot.com/o/camera-plus.png?alt=media&token=4e96866d-7065-46ea-80b5-3d74c703c18a';

