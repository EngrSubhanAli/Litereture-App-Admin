import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get_navigation/src/routes/get_route.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:literature_app_admin/utils/routes/routes_name.dart';
import 'package:literature_app_admin/view/mian_screen/main_screen.dart';
import 'package:literature_app_admin/view/sign_in_screen/sign_in_screen.dart';
import 'package:literature_app_admin/view/splash_screen/splash_screen.dart';

class Routes {
  //Used For GetX Route
  static appRoutes() => [
        GetPage(
          name: RoutesName.splash,
          page: () => const SplashScreen(),
          // transitionDuration: const Duration(milliseconds: 350),
          transition: Transition.fadeIn,
        ),
        // GetPage(
        //   name: RoutesName.mainscreen,
        //   page: () => const MainAdminScreen(),
        //   // transitionDuration: const Duration(milliseconds: 350),
        //   transition: Transition.fadeIn,
        // ),
      ];

  //Used For Material Page Route
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
      case RoutesName.mainscreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MainAdminScreen());
      case RoutesName.signIn:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
