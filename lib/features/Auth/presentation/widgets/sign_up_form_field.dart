import 'package:auth_flow/core/funcations/navigation.dart';
import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_assets.dart';
import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_strings.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:auth_flow/core/widgets/custom_bottom.dart';
import 'package:auth_flow/core/widgets/my_custom_text_form_field.dart';
import 'package:auth_flow/features/auth/presentation/widgets/login_or_signup_text.dart';
import 'package:auth_flow/features/auth/presentation/widgets/terms_and_service_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpFormField extends StatelessWidget {
  const SignUpFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
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

              TermsAndServiceText(),
            ],
          ),
          verticalSpace(24),
          MyCustomButtom(text: AppStrings.create, onTap: () {}),
          verticalSpace(32),

          SizedBox(child: Divider(color: AppColor.lightGrey)),
          verticalSpace(32),
          LogInOrSignUpText(
            text1: 'Joined us before? ',
            text2: 'Login',
            onTap: () {
              customReplacementNavigate(context, "/login");
            },
          ),
        ],
      ),
    );
  }
}
