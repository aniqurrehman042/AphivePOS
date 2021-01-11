import 'package:aphive_pos/core/dependency_injector.dart';
import 'package:aphive_pos/cubits/reward_points_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'cubits/home_page_cubit.dart';
import 'cubits/main_page_cubit.dart';
import 'routes.dart';

void main() {
  DependencyInjector.injectDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /// Enable Fullscreen
    SystemChrome.setEnabledSystemUIOverlays([]);

    /// ScreenUtil for responsive sizes and fonts
    return ScreenUtilInit(
      designSize: Size(2224, 1668),
      allowFontScaling: true,

      /// Global Providers
      child: MultiBlocProvider(

        /// Global Providers List
        providers: [
          BlocProvider(create: (context) => Get.find<MainPageCubit>()),
          BlocProvider(create: (context) => Get.find<HomePageCubit>()),
          BlocProvider(create: (context) => Get.find<RewardPointsPageCubit>()),
        ],

        /// GetMaterialApp for utilizing GetX Navigation
        child: GetMaterialApp(
          title: 'Aphive POS',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Montserrat',
          ),
          getPages: Routes.all,
          initialRoute: Routes.mainPage,
        ),
      ),
    );
  }
}
