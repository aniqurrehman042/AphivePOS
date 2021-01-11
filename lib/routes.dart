import 'package:get/get.dart';

import 'views/pages/main_page/main_page.dart';

class Routes {
  static const mainPage = 'MainPage';

  static List<GetPage> all = [
    GetPage(name: mainPage, page: () => MainPage()),
  ];
}
