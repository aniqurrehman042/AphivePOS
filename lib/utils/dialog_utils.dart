import 'package:aphive_pos/data/models/event.dart';
import 'package:aphive_pos/theme/decorations.dart';
import 'package:aphive_pos/theme/text_styles.dart';
import 'package:aphive_pos/theme/theme_colors.dart';
import 'package:aphive_pos/views/global/bordered_text_field.dart';
import 'package:aphive_pos/views/global/default_button.dart';
import 'package:aphive_pos/views/global/square_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class DialogUtils {
  static Widget getEventDetailsDialog(BuildContext context, Event event) {
    /// Dialog
    return Dialog(
      /// Border Radius
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),

      /// Container for size and padding of dialog
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.85,
        padding: EdgeInsets.symmetric(horizontal: 120.r, vertical: 60.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Top row for title and close button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Placeholder for alignment
                Opacity(
                  opacity: 0,
                  child: Icon(
                    Icons.close,
                    size: 120.r,
                  ),
                ),

                /// Dialog Heading
                Text(
                  'Event details',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.getEventDetailsHeadingTextStyle(),
                ),

                /// Close Button
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.close,
                    size: 120.r,
                  ),
                )
              ],
            ),

            SizedBox(height: 80.r),

            /// Event Name
            Text(
              event.eventName,
              style: AppTextStyles.getEventDetailsTextStyle(),
            ),

            SizedBox(height: 50.r),

            /// Event Fields
            Text(
              event.field1,
              style: AppTextStyles.getEventDetailsTextStyle(),
            ),

            SizedBox(height: 50.r),

            Text(
              event.field2,
              style: AppTextStyles.getEventDetailsTextStyle(),
            ),

            SizedBox(height: 50.r),

            Text(
              event.field3,
              style: AppTextStyles.getEventDetailsTextStyle(),
            ),

            SizedBox(height: 50.r),

            Text(
              event.field4,
              style: AppTextStyles.getEventDetailsTextStyle(),
            ),

            SizedBox(height: 50.r),

            Text(
              event.field5,
              style: AppTextStyles.getEventDetailsTextStyle(),
            ),
          ],
        ),
      ),
    );
  }

  static Widget getEnterPinDialog({
    BuildContext context,
    void Function() onSubmit,
  }) {
    return Dialog(
      /// Border Radius
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),

      /// Container for sizing and padding
      child: Container(
        width: MediaQuery.of(context).size.width * 0.60,
        height: MediaQuery.of(context).size.height * 0.50,
        padding: EdgeInsets.symmetric(
          horizontal: 150.r,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 50.r,
                vertical: 30.r,
              ),
              decoration: AppDecorations.getRoundedBorderShapeDecoration(),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: AppDecorations.getNoBorderInputDecoration(
                    hint: 'Enter PIN code'),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 42.nsp,
                ),
              ),
            ),
            SizedBox(
              height: 100.w,
            ),

            /// Go button
            SquareButton(
              color: accentGreen,
              onTap: onSubmit,
              title: 'GO',
              fontSize: 42.nsp,
            )
          ],
        ),
      ),
    );
  }

  static Widget getRetrieveOrderDialog({
    BuildContext context,
    void Function() onGo,
    void Function() onScanQr,
  }) {
    return Dialog(
      /// Border Radius
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),

      /// Container for padding
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        padding: EdgeInsets.symmetric(
          horizontal: 80.r,
          vertical: 80.r,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Retrieve order heading
            Text(
              'Retrieve order',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 52.nsp,
              ),
            ),

            SizedBox(height: 100.h),

            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.r,
                vertical: 18.r,
              ),
              decoration: AppDecorations.getRoundedGreyShapeDecoration(),

              /// order ID Text Field
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: AppDecorations.getNoBorderInputDecoration(
                    hint: 'Enter order ID'),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.nsp,
                ),
              ),
            ),

            SizedBox(height: 50.h),

            /// Go Button
            DefaultButton(
              title: 'Go',
              color: accentGreen,
              onTap: onGo,
              fontSize: 42.nsp,
              fontWeight: FontWeight.w400,
            ),

            SizedBox(height: 60.h),

            /// or text
            Text(
              'or',
              textAlign: TextAlign.center,
              style: AppTextStyles.getNormalTextStyle(),
            ),

            SizedBox(height: 60.h),

            /// Scan QR code Button
            DefaultButton(
              title: 'Scan QR code',
              color: primaryBlue,
              onTap: onScanQr,
              fontSize: 42.nsp,
              fontWeight: FontWeight.w400,
            ),

            SizedBox(height: 120.h),

            /// Exit Text
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Exit',
                textAlign: TextAlign.center,
                style: AppTextStyles.getNormalTextStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget getMessageDialog(
      {BuildContext context, String message, void Function() onExit}) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        padding: EdgeInsets.only(
          top: 150.h,
          bottom: 75.h,
          left: 50.w,
          right: 50.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Message Text
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyles.getLargeTextStyle(),
            ),

            /// Exit Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: onExit,
                  child: Text(
                    'Exit',
                    style: AppTextStyles.getLargeBlueTextStyle(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  static Widget getEditQuantityDialog(
      {BuildContext context, String orderName, void Function() onExit}) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        padding: EdgeInsets.only(
          top: 150.h,
          bottom: 150.h,
          left: 150.w,
          right: 150.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Message Text
            Text(
              orderName,
              textAlign: TextAlign.center,
              style: AppTextStyles.getNormalTextStyle(),
            ),

            SizedBox(height: 80.r),

            /// Enter new quantity button
            BorderedTextField(
              inputType: TextInputType.number,
              hint: 'Enter new quantity',
            ),

            SizedBox(height: 80.r),

            /// Exit Button
            DefaultButton(
              onTap: onExit,
              color: primaryBlue,
              title: 'Confirm',
            )
          ],
        ),
      ),
    );
  }

  static Widget getQrDialog(
      {BuildContext context,
      String id,
      void Function() onQrClick,
      void Function() onExit}) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        padding: EdgeInsets.only(
          top: 150.h,
          bottom: 75.h,
          left: 50.w,
          right: 50.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Qr Icon
            GestureDetector(
              onTap: onQrClick,
              child: Icon(
                Icons.qr_code,
                size: 500.r,
              ),
            ),

            SizedBox(height: 100.h),

            /// ID Text
            Text(
              'ID: $id',
              textAlign: TextAlign.center,
              style: AppTextStyles.getLargeBlueTextStyle(),
            ),

            /// Exit Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: onExit,
                  child: Text(
                    'Exit',
                    style: AppTextStyles.getLargeBlueTextStyle(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
