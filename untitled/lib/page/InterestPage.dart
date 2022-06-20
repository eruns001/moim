import 'package:flutter/material.dart';

import '../class/ClassMeetingItemPreview.dart';
import '../data/data.dart';

class InterestPage extends StatefulWidget {
  @override
  _interestPage createState() => _interestPage();
}

class _interestPage extends State<InterestPage> {

  bool isGolf = false;
  bool isFishing = false;

  bool isBowling = false;
  bool isBilliards = false;

  bool isSurfing = false;
  bool isClimbing = false;

  Widget widgetInterest(deviceWidth, deviceHeight, String interest, bool interestBool){
    bool isLeft = false;
    if(interest == MeetingItemTag.golf || interest == MeetingItemTag.bowling || interest == MeetingItemTag.surfing){
      isLeft = true;
    }
    else{
      isLeft = false;
    }
    return InkWell(
      onTap: (){
        setState(() {
          isGolf = !isGolf;
        });
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(isLeft?0:8, 12, isLeft?8:0, 12),
        width: deviceWidth * 0.423,
        height: deviceHeight * 0.19,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/$interest.png"),
              fit: BoxFit.cover,
            )
        ),
        child: isGolf
            ?Container(
            width: deviceWidth * 0.423,
            height: deviceHeight * 0.19,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/imageChecked.png"),
                  fit: BoxFit.fill,
                )
            )
        )
            :Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //디바이스 너비
    double _device_width = MediaQuery.of(context).size.width;
    //디바이스 높이
    double _device_height = MediaQuery.of(context).size.height;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Container(
        width: _device_width,
        padding: const EdgeInsets.fromLTRB(20,28,20,0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// 3개까지 선택이 가능합니다.
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: 374,
                child: const Text(
                  "3개까지 선택이 가능합니다.",
                  style: TextStyle(
                      color: ColorsForApp.narrationText
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        /// golf
                        InkWell(
                          onTap: (){
                            setState(() {
                              isGolf = !isGolf;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 12, 8, 12),
                            width: _device_width * 0.423,
                            height: _device_height * 0.19,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/fishing.png"),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: isGolf
                                ?Container(
                                width: _device_width * 0.423,
                                height: _device_height * 0.19,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/imageChecked.png"),
                                      fit: BoxFit.fill,
                                    )
                                )
                            )
                                :Container(),
                          ),
                        ),
                        /// fishing
                        InkWell(
                          onTap: (){
                            setState(() {
                              isFishing = !isFishing;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(8, 12, 0, 12),
                            width: _device_width * 0.423,
                            height: _device_height * 0.19,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/fishing.png"),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: isFishing
                                ?Container(
                                width: _device_width * 0.423,
                                height: _device_height * 0.19,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/imageChecked.png"),
                                      fit: BoxFit.fill,
                                    )
                                )
                            )
                                :Container(),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        /// bowling
                        InkWell(
                          onTap: (){
                            setState(() {
                              isBowling = !isBowling;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 12, 8, 12),
                            width: _device_width * 0.423,
                            height: _device_height * 0.19,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/bowling.png"),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: isBowling
                                ?Container(
                                width: _device_width * 0.423,
                                height: _device_height * 0.19,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/imageChecked.png"),
                                      fit: BoxFit.fill,
                                    )
                                )
                            )
                                :Container(),
                          ),
                        ),
                        /// billiards
                        InkWell(
                          onTap: (){
                            setState(() {
                              isBilliards = !isBilliards;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(8, 12, 0, 12),
                            width: _device_width * 0.423,
                            height: _device_height * 0.19,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/billiards.png"),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: isBilliards
                                ?Container(
                                width: _device_width * 0.423,
                                height: _device_height * 0.19,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/imageChecked.png"),
                                      fit: BoxFit.fill,
                                    )
                                )
                            )
                                :Container(),
                          ),
                        ),
                      ],

                    ),
                    Row(
                      children: [
                        /// Surfing
                        InkWell(
                          onTap: (){
                            setState(() {
                              isSurfing = !isSurfing;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 12, 8, 12),
                            width: _device_width * 0.423,
                            height: _device_height * 0.19,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/surfing.png"),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: isSurfing
                                ?Container(
                                width: _device_width * 0.423,
                                height: _device_height * 0.19,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/imageChecked.png"),
                                      fit: BoxFit.fill,
                                    )
                                )
                            )
                                :Container(),
                          ),
                        ),
                        /// Climbing
                        InkWell(
                          onTap: (){
                            setState(() {
                              isClimbing = !isClimbing;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(8, 12, 0, 12),
                            width: _device_width * 0.423,
                            height: _device_height * 0.19,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/climbing.png"),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: isClimbing
                                ?Container(
                                width: _device_width * 0.423,
                                height: _device_height * 0.19,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/imageChecked.png"),
                                      fit: BoxFit.fill,
                                    )
                                )
                            )
                                :Container(),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              /// 관심사는 [내 프로필]에서 변경할 수 있습니다.
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: 374,
                child: const Text(
                  "관심사는 [내 프로필]에서 변경할 수 있습니다.",
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