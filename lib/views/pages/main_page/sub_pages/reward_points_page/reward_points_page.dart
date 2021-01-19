import 'package:aphive_pos/constants.dart';
import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/cubits/reward_points_page_cubit.dart';
import 'package:aphive_pos/theme/app_colors.dart';
import 'package:aphive_pos/theme/app_dimensions.dart';
import 'package:aphive_pos/theme/app_text_styles.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/global/app_drop_down.dart';
import 'package:aphive_pos/views/global/app_sized_box.dart';
import 'package:aphive_pos/views/global/bordered_text_field.dart';
import 'package:aphive_pos/views/global/square_button.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/reward_points_page/reward_points_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/size_extension.dart';

class RewardPointsPage extends StatelessWidget {
  static const tag = 'RewardPointsPage';

  final RewardPointsPageViewModel _rewardPointsPageViewModel = RewardPointsPageViewModel();

  @override
  Widget build(BuildContext context) {
    MainPageCubit _mainPageCubit = context.read<MainPageCubit>();
    RewardPointsPageCubit _rewardPointsPageCubit = context.read<RewardPointsPageCubit>();

    return BlocBuilder<RewardPointsPageCubit, RewardPointsPageState>(
      builder: (context, rewardPointsPageState) =>

          /// Container for padding
          Container(
        padding: AppDimensions.getRewardPointsPagePadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reward Aphive points',
              style: AppTextStyles.getExtraLargeBlueTextStyle(),
            ),

            AppSizedBox.height8(),

            /// Points Drop Down
            AppDropDown(
              value: rewardPointsPageState.selectedPoints,
              onChanged: (value) =>
                  _rewardPointsPageCubit.updateSelectedEventType(value),
              hintText: 'Enter amount of aphive points',
              items: _rewardPointsPageViewModel.points,
              width: 700.w,
            ),

            AppSizedBox.height6(),

            /// Note Text Field
            BorderedTextField(
              hint: 'Enter note (optional)',
              inputType: TextInputType.text,
              width: 700.w,
            ),

            AppSizedBox.height8(),

            /// Generate Qr code button
            SquareButton(
              title: 'Generate QR code',
              color: primaryBlue,
              width: AppDimensions.qrDialogWidgetWidth,
              fontSize: 34.nsp,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => DialogUtils.getQrDialog(
                    context: context,
                    id: AppConstants.appId,
                      onQrClick: () {
                        Navigator.of(context).pop();
                        showDialog(
                            context: context,
                            builder: (context) => DialogUtils.getMessageDialog(
                                context: context,
                                message: 'You have been successfully rewarded the points.',
                                onExit: () {
                                  Navigator.of(context).pop();
                                  _mainPageCubit.switchPage(HomePage.tag);
                                }
                            )
                        );
                      },
                    onExit: () {
                      Navigator.of(context).pop();
                      _mainPageCubit.switchPage(HomePage.tag);
                    }
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
