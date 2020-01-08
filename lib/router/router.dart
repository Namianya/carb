import 'package:flutter/material.dart';
import 'package:maps/nav.dart';
import 'package:maps/screens/login_screen.dart';
import 'package:maps/screens/signup.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
        
      case '/loginScreen':
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case '/signupScreen':
        return MaterialPageRoute(builder: (_) => SignUpScreen());

      case '/homeScreen':
        return MaterialPageRoute(builder: (_) => BottomNav());

      // case '/second':
      //   // Validation of correct data type
      //   if (args is String) {
      //     return MaterialPageRoute(
      //       builder: (_) => SecondPage(
      //             data: args,
      //           ),
      //     );
      //   }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}