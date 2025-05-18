import 'package:auth_flow/app/appso_app.dart';
import 'package:auth_flow/core/database/cache/cache_helper.dart';
import 'package:auth_flow/core/funcations/check_auth_state.dart';
import 'package:auth_flow/core/services/service_locator.dart';
import 'package:auth_flow/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  checkAuthState();
  runApp(const Appso());
}
