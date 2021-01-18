import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/global/bordered_text_field.dart';
import 'package:aphive_pos/views/global/square_button.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/size_extension.dart';

class ReceivePaymentPage extends StatelessWidget {
  static const tag ='ReceivePaymentPage';

  @override
  Widget build(BuildContext context) {
    MainPageCubit _mainPageCubit = context.read<MainPageCubit>();

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 200.r,
        vertical: 100.r,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reward Aphive points',
            style: TextStyle(
              fontSize: 56.nsp,
              color: primaryBlue,
            ),
          ),

          SizedBox(height: 80.h),

          /// Total Amount Text Field
          BorderedTextField(
            hint: 'Enter total amount',
            inputType: TextInputType.text,
            width: 700.w,
          ),

          SizedBox(height: 60.h),

          /// Note Text Field
          BorderedTextField(
            hint: 'Enter note (optional)',
            inputType: TextInputType.text,
            width: 700.w,
          ),

          SizedBox(height: 80.h),

          /// Generate Qr code button
          SquareButton(
            title: 'Generate QR code',
            color: primaryBlue,
            width: 700.nsp,
            fontSize: 34.nsp,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => DialogUtils.getQrDialog(
                    context: context,
                    id: 'ABC12345XYZ',
                    onQrClick: () {
                      Navigator.of(context).pop();
                      showDialog(
                        context: context,
                        builder: (context) => DialogUtils.getMessageDialog(
                          context: context,
                          message: 'Transaction failed.',
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
    );
  }
}
