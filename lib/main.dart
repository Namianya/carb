import 'package:flutter/material.dart';
// import 'package:maps/nav.dart';
import 'package:maps/router/router.dart';
// import 'package:maps/screens/login_screen.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// import 'map.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/', 
        onGenerateRoute: RouteGenerator.generateRoute,
        // Scaffold(
        //   bottomNavigationBar: BottomNav(),
        // )
    );
  }
}

