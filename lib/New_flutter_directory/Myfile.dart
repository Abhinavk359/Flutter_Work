
import 'package:flutter/material.dart';
// import 'dart:ui';

MyApp main(){
  return const MyApp();
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abhinav"),
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.amber,
      ),
    );
  }
}
