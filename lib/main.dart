import 'package:flutter/material.dart';
import 'package:flutter_book/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Color(0xff75abf1),
        scaffoldBackgroundColor: Colors.black,
        primaryColorDark: Color(0xff1d1d1d),
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Color(0xffdddddd),
            fontWeight: FontWeight.bold
          ),
          headline6: TextStyle(
            color: Color(0xff75abf1),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          bodyText2: TextStyle(
            color: Color(0xfff2f2f2)
          ),
        ),
      ),
    );
  }
}

