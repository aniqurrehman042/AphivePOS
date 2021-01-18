import 'package:aphive_pos/cubits/reward_points_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'cubits/home_page_cubit.dart';
import 'cubits/main_page_cubit.dart';
import 'routes.dart';

void main() {
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
          BlocProvider(create: (context) => MainPageCubit()),
          BlocProvider(create: (context) => HomePageCubit()),
          BlocProvider(create: (context) => RewardPointsPageCubit()),
        ],

        /// GetMaterialApp for utilizing GetX Navigation
        child: MaterialApp(
          title: 'Aphive POS',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Montserrat',
          ),
          routes: Routes.all,
          initialRoute: Routes.mainPage,
        ),
      ),
    );
  }
}
