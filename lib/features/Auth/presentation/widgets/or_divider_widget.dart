import 'package:auth_flow/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Divider(color: AppColor.lightGrey)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text("Or"),
        ),
        Expanded(child: Divider(color: AppColor.lightGrey)),
      ],
    );
  }
}
