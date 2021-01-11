import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/theme/decorations.dart';
import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:get/get.dart';

class SideBarItem extends StatelessWidget {
  SideBarItem({
    this.title,
    this.pageTag,
  });

  final MainPageCubit _mainPageCubit = Get.find();
  final String title;
  final String pageTag;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageCubit, MainPageState>(
      builder: (context, state) =>

      /// Material required for inkwell ripple effect
          Material(
        color: _mainPageCubit.state.currentPage == pageTag
            ? accentPurple
            : Colors.transparent,

        /// Inkwell for ripple effect
        child: InkWell(
          onTap: () => _mainPageCubit.switchPage(pageTag),
          child: Container(
            padding: EdgeInsets.only(
              top: 22.r,
              bottom: 22.r,
              left: 70.r,
            ),
            decoration: _mainPageCubit.state.currentPage == pageTag
                ? AppDecorations.getActiveMenuItemBoxDecoration()
                : null,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 34.nsp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
