import 'package:flutter/material.dart';
import 'views/pages/main_page/main_page.dart';

class Routes {
  static const mainPage = 'MainPage';

  static Map<String, Widget Function(BuildContext)> all = {
    mainPage: (context) => MainPage(),
  };
}
