import 'package:flutter/material.dart';
import 'package:icon_images/styles/my_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buku = iconBook;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Icon Image + Anonymous Methode"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(buku),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text("PRESS THIS BUTTON",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    onPressed: () {
                      setState(() {
                        buku = iconRocket;
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
