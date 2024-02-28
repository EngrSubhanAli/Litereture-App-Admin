// ignore_for_file: depend_on_referenced_packages

import 'package:literature_app_admin/Core/multiproviders_list/main_selected_index.dart';
import 'package:literature_app_admin/models/post_data_model.dart';
import 'package:literature_app_admin/view_models/admin_side_view_models/sign_in_view_model.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

//
/// MultiProvider is a provider that merges multiple providers into one.
///
List<SingleChildWidget> providers = [
  // view models for admin side
  ChangeNotifierProvider(create: (_) => AdminSignInViewModel()),
  ChangeNotifierProvider(create: (_) => MainCurrentIndex()),
  ChangeNotifierProvider(create: (_) => PostItems()),
  ChangeNotifierProvider(create: (_) => AdminSignInViewModel()),
];
