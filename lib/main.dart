import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ToDoText(text: 'Portare fuori il cane',),
            ToDoText(text: 'Fare la spesa',),
            ToDoText(text: 'Iscriversi a TheBugger su Twitch',),
          ],
        ),
      ),
    );
  }
}

class ToDoText extends StatefulWidget {
  final text;

  const ToDoText({Key key, this.text}) : super(key: key);
  @override
  _ToDoTextState createState() => _ToDoTextState();
}

class _ToDoTextState extends State<ToDoText> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: textClicked,
          child: Text(
            widget.text,
            style: TextStyle(
                decoration: isClicked ? TextDecoration.lineThrough : null,
                color: Colors.white,
                fontSize: 20),
          ),
        ),
      ),
    );
  }

  void textClicked() {
    setState(() {
      isClicked = !isClicked;
    });
  }
}
