import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/theme/assets.dart';
import 'package:aphive_pos/theme/decorations.dart';
import 'package:aphive_pos/theme/text_styles.dart';
import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:aphive_pos/views/global/side_bar_item.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:get/get.dart';

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
                  Assets.colorCube,
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
        ],
      ),
    );
  }
}
