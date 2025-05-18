import 'package:auth_flow/core/funcations/custom_toast.dart';
import 'package:auth_flow/core/funcations/navigation.dart';
import 'package:auth_flow/core/helper/spacing.dart';
import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/core/utils/app_strings.dart';
import 'package:auth_flow/core/utils/app_text_style.dart';
import 'package:auth_flow/core/widgets/custom_bottom.dart';
import 'package:auth_flow/core/widgets/my_custom_text_form_field.dart';
import 'package:auth_flow/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:auth_flow/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordFormField extends StatelessWidget {
  const ForgotPasswordFormField({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is PasswordResetEmailFauiler) {
          customToast(meg: state.errorMessage);
        } else if (state is PasswordResetEmailSuccess) {
          customToast(meg: "We sent you an email, please check your inbox");
          customReplacementNavigate(context, '/login');
        }
      },
      builder: (context, state) {
        return Form(
          key: authCubit.resetPasswordFromKey,
          child: Column(
            children: [
              verticalSpace(24),
              Text(
                AppStrings.forgot,
                style: CustomTextStyles.catamaran26DarkGreybold,
              ),
              verticalSpace(10),
              Text(
                textAlign: TextAlign.center,
                AppStrings.dontworry,
                style: CustomTextStyles.noto14WhiteMedium.copyWith(
                  color: AppColor.grey,
                ),
              ),
              verticalSpace(32),
              MyCustomTextFormField(
                onChanged: (email) {
                  authCubit.emailAddress = email;
                },
                hint: "Insert email address",
                obscureText: false,
              ),
              verticalSpace(124),
              state is PasswordResetEmailLoading
                  ? Center(
                    child: CircularProgressIndicator(color: AppColor.blue),
                  )
                  : MyCustomButtom(
                    text: AppStrings.submit,
                    onTap: () {
                      if (authCubit.resetPasswordFromKey.currentState!
                          .validate()) {
                        authCubit.sendPasswordResetEmail();
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
