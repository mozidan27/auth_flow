import 'package:auth_flow/core/utils/app_color.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static final soraSemi48DarkGreystyle900 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w900,
    color: AppColor.darkGrey,
    fontFamily: "SoraSemi",
  );
  static final soraSemi16LightGrey = TextStyle(
    fontSize: 16,
    color: AppColor.lightGrey,
    fontFamily: "SoraSemi",
  );
  static final sora16GreyRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColor.grey,
    fontFamily: "Sora",
  );
}
