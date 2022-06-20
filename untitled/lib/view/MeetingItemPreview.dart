import 'package:flutter/material.dart';
import 'package:untitled/class/ClassMeetingItemPreview.dart';

class MeetingItemPreview extends StatefulWidget {

  final MeetingItemPreviewItem testParameter;
  const MeetingItemPreview ({ Key? key, required this.testParameter }): super(key: key);
  @override
  _meetingItemPreview createState() => _meetingItemPreview();
}

class _meetingItemPreview extends State<MeetingItemPreview> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 90,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        border: Border.all(
            color: const Color(0xffc4c4c4),
            width: 1
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(5)
        ),
        boxShadow: [BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0,2),
            blurRadius: 4,
            spreadRadius: 0
        )] ,
      ),
      child: Stack(children: [
        /// MeetingItemPreviewItem.imageUrl
        PositionedDirectional(
          top: 0,
          start: 0,
          child:
          Container(
              width: 90,
              height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(5)
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.network("https://lh3.googleusercontent.com/a-/AOh14Gi-U111ZiN8RkIZpRWlMAZxO8-IoxCcVNKfBfkn40U=s288-p-rw-no"),
            ),
          ),
        ),
        // 시간을 낚는 사람들
        PositionedDirectional(
          top: 8,
          start: 98,
          child:Row(
            children: [
              // Container(
              //   child: Image("images/splash_screen.png"),
              // ),
              Text(
                  //"시간을 낚는 사람들"
                  widget.testParameter.tag,
                  style: TextStyle(
                      color:  Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontFamily: "NotoSansKR",
                      fontStyle:  FontStyle.normal,
                      fontSize: 14.0
                  ),
                  textAlign: TextAlign.center
              ),
            ],
          )
        ),
        /// MeetingItemPreviewItem.numberOfPeople
        PositionedDirectional(
          top: 52,
          start: 98,
          child: Row(
            children: const [
              Icon(
                Icons.people,
                size: 14,
              ),
              Text(
                  "12",
                  style: TextStyle(
                      color:  Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontFamily: "NotoSansKR",
                      fontStyle:  FontStyle.normal,
                      fontSize: 10.0
                  ),
                  textAlign: TextAlign.center
              ),
            ],
          )
        ),
        // 주 1회 모임
        PositionedDirectional(
          top: 68,
          start: 98,
          child:
          Row(
            children: const [
              // Icon(
              //   Icons.calen
              // ),
              Text(
                  "주 1회 모임",
                  style: TextStyle(
                      color:  Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontFamily: "NotoSansKR",
                      fontStyle:  FontStyle.normal,
                      fontSize: 10.0
                  ),
                  textAlign: TextAlign.left
              ),
            ],
          )
        ),
        /// MeetingItemPreviewItem.tag
        PositionedDirectional(
          top: 8,
          start: 341,
          child:
          Container(
              width: 33,
              height: 20,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(3)
                  ),
                  color: Color(0xff1363ac)
              ),
            child: const Center(
              child: Text(
                  MeetingItemTag.fishing,
                  style: TextStyle(
                      color:  Color(0xffffffff),
                      fontWeight: FontWeight.w500,
                      fontFamily: "NotoSansKR",
                      fontStyle:  FontStyle.normal,
                      fontSize: 8.0
                  ),
                  textAlign: TextAlign.center
              ),
            )
          ),
        ),
        /// MeetingItemPreviewItem.location
        PositionedDirectional(
          top: 36,
          start: 98,
          child: Row(
            children: const [
              Icon(
                Icons.location_on_outlined,
                size: 14,
              ),
              Text(
                  "부산 부산진구 ",
                  style: TextStyle(
                      color:  Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontFamily: "NotoSansKR",
                      fontStyle:  FontStyle.normal,
                      fontSize: 10.0
                  ),
                  textAlign: TextAlign.left
              ),
            ],
          )
        ),
        // group
        PositionedDirectional(
          top: 53,
          start: 98,
          child:
          Stack(children: [
            // Vector
            PositionedDirectional(
              top: 0,
              start: 0,
              child:
              Container(
                  width: 12,
                  height: 12
              ),
            ),
            // Vector
            PositionedDirectional(
              top: 2.5,
              start: 0.5,
              child:
              Container(
                  width: 11,
                  height: 7,
                  decoration: BoxDecoration(
                      color: const Color(0xff121212)
                  )
              ),
            )
          ]),
        ),
        // 13,000원
        PositionedDirectional(
          top: 62,
          start: 317,
          child:
          Text(
              "13,000원",
              style: const TextStyle(
                  color:  const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "NotoSansKR",
                  fontStyle:  FontStyle.normal,
                  fontSize: 14.0
              ),
              textAlign: TextAlign.right
          ),
        ),
        // 매월
        PositionedDirectional(
          top: 64,
          start: 290,
          child:
          Text(
              "매월",
              style: const TextStyle(
                  color:  const Color(0xff696969),
                  fontWeight: FontWeight.w500,
                  fontFamily: "NotoSansKR",
                  fontStyle:  FontStyle.normal,
                  fontSize: 12.0
              ),
              textAlign: TextAlign.right
          ),
        ),
        // Group 48
        PositionedDirectional(
          top: 6,
          start: 98,
          child:
          Stack(children: [
            // Vector 1
            PositionedDirectional(
              top: 8,
              start: 2,
              child:
              Transform.rotate(
                  angle: 3.141592653589793,
                  child: Container(
                      width: 10,
                      height: 16,
                      decoration: BoxDecoration(
                          color: const Color(0xff5ecc54)
                      )
                  )
              ),
            ),
            // Rectangle 296
            PositionedDirectional(
              top: 0,
              start: 0,
              child:
              Transform.rotate(
                  angle: 5.497787143782138,
                  child: Container(
                      width: 14.142,
                      height: 14.142,
                      decoration: BoxDecoration(
                          color: const Color(0xffcc8888)
                      )
                  )
              ),
            ),
            // Rectangle 297
            PositionedDirectional(
              top: 2,
              start: 2,
              child:
              Transform.rotate(
                  angle: 5.497787143782138,
                  child: Container(
                      width: 10.08,
                      height: 10.08,
                      decoration: BoxDecoration(
                          color: const Color(0xffe59d7e)
                      )
                  )
              ),
            )
          ]),
        )
      ]),
    );
  }
}