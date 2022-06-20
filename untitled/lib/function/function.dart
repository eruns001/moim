
import 'package:untitled/data/data.dart';

///SearchPage
List<String> setPositionList(Role) {
  List<String> PositionList = positionNullList;
  switch(Role){
    case "모든역할":
      PositionList= positionNullList;
      break;
    case "SW 개발":
      PositionList= positionDeveloperList;
      break;
    case "기획/PM/운영":
      PositionList= positionPlannerList;
      break;
    case "마케팅":
      PositionList= positionMarketingList;
      break;
    case "일러스트/디자인":
      PositionList = positionDesignerList;
      break;
    case "영상/인터넷 방송":
      PositionList = positionVideoList;
      break;
    case "음악":
      PositionList = positionMusicList;
      break;
  }
  return PositionList;
}
