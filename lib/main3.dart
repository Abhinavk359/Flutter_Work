import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Minor Project';

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue,
            fontFamily: 'Verdana',
        ),
        title: _title,
        home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: const Center(
            child: MyStatelessWidget(),
          ),
        ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: raisedButtonStyle,
      child: const Text('Show Snackbar'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Magnificent Snackbar!'),
            action: SnackBarAction(
              label: 'Close',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      },
    );
  }
}
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.cyan,
  primary: Colors.amber,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 18),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(3)),
  )
);