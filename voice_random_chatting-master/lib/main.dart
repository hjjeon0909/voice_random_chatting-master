import 'package:flutter/material.dart';
import 'package:voice_random_chatting/webSocketDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'VoiceTalk',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage(title: 'MainPage'),
        routes: {
          '/webSocketDemo': (BuildContext context) => WebSocketDemo(),
        }
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100.0,
              color: Colors.white,
              alignment: Alignment.center,
              child: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }

}
