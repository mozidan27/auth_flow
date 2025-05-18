import 'package:auth_flow/features/auth/presentation/screen/forgot_password_view.dart';
import 'package:auth_flow/features/auth/presentation/screen/log_in_View.dart';
import 'package:auth_flow/features/auth/presentation/screen/sign_up_view.dart';
import 'package:auth_flow/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:auth_flow/features/profile/presentation/screen/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/login':
        (context) => BlocProvider(
          create: (context) => AuthCubit(),
          child: const LogInView(),
        ),
    '/forgotpass':
        (context) => BlocProvider(
          create: (context) => AuthCubit(),
          child: const ForgotPasswordView(),
        ),
    '/signup':
        (context) => BlocProvider(
          create: (context) => AuthCubit(),
          child: const SignUpView(),
        ),
    '/profile': (context) => const ProfileView(),
  };
}
