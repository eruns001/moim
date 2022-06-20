import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/data/data.dart';

/// 회원가입 정보입력

class SignUp extends StatefulWidget {
  @override
  _signUp createState() => _signUp();
}

class _signUp extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    //디바이스 너비
    double _device_width = MediaQuery.of(context).size.width;
    //디바이스 높이
    double _device_height = MediaQuery.of(context).size.height;
    return Container(
      width: _device_width,
      padding: const EdgeInsets.fromLTRB(20,0,20,0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// 프로필 사진 추가
            Container(
              margin: const EdgeInsets.all(16),
              height: 114,
              width: 114,
              decoration: const BoxDecoration(
                color: ColorsForApp.textFieldBack,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add_a_photo,
                color: Color(0xffC4C4C4),
              ),
            ),

            /// 이름을 입력해 주세요
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// 이름을 입력해 주세요
                  Container(
                    width: 214,
                    height: 55,
                    decoration: BoxDecoration(
                      color: ColorsForApp.textFieldBack,
                      borderRadius:  BorderRadius.circular(5),
                    ),
                    child: TextField(
                      controller: TextEditingController(),
                      keyboardType: TextInputType.name,
                      maxLength: 8,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(

                          counterText: '',
                          contentPadding:
                          EdgeInsets.fromLTRB(_device_width * 0.05, 0, 0, 0),
                          border: InputBorder.none,
                          hintText: "이름을 입력해 주세요",
                          hintStyle: const TextStyle(
                              color: ColorsForApp.hintTextColor
                          )
                      ),
                    ),
                  ),
                  /// 내 지역 선택
                  Container(
                    width: 144,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      border: Border.all(
                          color: const Color(0xffc4c4c4),
                          width: 1
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {  },
                      child: Text("내 지역 선택"),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: ColorsForApp.buttonTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /// 닉네임을 입력해 주세요
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 374,
              height: 55,
              decoration: BoxDecoration(
                color: ColorsForApp.textFieldBack,
                borderRadius:  BorderRadius.circular(5),
              ),
              child: TextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.name,
                maxLength: 8,
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                    counterText: '',
                    contentPadding: EdgeInsets.fromLTRB(_device_width * 0.05, 0, 0, 0),
                    border: InputBorder.none,
                    hintText: "닉네임을 입력해 주세요",
                    hintStyle: const TextStyle(
                        color: ColorsForApp.hintTextColor
                    )
                ),
              ),
            ),
            /// 공백, 특수기호는 입력되지 않습니다. (한글, 영어, 숫자)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 374,
              child: const Text(
                "공백, 특수기호는 입력되지 않습니다. (한글, 영어, 숫자)",
                style: TextStyle(
                    color: ColorsForApp.narrationText
                ),
              ),
            ),
            /// 생년월일을 입력해주세요.(8자리)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 374,
              height: 55,
              decoration: BoxDecoration(
                color: ColorsForApp.textFieldBack,
                borderRadius:  BorderRadius.circular(5),
              ),
              child: TextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.datetime,
                maxLength: 8,
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                    counterText: '',
                    contentPadding: EdgeInsets.fromLTRB(_device_width * 0.05, 0, 0, 0),
                    border: InputBorder.none,
                    hintText: "생년월일을 입력해주세요.(8자리)",
                    hintStyle: const TextStyle(
                        color: ColorsForApp.hintTextColor
                    )
                ),
              ),
            ),
            /// 연락처를 입력해주세요.
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 374,
              height: 55,
              decoration: BoxDecoration(
                color: ColorsForApp.textFieldBack,
                borderRadius:  BorderRadius.circular(5),
              ),
              child: TextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.phone,
                maxLength: 11,
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                    counterText: '',
                    contentPadding: EdgeInsets.fromLTRB(_device_width * 0.05, 0, 0, 0),
                    border: InputBorder.none,
                    hintText: "연락처를 입력해주세요.",
                    hintStyle: const TextStyle(
                        color: ColorsForApp.hintTextColor
                    )
                ),
              ),
            ),
            /// 인증번호를 입력해주세요.
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 374,
              height: 55,
              decoration: BoxDecoration(
                color: ColorsForApp.textFieldBack,
                borderRadius:  BorderRadius.circular(5),
              ),
              child: TextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.number,
                maxLength: 11,
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                    counterText: '',
                    contentPadding: EdgeInsets.fromLTRB(_device_width * 0.05, 0, 0, 0),
                    border: InputBorder.none,
                    hintText: "인증번호를 입력해주세요.",
                    hintStyle: const TextStyle(
                        color: ColorsForApp.hintTextColor
                    )
                ),
              ),
            ),
            /// 이메일을 입력해주세요.
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 374,
              height: 55,
              decoration: BoxDecoration(
                color: ColorsForApp.textFieldBack,
                borderRadius:  BorderRadius.circular(5),
              ),
              child: TextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                maxLength: 11,
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                    counterText: '',
                    contentPadding: EdgeInsets.fromLTRB(_device_width * 0.05, 0, 0, 0),
                    border: InputBorder.none,
                    hintText: "이메일을 입력해주세요.",
                    hintStyle: const TextStyle(
                        color: ColorsForApp.hintTextColor
                    )
                ),
              ),
            ),
            /// 회원가입 시 등록한 정보는 개인정보처리방침에 따라 처리되며,
            /// 기본정보는 내 프로필에서 수정 가능 합니다.
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 374,
              child: const Text(
                "회원가입 시 등록한 정보는 개인정보처리방침에 따라 처리되며,"
                    "기본정보는 내 프로필에서 수정 가능 합니다.",
                style: TextStyle(
                    color: ColorsForApp.narrationText
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}