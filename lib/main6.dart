import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       home: Text('The opening window screen'),
//     ));
void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
        ),
        body: Center(
          //A widget is followed by some properties.
          child: Text("Hello coders"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('click'),
          onPressed: null,
        ),
      ),
    ));
