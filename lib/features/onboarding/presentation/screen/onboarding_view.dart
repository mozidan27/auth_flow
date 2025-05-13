import 'package:auth_flow/core/utils/app_assets.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
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
              SvgPicture.asset(Assets.imagesLogo, width: 100),
              SizedBox(
                width: double.infinity,
                child: SvgPicture.asset(
                  Assets.imagesOnboarding,
                  fit: BoxFit.cover,
                ),
              ),

              Text(
                "Let's get Started",
                style: CustomTextStyles.pacifico400style64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
