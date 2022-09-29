import 'package:bblk_app/ui/error_page.dart';
import 'package:bblk_app/ui/login_page.dart';
import 'package:bblk_app/ui/main_page.dart';
import 'package:bblk_app/ui/profile_and_setting_page.dart';
import 'package:bblk_app/ui/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/loginPage':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/registerPage':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/mainPage':
        return MaterialPageRoute(builder: (_) => MainPage());
      case '/profileAndSettingPage':
        return MaterialPageRoute(builder: (_) => ProfileAndSettingPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) => const ErrorPage());
  }
}
