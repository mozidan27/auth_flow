import 'package:auth_flow/core/utils/app_color.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static final soraSemi48DarkGreystyle900 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w900,
    color: AppColor.darkGrey,
    fontFamily: "SoraSemi",
  );
  static final noto14WhiteMedium = TextStyle(
    fontSize: 14,
    color: AppColor.white,
    fontWeight: FontWeight.w900,
    fontFamily: "Noto",
  );
  static final noto14BlueRegular600 = TextStyle(
    fontSize: 14,
    color: AppColor.blue,
    fontWeight: FontWeight.w600,
    fontFamily: "Noto",
  );
  static final sora16GreyRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColor.grey,
    fontFamily: "Sora",
  );
  static final catamaran26DarkGreybold = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: AppColor.darkGrey,
    fontFamily: "Catamaran",
  );
}
