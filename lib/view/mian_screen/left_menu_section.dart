import 'package:flutter/material.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:literature_app_admin/Core/multiproviders_list/main_selected_index.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class LeftMenuSection extends StatefulWidget {
  const LeftMenuSection({super.key});

  @override
  State<LeftMenuSection> createState() => _LeftMenuSectionState();
}

class _LeftMenuSectionState extends State<LeftMenuSection> {
  final List<MenuItem> _menuItems = [
    MenuItem(icon: storiesicon, label: 'Stories'),
    MenuItem(icon: usersicon, label: 'Users'),
    MenuItem(icon: blockedicon, label: 'Blocked Users'),
    MenuItem(icon: profileicon, label: 'Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    final mainIndexProvider =
        Provider.of<MainCurrentIndex>(context, listen: true);
    return Expanded(
      flex: 2,
      child: Container(
        height: 1.sh,
        // width: 0.2.sw,
        color: whiteColor,
        child: Column(
          children: [
            VerticalSizedBox(vertical: 40.h),
            Image.asset(logo, width: 90.w, height: 55.h),
            VerticalSizedBox(vertical: 10.h),
            CustomText(
              text: "LITERATURE.AI",
              fontSize: 22.sp,
              color: blackColor,
              fontWeight: FontWeight.bold,
            ),
            VerticalSizedBox(vertical: 25.h),
            SizedBox(
              height: 0.6.sh,
              width: 0.18.sw,
              child: ListView.builder(
                itemCount: _menuItems.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        mainIndexProvider.setIndex(index);
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.sp),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 60.h,
                        width: 220.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10
                              .sp), // Adjust the value for more or less rounding
                          gradient: mainIndexProvider.maincurrentIndex == index
                              ? const LinearGradient(
                                  colors: [
                                    Color(
                                        0xFFB463FD), // Replace with your first color
                                    Color(0xFF6D94FD),
                                    Color(
                                        0xFF71C5FF), // Replace with your third color
                                    Color(
                                        0xFF3FFAFE), // Replace with your third color
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                )
                              : const LinearGradient(
                                  colors: [
                                    whiteColor, // Replace with your first color
                                    whiteColor,
                                    whiteColor // Replace with your third color
                                    // Replace with your third color
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                        ),
                        child: Row(
                          children: [
                            HorizontalSizedBox(horizontalSpace: 20.w),
                            Image.asset(
                              _menuItems[index].icon,
                              height: 25.h,
                              width: 25.w,
                              color: mainIndexProvider.maincurrentIndex == index
                                  ? whiteColor
                                  : greyColor,
                            ),
                            HorizontalSizedBox(horizontalSpace: 10.w),
                            CustomText(
                              text: _menuItems[index].label,
                              fontSize: 16.sp,
                              color: mainIndexProvider.maincurrentIndex == index
                                  ? whiteColor
                                  : greyColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
                width: 0.16.sw,
                height: 85.h,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(20), // Set rounded corner radius
                  boxShadow: [
                    BoxShadow(
                      color: blackColor.withOpacity(0.08), // Set shadow color
                      spreadRadius: 5, // Set shadow spread radius
                      blurRadius: 7, // Set shadow blur radius
                      offset: Offset(0, 3), // Set shadow offset
                    ),
                  ],
                  border: Border.all(
                    color: blackColor.withOpacity(0.35), // Set border color
                    width: 2, // Set border width
                  ),
                  color: Colors.white, // Set background color
                ),
                child: Row(
                  children: [
                    HorizontalSizedBox(horizontalSpace: 20.w),
                    Image.asset(
                      logout,
                      height: 40.h,
                      width: 40.w,
                    ),
                    HorizontalSizedBox(horizontalSpace: 20.w),
                    CustomText(
                      text: "Logout",
                      fontSize: 20.sp,
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                )),
            // VerticalSizedBox(vertical: 20.h),
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  final String icon;
  final String label;

  MenuItem({required this.icon, required this.label});
}
