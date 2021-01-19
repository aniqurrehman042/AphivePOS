import 'package:aphive_pos/constants.dart';
import 'package:aphive_pos/cubits/home_page_cubit.dart';
import 'package:aphive_pos/theme/app_dimensions.dart';
import 'package:aphive_pos/theme/app_text_styles.dart';
import 'package:aphive_pos/theme/app_colors.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/global/app_drop_down.dart';
import 'package:aphive_pos/views/global/app_sized_box.dart';
import 'package:aphive_pos/views/global/bordered_text_field.dart';
import 'package:aphive_pos/views/global/default_button.dart';
import 'package:aphive_pos/views/global/horizontal_divider.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static const tag = 'HomePage';

  final HomePageViewModel _homePageViewModel = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    HomePageCubit _homePageCubit = context.read<HomePageCubit>();

    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, homePageState) => Container(
        padding: AppDimensions.getHomePagePadding(),

        /// Page Content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Search Section Heading
            Text(
              AppConstants.searchEvent,
              style: AppTextStyles.getSearchBoxTextStyle(),
            ),

            AppSizedBox.height3(),

            /// Search Section Controls
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// Event Type Drop Down
                AppDropDown(
                  value: homePageState.selectedEventType,
                  onChanged: (value) =>
                      _homePageCubit.updateSelectedEventType(value),
                  hintText: AppConstants.typeOfEvent,
                  items: _homePageViewModel.typesOfEvents,
                ),

                AppSizedBox.width6(),

                /// From Text Field
                BorderedTextField(
                  hint: AppConstants.from,
                  inputType: TextInputType.datetime,
                ),

                AppSizedBox.width2(),

                /// To Text Field
                BorderedTextField(
                  hint: AppConstants.to,
                  inputType: TextInputType.datetime,
                ),

                AppSizedBox.width8(),

                /// Search Button
                DefaultButton(
                  color: primaryBlue,
                  onTap: () {},
                  title: AppConstants.search,
                ),
              ],
            ),

            AppSizedBox.height8(),

            /// Table Headings
            Row(
              children: [
                Expanded(
                  child: Text(
                    AppConstants.eventId,
                    style: AppTextStyles.getSmallTextStyle(),
                  ),
                ),
                AppSizedBox.width05(),
                Expanded(
                  child: Text(
                    AppConstants.eventType,
                    style: AppTextStyles.getSmallTextStyle(),
                  ),
                ),
                AppSizedBox.width05(),
                Expanded(
                  child: Text(
                    AppConstants.quantity,
                    style: AppTextStyles.getSmallTextStyle(),
                  ),
                ),
                AppSizedBox.width05(),
                Expanded(
                  child: Text(
                    AppConstants.date,
                    style: AppTextStyles.getSmallTextStyle(),
                  ),
                ),
                AppSizedBox.width05(),
                Expanded(
                  child: Text(
                    AppConstants.user,
                    style: AppTextStyles.getSmallTextStyle(),
                  ),
                ),
                SizedBox(width: AppDimensions.tableContentHorizontalPadding),

                /// Hidden Select Button for layout positioning
                DefaultButton(
                  title: AppConstants.select,
                  isSqueezed: true,
                  isHidden: true,
                ),
              ],
            ),

            AppSizedBox.height1(),

            /// Headings Underline
            Row(
              children: [
                /// Divider
                Expanded(
                  child: HorizontalDivider(),
                ),
                AppSizedBox.width2(),

                /// Hidden Select Button for layout positioning
                DefaultButton(
                  title: AppConstants.select,
                  isSqueezed: true,
                  isHidden: true,
                )
              ],
            ),

            /// Events Data
            Expanded(
              child: ListView.builder(
                itemCount: _homePageViewModel.events.length,

                /// Container for background color
                itemBuilder: (context, index) => Container(
                  color: _homePageViewModel.getTableRowColor(index),
                  child: Row(
                    children: [
                      /// Event Id value field
                      Expanded(
                        /// Left padding for event id
                        child: Padding(
                          padding: AppDimensions.getTableContentHorizontalPadding(),
                          child: Text(
                            _homePageViewModel.events[index].eventId,
                            style: AppTextStyles.getSmallTextStyle(),
                          ),
                        ),
                      ),
                      AppSizedBox.width05(),

                      /// Event type value field
                      Expanded(
                        child: Text(
                          _homePageViewModel.events[index].eventType,
                          style: AppTextStyles.getSmallTextStyle(),
                        ),
                      ),
                      AppSizedBox.width05(),

                      /// Quantity value field
                      Expanded(
                        child: Text(
                          _homePageViewModel.events[index].quantity,
                          style: AppTextStyles.getSmallTextStyle(),
                        ),
                      ),
                      AppSizedBox.width05(),

                      /// date value field
                      Expanded(
                        child: Text(
                          _homePageViewModel.events[index].date,
                          style: AppTextStyles.getSmallTextStyle(),
                        ),
                      ),
                      AppSizedBox.width05(),

                      /// User value field
                      Expanded(
                        /// Right padding for user
                        child: Padding(
                          padding: AppDimensions.getPaddingR2w(),
                          child: Text(
                            _homePageViewModel.events[index].user,
                            style: AppTextStyles.getSmallTextStyle(),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: AppDimensions.getTableButtonPadding(),

                        /// Select Button
                        child: DefaultButton(
                          title: AppConstants.select,
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
