import 'package:flutter/material.dart';

class TempPage extends StatefulWidget {

  final int pageNumber;
  TempPage({Key? key, required this.pageNumber}): super(key: key);

  @override
  _tempPage createState() => _tempPage();
}

class _tempPage extends State<TempPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          widget.pageNumber.toString()
        ),
      ),
    );
  }
}