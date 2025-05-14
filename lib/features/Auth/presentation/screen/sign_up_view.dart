import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_assets.dart';
import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_strings.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:auth_flow/core/widgets/custom_bottom.dart';
import 'package:auth_flow/core/widgets/my_custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                    Assets.imagesSignup,
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
                        AppStrings.signUp,
                        style: CustomTextStyles.catamaran26DarkGreybold,
                      ),
                      verticalSpace(10),
                      Text(
                        AppStrings.helloThere,
                        style: CustomTextStyles.noto14WhiteMedium.copyWith(
                          color: AppColor.grey,
                        ),
                      ),
                      verticalSpace(24),
                      MyCustomTextFormField(hint: "First name"),
                      verticalSpace(26),
                      MyCustomTextFormField(hint: "Last name"),
                      verticalSpace(26),
                      MyCustomTextFormField(hint: "Example@gmail.com"),
                      verticalSpace(26),
                      MyCustomTextFormField(
                        hint: "Password",
                        suffixIcon: SvgPicture.asset(
                          Assets.imagesEyeoff,
                          height: 15,
                          width: 17,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      verticalSpace(16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Checkbox(
                            side: BorderSide(color: AppColor.lightGrey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            value: false,
                            onChanged: (value) {},
                            activeColor: AppColor.blue,
                          ),

                          Flexible(
                            child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.clip,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I agree to platform ",
                                    style: CustomTextStyles.noto14WhiteMedium
                                        .copyWith(color: AppColor.abitDarkGrey),
                                  ),
                                  TextSpan(
                                    text: "Terms of service ",
                                    style: CustomTextStyles.noto14BlueRegular600
                                        .copyWith(fontWeight: FontWeight.bold),
                                    recognizer:
                                        TapGestureRecognizer()..onTap = () {},
                                  ),
                                  TextSpan(
                                    text: "and ",
                                    style: CustomTextStyles.noto14BlueRegular600
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "Privacy Policy",
                                    style: CustomTextStyles.noto14BlueRegular600
                                        .copyWith(fontWeight: FontWeight.bold),
                                    recognizer:
                                        TapGestureRecognizer()..onTap = () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(24),
                      MyCustomButtom(text: AppStrings.create),
                      verticalSpace(32),

                      SizedBox(child: Divider(color: AppColor.lightGrey)),
                      verticalSpace(32),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Joined us before? ",
                              style: CustomTextStyles.noto14WhiteMedium
                                  .copyWith(color: AppColor.abitDarkGrey),
                            ),
                            TextSpan(
                              text: "Login",
                              style: CustomTextStyles.noto14BlueRegular600
                                  .copyWith(fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
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
