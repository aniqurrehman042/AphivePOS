import 'package:aphive_pos/constants.dart';
import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReceivePaymentPageViewModel {
  onGenerateQrButtonClick(BuildContext context) {
    MainPageCubit _mainPageCubit = context.read<MainPageCubit>();
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
                    message: AppConstants.transactionFailed,
                    onExit: () {
                      Navigator.of(context).pop();
                      _mainPageCubit.switchPage(HomePage.tag);
                    }));
          },
          onExit: () {
            Navigator.of(context).pop();
            _mainPageCubit.switchPage(HomePage.tag);
          }),
    );
  }
}