import 'package:auth_flow/core/funcations/custom_toast.dart';
import 'package:auth_flow/core/funcations/navigation.dart';
import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_assets.dart';
import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_strings.dart';
import 'package:auth_flow/core/widgets/custom_bottom.dart';
import 'package:auth_flow/core/widgets/my_custom_text_form_field.dart';
import 'package:auth_flow/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:auth_flow/features/auth/presentation/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SignInFormField extends StatelessWidget {
  const SignInFormField({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInFauiler) {
          customToast(meg: state.errorMessage, backgroundColor: AppColor.red);
        } else if (state is SignInSuccess) {
          FirebaseAuth.instance.currentUser!.emailVerified
              ? customReplacementNavigate(context, '/profile')
              : customToast(
                meg: "Please verify your email",
                backgroundColor: AppColor.red,
              );
        }
      },
      builder: (context, state) {
        return Form(
          key: authCubit.signInFromKey,
          child: Column(
            children: [
              MyCustomTextFormField(
                hint: "Example@gmail.com",
                obscureText: false,
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
              ),
              verticalSpace(26),
              MyCustomTextFormField(
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

              verticalSpace(24),
              state is SignInLoading
                  ? Center(
                    child: CircularProgressIndicator(color: AppColor.blue),
                  )
                  : MyCustomButtom(
                    text: AppStrings.logIn,
                    onTap: () {
                      if (authCubit.signInFromKey.currentState!.validate()) {
                        authCubit.signInWithEmailAndPassword();
                      }
                    },
                  ),
            ],
          ),
        );
      },
    );
  }
}
