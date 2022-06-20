import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/view/MeetingItemPreview.dart';

import '../class/ClassMeetingItemPreview.dart';
import '../view/Member.dart';

class TestViewTest extends StatefulWidget {
  @override
  _testViewTest createState() => _testViewTest();
}

class _testViewTest extends State<TestViewTest> {

  MeetingItemPreviewItem temp = MeetingItemPreviewItem(
      title: "title",
      tag: "sample tag"
  );

  @override
  Widget build(BuildContext context) {
    //디바이스 너비
    double _device_width = MediaQuery.of(context).size.width;
    //디바이스 높이
    double _device_height = MediaQuery.of(context).size.height;

    print("object");
    return Scaffold(
      body: Center(
        child: MeetingItemPreview(
          testParameter: temp,
        )
      ),
    );
  }
}