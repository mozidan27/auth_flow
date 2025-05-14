import 'package:auth_flow/features/auth/presentation/screen/log_in_View.dart';
import 'package:auth_flow/features/auth/presentation/screen/sign_up_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/login': (context) => const LogInView(),
    '/signup': (context) => const SignUpView(),
  };
}
