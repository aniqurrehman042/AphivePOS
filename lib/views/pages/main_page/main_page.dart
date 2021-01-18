import 'package:aphive_pos/cubits/main_page_cubit.dart';
import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:aphive_pos/utils/dialog_utils.dart';
import 'package:aphive_pos/views/global/default_button.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/offers_page/offers_page.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/receive_payment_page/receive_payment_page.dart';
import 'package:aphive_pos/views/pages/main_page/sub_pages/retrieve_offer_page/retrieve_offer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/size_extension.dart';

import 'side_bar.dart';
import 'sub_pages/home_page/home_page.dart';
import 'sub_pages/reward_points_page/reward_points_page.dart';

class MainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    MainPageCubit _mainPageCubit = context.read<MainPageCubit>();

    return Scaffold(
      resizeToAvoidBottomPadding: false,

      /// Row for Sidebar and Main Content
      body: BlocBuilder<MainPageCubit, MainPageState>(
          builder: (context, mainPageState) {
        return Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Row(
                children: [
                  /// Sidebar Area
                  Expanded(
                    flex: 1,

                    /// Sidebar Content
                    child: SideBar(),
                  ),

                  /// Main Page Area
                  Expanded(
                    flex: 5,

                    /// Main Page Content
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        /// Top Section
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 40.r),
                          color: lightGrey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              /// Retrieve Order Button
                              DefaultButton(
                                title: "Retrieve Order",
                                color: lightBlue,
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) =>
                                        DialogUtils.getEnterPinDialog(
                                      context: context,
                                      onSubmit: () {
                                        Navigator.of(context).pop();
                                        showDialog(
                                          context: context,
                                          builder: (context) => DialogUtils
                                              .getRetrieveOrderDialog(
                                            context: context,
                                            onGo: () {
                                              Navigator.of(context).pop();
                                              _mainPageCubit.switchPage(
                                                  RetrieveOrderPage.tag);
                                            },
                                            onScanQr: () {
                                              Navigator.of(context).pop();
                                              _mainPageCubit.switchScan(true);
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),

                              SizedBox(width: 80.r),

                              /// Retrieve Reward Aphive points Button
                              DefaultButton(
                                title: "Reward Aphive points",
                                color: darkGrey,
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) =>
                                        DialogUtils.getEnterPinDialog(
                                            context: context, onSubmit: () {
                                          Navigator.of(context).pop();
                                          _mainPageCubit.switchPage(RewardPointsPage.tag);
                                        },),
                                  );
                                },
                              ),

                              SizedBox(width: 80.r),

                              /// Retrieve Receive payments Button
                              DefaultButton(
                                title: "Receive payments",
                                color: accentGreen,
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) =>
                                        DialogUtils.getEnterPinDialog(
                                          context: context, onSubmit: () {
                                          Navigator.of(context).pop();
                                          _mainPageCubit.switchPage(ReceivePaymentPage.tag);
                                        },),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),

                        /// Sub Page Area
                        Expanded(
                          child: getCurrentPage(mainPageState.currentPage),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            /// Qr Scan Widget
            Visibility(
              visible: mainPageState.isScan ?? false,
              replacement: Container(),
              child: Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    _mainPageCubit.switchPageAndScan(
                      pageTag: RetrieveOrderPage.tag,
                      isScan: false,
                    );
                  },
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Icon(
                        Icons.center_focus_strong,
                        size: MediaQuery.of(context).size.shortestSide * 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  /// Gets current sub page
  getCurrentPage(String currentPage) {
    switch (currentPage) {
      case HomePage.tag:
        return HomePage();
      case OffersPage.tag:
        return OffersPage();
      case RetrieveOrderPage.tag:
        return RetrieveOrderPage();
      case RewardPointsPage.tag:
        return RewardPointsPage();
      case ReceivePaymentPage.tag:
        return ReceivePaymentPage();
      default:
        return Container();
    }
  }
}
