import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_assets.dart';
import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_strings.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:auth_flow/core/widgets/custom_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8fafc),
      // appBar: AppBar(title: Text("Appso"), backgroundColor: Colors.grey),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(Assets.imagesLogo, width: 120),
              SizedBox(
                width: double.infinity,
                child: SvgPicture.asset(
                  Assets.imagesOnboarding,
                  fit: BoxFit.cover,
                ),
              ),
              verticalSpace(50),
              Text(
                AppStrings.letsGetStarted,
                style: CustomTextStyles.soraSemi48DarkGreystyle900,
              ),
              verticalSpace(20),
              Text(
                AppStrings.everythingStart,
                style: CustomTextStyles.sora16GreyRegular,
              ),
              verticalSpace(120),

              CustomButtom(text: AppStrings.login, onTap: () {}),
              verticalSpace(16),
              CustomButtom(
                colors: AppColor.darkGrey,
                text: AppStrings.signUp,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
