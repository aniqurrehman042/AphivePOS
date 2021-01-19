import 'package:aphive_pos/theme/app_assets.dart';
import 'package:aphive_pos/theme/app_text_styles.dart';
import 'package:aphive_pos/theme/app_colors.dart';
import 'package:aphive_pos/views/global/side_bar_item.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

import 'sub_pages/offers_page/offers_page.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryBlue,
      child: Column(
        children: [
          /// Logo Area
          Padding(
            padding: EdgeInsets.symmetric(vertical: 80.h),

            /// Logo Row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Logo Image
                Image.asset(
                  AppAssets.colorCube,
                  width: 60.r,
                ),

                SizedBox(width: 25.r),

                /// Logo Text
                Text(
                  'aphive',
                  style: AppTextStyles.getLogoStyle(),
                )
              ],
            ),
          ),

          ///Side Bar Items
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// Home
              SideBarItem(
                title: 'Home',
                pageTag: HomePage.tag,
              ),

              /// Offers
              SideBarItem(
                title: 'Offers',
                pageTag: OffersPage.tag,
              ),

              /// Contacts
              SideBarItem(
                title: 'Contacts',
                pageTag: '',
              ),
            ],
          ),

          Expanded(child: SizedBox()),

          /// POS ID Text
          Padding(
            padding: EdgeInsets.only(
              left: 60.w,
              bottom: 120.r,
            ),
            child: Text(
              'POS ID: ABC12345XYZ',
              style: AppTextStyles.getLogoStyle().copyWith(fontSize: 36.nsp),
            ),
          ),
        ],
      ),
    );
  }
}
