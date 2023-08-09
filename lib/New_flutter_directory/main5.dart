import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Ecommerce App',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstRoute(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondRoute(),
      },
    ),
  );
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  static const String _title='Login Page!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Login UI',
              style: TextStyle(
                color:Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30
              ),
            )
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Sign In',
              style: TextStyle(fontSize: 20),
            )
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child:TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
            onPressed: (){

            },
            child: const Text('Forgot Password'),
          ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Switch to list products'),
                onPressed: (){
                  // Navigator.pushNamed(context, '/second');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SecondRoute();
                      }
                    )
                  );
                },
              ),
            )
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Electronics Products';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              // leading: Icon(Icons.map),
              tileColor: Colors.red,
              title: Text('Resistors'),
            ),
            ListTile(
              // leading: Icon(Icons.photo_album),
              title: Text('Capacitors'),
              tileColor: Colors.indigo,
            ),
            ListTile(
              // leading: Icon(Icons.phone),
              title: Text('Inductors'),
              tileColor: Colors.cyan,
            ),
            ListTile(
              // leading: Icon(Icons.phone),
              title: Text('Oscillators'),
              tileColor: Colors.lightBlue,
            ),
            ListTile(
              // leading: Icon(Icons.phone),
              title: Text('ICs'),
              tileColor: Colors.greenAccent,
            ),
            ListTile(
              // leading: Icon(Icons.phone),
              title: Text('Switches'),
              tileColor: Colors.yellowAccent,
            ),
            ListTile(
              // leading: Icon(Icons.phone),
              title: Text('Crystals'),
              tileColor: Colors.white,
            ),
            ListTile(
              // leading: Icon(Icons.phone),
              title: Text('Relays'),
              tileColor: Colors.lime,
            ),
            ListTile(
              // leading: Icon(Icons.phone),
              title: Text('LEDs'),
              tileColor: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
