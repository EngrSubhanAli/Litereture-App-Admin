import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:literature_app_admin/Core/multiproviders_list/main_selected_index.dart';
import 'package:literature_app_admin/models/post_data_model.dart';
import 'package:literature_app_admin/view/blocked_users/blocked_users.dart';
import 'package:literature_app_admin/view/mian_screen/left_menu_section.dart';
import 'package:literature_app_admin/view/profile_section/profile_section.dart';
import 'package:literature_app_admin/view/stories_section/stories_section.dart';
import 'package:literature_app_admin/view/user_detial_section/user_detail_section.dart';
import 'package:literature_app_admin/view/users_section/users_section.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class MainAdminScreen extends StatefulWidget {
  const MainAdminScreen({super.key});

  @override
  State<MainAdminScreen> createState() => _MainAdminScreenState();
}

class _MainAdminScreenState extends State<MainAdminScreen> {
  @override
  Widget build(BuildContext context) {
    final mainCurrentIndexProvider = Provider.of<MainCurrentIndex>(context);
    final postprovider = Provider.of<PostItems>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Row(
          children: [
            const LeftMenuSection(),
            mainCurrentIndexProvider.maincurrentIndex == 0
                ? const StoriesSection()
                : mainCurrentIndexProvider.maincurrentIndex == 1
                    ? const UsersSection()
                    : mainCurrentIndexProvider.maincurrentIndex == 2
                        ? const BlockedUserSection()
                        : mainCurrentIndexProvider.maincurrentIndex == 3
                            ? const ProfileSection()
                            : UserDetialSection(index: postprovider.userIndex),
          ],
        ),
      ),
    ));
  }
}
