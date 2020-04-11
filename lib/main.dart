import 'package:flutter/material.dart';
import 'package:flutter_book/data/widget_data.dart';
import 'package:flutter_book/screens/category_screen.dart';
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
        '/accessibility': (context) => CategoryScreen(
              'Accessibility',
              'accessibility',
              widgetData['Accessibility'],
            ),
        '/animmotion': (context) => CategoryScreen(
              'Animation and motion',
              'animmotion',
              widgetData['Animation and motion'],
            ),
        '/aii': (context) => CategoryScreen(
              'Assets, images, and icon',
              'aii',
              widgetData['Assets, images, and icon'],
            ),
        '/async': (context) => CategoryScreen(
              'Async',
              'async',
              widgetData['Async'],
            ),
        '/basics': (context) => CategoryScreen('Basics', 'basics', widgetData['Basics']),
        '/input': (context) => CategoryScreen('Input', 'input', widgetData['Input']),
        '/interaction': (context) => CategoryScreen('Interaction model', 'interaction', widgetData['Interaction']),
        '/painting': (context) => CategoryScreen("Paiting and effects", 'painting', widgetData['Painting']),
        '/styling': (context) => CategoryScreen("Styling", 'styling', widgetData['Styling']),
        '/text': (context) => CategoryScreen('Text', 'text', widgetData['Text']),
        '/scrolling': (context) => CategoryScreen('Scrolling', 'scrolling', widgetData['Scrolling']),
        '/cupertino': (context) => CategoryScreen('Cupertino', 'cupertino', widgetData['Cupertino']),
        '/layout': (context) => CategoryScreen('Layout', 'layout', widgetData['Layout']),
        '/material': (context) => CategoryScreen('Material Components', 'material', widgetData['Material']),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Color(0xff75abf1),
        scaffoldBackgroundColor: Colors.black,
        primaryColorDark: Color(0xff1d1d1d),
        textTheme: TextTheme(
          headline4:
              TextStyle(color: Color(0xffdddddd), fontWeight: FontWeight.bold),
          headline6: TextStyle(
              color: Color(0xff75abf1),
              fontSize: 18,
              fontWeight: FontWeight.bold),
          bodyText2: TextStyle(color: Color(0xfff2f2f2)),
        ),
      ),
    );
  }
}
