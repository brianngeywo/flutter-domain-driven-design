import 'package:auto_route/auto_route_annotations.dart';
import 'package:ddd_course/presentation/sign_in/sign_in_page.dart';
import 'package:ddd_course/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true, routes: [
  AutoRoute(
    page: SplashPage,
    initial: true,
  ),
    AutoRoute(
    page: SignInPage,
  )
])
class $Router {}
