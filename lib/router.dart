import 'package:flutter/material.dart';
import 'package:sejuta_relasi/ui/chat_page.dart';
import 'package:sejuta_relasi/ui/home_page.dart';
import 'package:sejuta_relasi/ui/login_page.dart';
import 'package:sejuta_relasi/ui/register_page.dart';
import 'package:sejuta_relasi/ui/welcome_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WelcomePage.name:
      return MaterialPageRoute(builder: (context) => WelcomePage());
    case LoginPage.name:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case RegisterPage.name:
      return MaterialPageRoute(builder: (context) => RegisterPage());
    case HomePage.name:
      return MaterialPageRoute(builder: (context) => HomePage());
    case ChatPage.name:
      return MaterialPageRoute(builder: (context) => ChatPage());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(child: Text('No path for ${settings.name}')),
        ),
      );
  }
}
