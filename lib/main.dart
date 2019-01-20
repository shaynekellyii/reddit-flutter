import 'package:flutter/material.dart';
import 'package:reddit_app_flutter/widget/screen/post_screen.dart';
import 'package:reddit_app_flutter/widget/screen/subreddit_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _title = 'Reddit';
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.grey,
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SubredditScreen(
              title: _title,
            ),
        '/post': (context) => PostScreen(),
      },
    );
  }
}
