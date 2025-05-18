import 'package:auth_flow/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

customToast({required String meg, Color? backgroundColor}) {
  Fluttertoast.showToast(
    msg: meg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: backgroundColor ?? AppColor.green,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
