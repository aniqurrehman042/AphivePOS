import 'package:aphive_pos/cubits/home_page_cubit.dart';
import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/global/app_drop_down.dart';
import 'package:aphive_pos/views/global/bordered_text_field.dart';
import 'package:aphive_pos/views/global/default_button.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/size_extension.dart';

class HomePage extends StatelessWidget {
  static const tag = 'HomePage';

  /// padding of the content of events table
  final tableContentHorizontalPadding = 20.w;

  final HomePageViewModel _homePageViewModel = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    HomePageCubit _homePageCubit = context.read<HomePageCubit>();

    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, homePageState) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 120.w,
          vertical: 40.h,
        ),

        /// Page Content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Search Section Heading
            Text(
              'Search event',
              style: TextStyle(
                color: primaryBlue,
                fontSize: 32.nsp,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: 30.r),

            /// Search Section Controls
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// Event Type Drop Down
                AppDropDown(
                  value: homePageState.selectedEventType,
                  onChanged: (value) =>
                      _homePageCubit.updateSelectedEventType(value),
                  hintText: 'Type of event',
                  items: _homePageViewModel.typesOfEvents,
                ),

                SizedBox(width: 60.w),

                /// From Text Field
                BorderedTextField(
                  hint: 'From',
                  inputType: TextInputType.datetime,
                ),

                SizedBox(width: 20.w),

                /// To Text Field
                BorderedTextField(
                  hint: 'To',
                  inputType: TextInputType.datetime,
                ),

                SizedBox(width: 80.w),

                /// Search Button
                DefaultButton(
                  color: primaryBlue,
                  onTap: () {},
                  title: 'Search',
                ),
              ],
            ),

            SizedBox(height: 80.r),

            /// Table Headings
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Event ID',
                    style: TextStyle(
                      fontSize: 34.nsp,
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: Text(
                    'Event Type',
                    style: TextStyle(
                      fontSize: 34.nsp,
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: Text(
                    'Quantity',
                    style: TextStyle(
                      fontSize: 34.nsp,
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 34.nsp,
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  child: Text(
                    'User*',
                    style: TextStyle(
                      fontSize: 34.nsp,
                    ),
                  ),
                ),
                SizedBox(width: tableContentHorizontalPadding),

                /// Hidden Select Button for layout positioning
                DefaultButton(
                  title: 'Select',
                  isSqueezed: true,
                  isHidden: true,
                ),
              ],
            ),

            SizedBox(height: 10.r),

            /// Headings Underline
            Row(
              children: [
                /// Divider
                Expanded(
                  child: Container(
                    color: lightGrey,
                    height: 2.0,
                  ),
                ),
                SizedBox(width: 20.w),

                /// Hidden Select Button for layout positioning
                DefaultButton(
                  title: 'Select',
                  isSqueezed: true,
                  isHidden: true,
                )
              ],
            ),

            /// Events Data
            Expanded(
              child: ListView.builder(
                itemCount: _homePageViewModel.events.length,
                itemBuilder: (context, index) =>

                    /// Container for background color
                    Container(
                  color: index % 2 == 0 ? Colors.white : lightGrey,
                  child: Row(
                    children: [
                      /// Event Id value field
                      Expanded(
                        /// Left padding for event id
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: tableContentHorizontalPadding),
                          child: Text(
                            _homePageViewModel.events[index].eventId,
                            style: TextStyle(
                              fontSize: 34.nsp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),

                      /// Event type value field
                      Expanded(
                        child: Text(
                          _homePageViewModel.events[index].eventType,
                          style: TextStyle(
                            fontSize: 34.nsp,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),

                      /// Quantity value field
                      Expanded(
                        child: Text(
                          _homePageViewModel.events[index].quantity,
                          style: TextStyle(
                            fontSize: 34.nsp,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),

                      /// date value field
                      Expanded(
                        child: Text(
                          _homePageViewModel.events[index].date,
                          style: TextStyle(
                            fontSize: 34.nsp,
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w),

                      /// User value field
                      Expanded(
                        /// Right padding for user
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: Text(
                            _homePageViewModel.events[index].user,
                            style: TextStyle(
                              fontSize: 34.nsp,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(
                          left: tableContentHorizontalPadding,
                          top: 10.r,
                          bottom: 10.r,
                        ),

                        /// Select Button
                        child: DefaultButton(
                          title: 'Select',
                          color: accentPurple,
                          isSqueezed: true,
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) =>
                                    DialogUtils.getEventDetailsDialog(context,
                                        _homePageViewModel.events[index]));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
