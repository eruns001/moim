
import 'package:flutter/material.dart';
import 'package:untitled/page/InterestPage.dart';
import 'package:untitled/page/SignUp.dart';
import 'package:untitled/page/SplashScreen.dart';
import 'package:untitled/page/LogInPage.dart';
import 'package:untitled/page/_FIrstVisit.dart';
import 'package:untitled/page/_Home.dart';
import 'package:untitled/page/_testViewTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool temp = true;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    if(temp){
      return FirstVisit();
    }
    else{
      return Home();
    }
  }
}
