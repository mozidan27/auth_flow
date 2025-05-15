import 'package:auth_flow/core/funcations/navigation.dart';
import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_assets.dart';
import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_strings.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:auth_flow/features/auth/presentation/widgets/login_or_signup_text.dart';
import 'package:auth_flow/features/auth/presentation/widgets/or_divider_widget.dart';
import 'package:auth_flow/features/auth/presentation/widgets/sign_in_form_field.dart';
import 'package:auth_flow/features/auth/presentation/widgets/third_parties_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mintGreen,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SvgPicture.asset(Assets.imagesLogo, width: 120),
              ),
              verticalSpace(17.5),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SizedBox(
                  width: double.infinity,
                  child: SvgPicture.asset(
                    Assets.imagesSignin,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              verticalSpace(50),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.2),
                      spreadRadius: 8,
                      blurRadius: 12,
                      offset: Offset(0, 8), // changes position of shadow
                    ),
                  ],
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      verticalSpace(24),
                      Text(
                        AppStrings.logIn,
                        style: CustomTextStyles.catamaran26DarkGreybold,
                      ),
                      verticalSpace(10),
                      Text(
                        AppStrings.welcomeback,
                        style: CustomTextStyles.noto14WhiteMedium.copyWith(
                          color: AppColor.grey,
                        ),
                      ),
                      verticalSpace(24),
                      //! form field
                      SignInFormField(),
                      verticalSpace(17),
                      GestureDetector(
                        onTap: () => customnavigate(context, '/forgotpass'),
                        child: Text(
                          "Forget Password?",
                          style: CustomTextStyles.noto14BlueRegular600,
                        ),
                      ),
                      verticalSpace(33),
                      OrDividerWidget(),
                      verticalSpace(24),
                      ThirdPartiesButtons(
                        label: "Login with Google",
                        logo: Assets.imagesGoogle,
                      ),
                      verticalSpace(20),
                      ThirdPartiesButtons(
                        label: "Login with Facebook",
                        logo: Assets.imagesFb,
                      ),
                      verticalSpace(20),
                      ThirdPartiesButtons(
                        label: "Login with Apple",
                        logo: Assets.imagesApple,
                      ),
                      verticalSpace(24),
                      SizedBox(child: Divider(color: AppColor.lightGrey)),
                      verticalSpace(24),

                      LogInOrSignUpText(
                        text1: "First time here? ",
                        text2: "Sign up for free",
                        onTap: () {
                          customReplacementNavigate(context, "/signup");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
