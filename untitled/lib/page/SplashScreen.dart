import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/page/LogInPage.dart';
import 'package:untitled/page/_Home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {

  bool isLogIn = true;

  @override
  Widget build(BuildContext context) {
    //디바이스 너비
    double _device_width = MediaQuery.of(context).size.width;
    //디바이스 높이
    double _device_height = MediaQuery.of(context).size.height;

    return Material(
      child: InkWell(
        onTap: (){
          print("tapped");

          if(isLogIn){
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) =>Home())
            );
          }
          else{
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => LogInPage())
            );
          }
        },
        child:  Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/splash_screen.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(children: [
            // 모임박스
            PositionedDirectional(
              top: _device_height*0.274,
              start: _device_width*0.21,
              child: const Text(
                  "모임박스",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansKR",
                      fontStyle:  FontStyle.normal,
                      fontSize: 65.0,
                      decoration: TextDecoration.none
                  ),
                  textAlign: TextAlign.center
              ),
            ),
            // 우리 동네 모임 한 상자,
            PositionedDirectional(
              top: _device_height*0.238,
              start: _device_width*0.341,
              child: const Text(
                  "우리 동네 모임 한 상자,",
                  style: TextStyle(
                      color:  Color(0xffffffff),
                      fontWeight: FontWeight.w500,
                      fontFamily: "NotoSansKR",
                      fontStyle:  FontStyle.normal,
                      fontSize: 14.0,
                      decoration: TextDecoration.none
                  ),
                  textAlign: TextAlign.center
              ),
            ),
            // 모임 즐기러 가기!
            PositionedDirectional(
              bottom: _device_height*0.117,
              start: _device_width*0.085,
              child: const Text(
                  "모임 즐기러 가기!",
                  style: TextStyle(
                      color:  Color(0xffffffff),
                      fontWeight: FontWeight.w500,
                      fontFamily: "NotoSansKR",
                      fontStyle:  FontStyle.normal,
                      fontSize: 14.0,
                      decoration: TextDecoration.none
                  ),
                  textAlign: TextAlign.left
              ),
            ),
            // 하단 선
            PositionedDirectional(
              bottom: _device_height*0.069,
              start: _device_width*0.085,
              child:
              Container(
                  width: 342,
                  height: 5,
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff)
                  )
              ),
            )
          ]),
        ),
      ),
    );
  }
}