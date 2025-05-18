import 'package:auth_flow/core/funcations/custom_toast.dart';
import 'package:auth_flow/core/funcations/navigation.dart';
import 'package:auth_flow/core/funcations/validation_methods.dart';
import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_assets.dart';
import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_strings.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:auth_flow/core/widgets/custom_bottom.dart';
import 'package:auth_flow/core/widgets/my_custom_text_form_field.dart';
import 'package:auth_flow/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:auth_flow/features/auth/presentation/cubit/auth_state.dart';
import 'package:auth_flow/features/auth/presentation/widgets/check_box_widget.dart';
import 'package:auth_flow/features/auth/presentation/widgets/login_or_signup_text.dart';
import 'package:auth_flow/features/auth/presentation/widgets/terms_and_service_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SignUpFormField extends StatelessWidget {
  const SignUpFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpFauiler) {
          customToast(meg: state.errorMessage, backgroundColor: AppColor.red);
        } else if (state is SignUpSuccess) {
          customToast(meg: "Successfully, Check your email.");
          customReplacementNavigate(context, '/login');
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signUpFromKey,
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
              MyCustomTextFormField(
                obscureText: false,
                validator: nameValidation,
                hint: "First name",
                onChanged: (firstName) {
                  authCubit.firstName = firstName;
                },
              ),
              verticalSpace(26),
              MyCustomTextFormField(
                obscureText: false,
                validator: nameValidation,
                hint: "Last name",
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              verticalSpace(26),
              MyCustomTextFormField(
                obscureText: false,
                validator: emailValidation,
                hint: "Example@gmail.com",
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
              ),
              verticalSpace(26),
              MyCustomTextFormField(
                validator: passwordValidation,
                onChanged: (password) {
                  authCubit.password = password;
                },
                hint: "Password",
                suffixIcon:
                    authCubit.obscurePasswordTextValue == true
                        ? IconButton(
                          onPressed: authCubit.obscurePasswordText,
                          icon: SvgPicture.asset(
                            Assets.imagesEyeon,
                            height: 17,
                            width: 17,
                            fit: BoxFit.scaleDown,
                          ),
                        )
                        : IconButton(
                          onPressed: authCubit.obscurePasswordText,
                          icon: SvgPicture.asset(
                            Assets.imagesEyeoff,
                            height: 17,
                            width: 17,
                            fit: BoxFit.scaleDown,
                          ),
                        ),

                obscureText: authCubit.obscurePasswordTextValue!,
              ),
              verticalSpace(16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [CheckBoxWidget(), TermsAndServiceText()],
              ),
              verticalSpace(24),
              state is SignUpLoading
                  ? Center(
                    child: CircularProgressIndicator(color: AppColor.blue),
                  )
                  : MyCustomButtom(
                    colors:
                        authCubit.termsAndServiceCheckBoxValue == false
                            ? AppColor.lightGrey
                            : null,
                    text: AppStrings.create,
                    onTap: () {
                      if (authCubit.termsAndServiceCheckBoxValue == true) {
                        if (authCubit.signUpFromKey.currentState!.validate()) {
                          authCubit.signUpWithEmailAndPassword();
                        }
                      }
                    },
                  ),
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
      },
    );
  }
}
