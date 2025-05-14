import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdPartiesButtons extends StatelessWidget {
  const ThirdPartiesButtons({
    super.key,
    required this.label,
    required this.logo,
  });
  final String label;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 13, bottom: 13, left: 16, right: 76),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 1,
            blurRadius: 9,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColor.lightGrey),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(logo),
            horizontalSpace(16),
            VerticalDivider(color: AppColor.lightGrey, width: 1.5),
            horizontalSpace(16),

            Expanded(
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: CustomTextStyles.noto14WhiteMedium.copyWith(
                  color: AppColor.abitDarkGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
