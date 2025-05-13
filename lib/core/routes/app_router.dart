import 'package:auth_flow/features/Auth/presentation/screen/sign_in_View.dart';
import 'package:auth_flow/features/Auth/presentation/screen/sign_up_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/signin': (context) => const SignInView(),
    '/signup': (context) => const SignUpView(),
  };
}
