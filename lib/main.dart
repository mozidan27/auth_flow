import 'package:auth_flow/core/routes/app_router.dart';
import 'package:auth_flow/features/auth/presentation/screen/sign_up_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Appso());
}

class Appso extends StatelessWidget {
  const Appso({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpView(),
      debugShowCheckedModeBanner: false,
      routes: buildAppRoutes(),
    );
  }
}
