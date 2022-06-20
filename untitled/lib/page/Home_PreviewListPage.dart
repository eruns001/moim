import 'package:flutter/material.dart';
import 'package:untitled/view/MeetingItemPreview.dart';

class PreviewListPage extends StatefulWidget {
  @override
  _previewListPage createState() => _previewListPage();
}

class _previewListPage extends State<PreviewListPage> {

  @override
  Widget build(BuildContext context) {
    //디바이스 너비
    double _device_width = MediaQuery.of(context).size.width;
    //디바이스 높이
    double _device_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Row(
            children: [
              ///MeetingItemPreview(testParameter: testParameter)
            ],
          ),
        ),
      ),
    );
  }
}