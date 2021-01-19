import 'package:aphive_pos/constants.dart';
import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/theme/app_colors.dart';
import 'package:aphive_pos/theme/app_dimensions.dart';
import 'package:aphive_pos/theme/app_text_styles.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/global/app_sized_box.dart';
import 'package:aphive_pos/views/global/square_button.dart';
import 'package:aphive_pos/views/global/wide_bordered_text_field.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/receive_payment_page/receive_payment_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReceivePaymentPage extends StatelessWidget {
  static const tag = 'ReceivePaymentPage';

  ReceivePaymentPageViewModel _receivePaymentPageViewModel = ReceivePaymentPageViewModel();

  @override
  Widget build(BuildContext context) {
    MainPageCubit _mainPageCubit = context.read<MainPageCubit>();

    return Container(
      padding: AppDimensions.getReceivePaymentsPagePadding(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppConstants.rewardAphivePoints,
            style: AppTextStyles.getExtraLargeBlueTextStyle(),
          ),

          AppSizedBox.height8(),

          /// Total Amount Text Field
          WideBorderedTextField(
            hint: AppConstants.enterTotalAmount,
          ),

          AppSizedBox.height6(),

          /// Note Text Field
          WideBorderedTextField(
            hint: AppConstants.enterNoteOptional,
          ),

          AppSizedBox.height8(),

          /// Generate Qr code button
          SquareButton(
            title: AppConstants.generateQrCode,
            color: primaryBlue,
            width: AppDimensions.qrDialogWidgetWidth,
            fontSize: AppDimensions.smallFontSize,
            onTap: () {
              _receivePaymentPageViewModel.onGenerateQrButtonClick(context);
            },
          )
        ],
      ),
    );
  }
}
