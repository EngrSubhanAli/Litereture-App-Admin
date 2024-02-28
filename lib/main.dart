import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:literature_app_admin/utils/routes/routes.dart';
import 'package:literature_app_admin/utils/routes/routes_name.dart';
import 'package:literature_app_admin/view/mian_screen/main_screen.dart';
import 'Core/multiproviders_list/provider_list.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  // Design width and height
  static const double _designWidth = 1280;
  static const double _designHeight = 832;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(MyApp._designWidth, MyApp._designHeight),
        builder: (context, widget) {
          return MultiProvider(
            providers: providers,
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              fallbackLocale: const Locale('en', 'US'),
              textDirection: TextDirection.ltr,
              locale: const Locale('en', 'US'),
              theme: ThemeData(
                fontFamily: 'NunitoSans', //
                primarySwatch: Colors.blue,
              ),
              // // home: const SplashScreen(),
              // getPages: Routes
              //     .appRoutes(), // >>>>>>> use it if you want to use GetX<<<<<<<<<<<<
              // home: const MainAdminScreen(),
              initialRoute: RoutesName.splash,
              onGenerateRoute: Routes.generateRoute,
            ),
          );
        });
  }
}
