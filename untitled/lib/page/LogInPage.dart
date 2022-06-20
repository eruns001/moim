import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPage createState() => _LogInPage();
}

class _LogInPage extends State<LogInPage> {

  @override
  Widget build(BuildContext context) {
    //디바이스 너비
    double _device_width = MediaQuery.of(context).size.width;
    //디바이스 높이
    double _device_height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Stack(children: [
        // 우리 동네 모임 한 상자,
        PositionedDirectional(
          top: 136,
          start: 140,
          child:
          Text(
              "우리 동네 모임 한 상자,",
              style: const TextStyle(
                  color:  const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "NotoSansKR",
                  fontStyle:  FontStyle.normal,
                  fontSize: 14.0,
                  decoration: TextDecoration.none
              ),
              textAlign: TextAlign.center
          ),
        ),
        // 모임박스
        PositionedDirectional(
          top: 156,
          start: 124,
          child:
          Text(
              "모임박스",
              style: const TextStyle(
                  color:  const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontFamily: "NotoSansKR",
                  fontStyle:  FontStyle.normal,
                  fontSize: 45.0,
                  decoration: TextDecoration.none
              ),
              textAlign: TextAlign.left
          ),
        ),

        // 아직 회원이 아니신가요?
        PositionedDirectional(
          top: 483,
          start: 131,
          child:
          Text(
              "아직 회원이 아니신가요?",
              style: const TextStyle(
                  color:  const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "NotoSansKR",
                  fontStyle:  FontStyle.normal,
                  fontSize: 15.0,
                  decoration: TextDecoration.none
              ),
              textAlign: TextAlign.center
          ),
        ),
        // 회원가입
        PositionedDirectional(
          top: 513,
          start: 181,
          child:TextButton(
            child: Text(
                "회원가입",
                style: const TextStyle(
                    color:  const Color(0xff5b73c7),
                    fontWeight: FontWeight.w400,
                    fontFamily: "NotoSansKR",
                    fontStyle:  FontStyle.normal,
                    fontSize: 15.0
                ),
                textAlign: TextAlign.center
            ),
            onPressed: (){

            },
          )
        ),
        // Rectangle 61
        PositionedDirectional(
          top: 322,
          start: 31,
          child:
          Container(
              width: 354,
              height: 42,
              decoration: BoxDecoration(
                  color: const Color(0x4debda17)
              )
          ),
        ),
        // Rectangle 63
        PositionedDirectional(
          top: 393,
          start: 31,
          child:
          Container(
              width: 354,
              height: 42,
              decoration: BoxDecoration(
                  color: const Color(0x4dd24738)
              )
          ),
        ),

        // Rectangle 60
        PositionedDirectional(
          top: 301,
          start: 20,
          child:
          Container(
              width: 374,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  ),
                  color: const Color(0xffffeb00)
              )
          ),
        ),
        // Rectangle 62
        PositionedDirectional(
          top: 372,
          start: 20,
          child:
          Container(
              width: 374,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  ),
                  color: const Color(0xffe24939)
              )
          ),
        ),
        // 카카오톡으로 로그인하기
        PositionedDirectional(
          top: 316,
          start: 119,
          child:
          Text(
              "카카오톡으로 로그인하기",
              style: const TextStyle(
                  color:  const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontFamily: "NotoSansKR",
                  fontStyle:  FontStyle.normal,
                  fontSize: 17.0,
                  decoration: TextDecoration.none
              ),
              textAlign: TextAlign.center
          ),
        ),
        // 구글으로 로그인하기
        PositionedDirectional(
          top: 387,
          start: 135,
          child:
          Text(
              "구글으로 로그인하기",
              style: const TextStyle(
                  color:  const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  fontFamily: "NotoSansKR",
                  fontStyle:  FontStyle.normal,
                  fontSize: 17.0,
                  decoration: TextDecoration.none
              ),
              textAlign: TextAlign.center
          ),
        )
      ]),
    );
  }
}