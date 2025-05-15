import 'package:auth_flow/features/auth/presentation/screen/forgot_password_view.dart';
import 'package:auth_flow/features/auth/presentation/screen/log_in_View.dart';
import 'package:auth_flow/features/auth/presentation/screen/sign_up_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/login': (context) => const LogInView(),
    '/forgotpass': (context) => const ForgotPasswordView(),
    '/signup': (context) => const SignUpView(),
  };
}
