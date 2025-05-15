import 'package:auth_flow/core/database/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  //! auth
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
