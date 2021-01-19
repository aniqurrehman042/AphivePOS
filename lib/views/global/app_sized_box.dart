import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

enum SizedBoxDimension {
  Height05,
  Height1,
  Height2,
  Height3,
  Height4,
  Height5,
  Height6,
  Height7,
  Height8,
  Width05,
  Width1,
  Width2,
  Width3,
  Width4,
  Width5,
  Width6,
  Width7,
  Width8,
}

class AppSizedBox extends StatelessWidget {
  factory AppSizedBox.height05() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Height05);
  }

  factory AppSizedBox.height1() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Height1);
  }

  factory AppSizedBox.height2() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Height2);
  }

  factory AppSizedBox.height3() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Height3);
  }

  factory AppSizedBox.height4() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Height4);
  }

  factory AppSizedBox.height5() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Height5);
  }

  factory AppSizedBox.height6() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Height6);
  }

  factory AppSizedBox.height7() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Height7);
  }

  factory AppSizedBox.height8() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Height8);
  }

  factory AppSizedBox.width05() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Width05);
  }

  factory AppSizedBox.width1() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Width1);
  }

  factory AppSizedBox.width2() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Width2);
  }

  factory AppSizedBox.width3() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Width3);
  }

  factory AppSizedBox.width4() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Width4);
  }

  factory AppSizedBox.width5() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Width5);
  }

  factory AppSizedBox.width6() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Width6);
  }

  factory AppSizedBox.width7() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Width7);
  }

  factory AppSizedBox.width8() {
    return _getSizedBoxWithDimension(SizedBoxDimension.Width8);
  }

  AppSizedBox._({this.height, this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }

  static AppSizedBox _getSizedBoxWithDimension(SizedBoxDimension sizedBoxDimension) {
    switch(sizedBoxDimension) {
      case SizedBoxDimension.Height05:
        return AppSizedBox._(height: 5.h);
      case SizedBoxDimension.Height1:
        return AppSizedBox._(height: 10.h);
      case SizedBoxDimension.Height2:
        return AppSizedBox._(height: 20.h);
      case SizedBoxDimension.Height3:
        return AppSizedBox._(height: 30.h);
      case SizedBoxDimension.Height4:
        return AppSizedBox._(height: 40.h);
      case SizedBoxDimension.Height5:
        return AppSizedBox._(height: 50.h);
      case SizedBoxDimension.Height6:
        return AppSizedBox._(height: 60.h);
      case SizedBoxDimension.Height7:
        return AppSizedBox._(height: 70.h);
      case SizedBoxDimension.Height8:
        return AppSizedBox._(height: 80.h);
      case SizedBoxDimension.Width05:
        return AppSizedBox._(width: 5.w);
      case SizedBoxDimension.Width1:
        return AppSizedBox._(width: 10.w);
      case SizedBoxDimension.Width2:
        return AppSizedBox._(width: 20.w);
      case SizedBoxDimension.Width3:
        return AppSizedBox._(width: 30.w);
      case SizedBoxDimension.Width4:
        return AppSizedBox._(width: 40.w);
      case SizedBoxDimension.Width5:
        return AppSizedBox._(width: 50.w);
      case SizedBoxDimension.Width6:
        return AppSizedBox._(width: 60.w);
      case SizedBoxDimension.Width7:
        return AppSizedBox._(width: 70.w);
      case SizedBoxDimension.Width8:
        return AppSizedBox._(width: 80.w);
      default:
        return AppSizedBox._();
    }
  }
}
