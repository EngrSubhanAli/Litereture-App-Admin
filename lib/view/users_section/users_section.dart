import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:literature_app_admin/Core/multiproviders_list/main_selected_index.dart';
import 'package:literature_app_admin/models/post_data_model.dart';
import 'package:literature_app_admin/view/mian_screen/main_header_all_sections.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

class UsersSection extends StatefulWidget {
  const UsersSection({super.key});

  @override
  State<UsersSection> createState() => _UsersSectionState();
}

class _UsersSectionState extends State<UsersSection> {
  @override
  Widget build(BuildContext context) {
    final mainCurrentIndexProvider = Provider.of<MainCurrentIndex>(context);
    final userprovider = Provider.of<PostItems>(context);
    return Expanded(
      flex: 7,
      child: Column(
        children: [
          CustomHeaderForAllSections(title: "Users"),
          VerticalSizedBox(vertical: 30.h),
          Padding(
            padding: EdgeInsets.only(
              left: 30.w,
              top: 7.h,
              right: 40.w,
              bottom: 7.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 70.w,
                  child: CustomText(
                    text: "Photo",
                    textAlign: TextAlign.start,
                    fontSize: 15.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 100.w,
                  child: CustomText(
                    text: "Name",
                    textAlign: TextAlign.start,
                    fontSize: 15.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 160.w,
                  child: CustomText(
                    text: "Email",
                    textAlign: TextAlign.start,
                    fontSize: 15.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 150.w,
                  child: CustomText(
                    text: "Phone",
                    textAlign: TextAlign.start,
                    fontSize: 15.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 150.w,
                  child: CustomText(
                    text: "Action",
                    textAlign: TextAlign.start,
                    fontSize: 15.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.76.sh,
            child: ListView.builder(
              itemCount: posts.length,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      VerticalSizedBox(vertical: 5.h),
                      GestureDetector(
                        onTap: () {
                          mainCurrentIndexProvider.setIndex(5);
                          userprovider.setUserIndex(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: whiteColor,
                            border: Border.all(color: const Color(0xffDFDFDF)),
                            borderRadius: BorderRadius.circular(30.sp),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10.w,
                              top: 15.h,
                              right: 20.w,
                              bottom: 15.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 70.w,
                                  child: Image.asset(
                                    posts[index].imageUrl,
                                    height: 50.h,
                                    width: 50.w,
                                  ),
                                ),
                                SizedBox(
                                  width: 100.w,
                                  child: CustomText(
                                    text: posts[index].name,
                                    textAlign: TextAlign.start,
                                    fontSize: 13.sp,
                                    color: blackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 160.w,
                                  child: CustomText(
                                    text: posts[index].email.toString(),
                                    textAlign: TextAlign.start,
                                    fontSize: 13.sp,
                                    color: blackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 150.w,
                                  child: CustomText(
                                    text: posts[index].phone.toString(),
                                    textAlign: TextAlign.start,
                                    fontSize: 13.sp,
                                    color: blackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 5.sp, right: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            surfaceTintColor: whiteColor,
                                            backgroundColor: whiteColor,
                                            title: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomText(
                                                  text: "Delete Story",
                                                  fontSize: 18.sp,
                                                  color: blackColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ],
                                            ),
                                            content: SizedBox(
                                              height: 320.h,
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  const Divider(),
                                                  VerticalSizedBox(
                                                      vertical: 5.h),
                                                  Image.asset(
                                                    blockuser,
                                                    width: 143.w,
                                                    height: 143.h,
                                                  ),
                                                  VerticalSizedBox(
                                                      vertical: 10.h),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.w),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      child: CustomText(
                                                        textAlign:
                                                            TextAlign.center,
                                                        text:
                                                            "To Ban an account or deactivate a user",
                                                        fontSize: 15.sp,
                                                        color: blackColor,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  VerticalSizedBox(
                                                      vertical: 20.h),
                                                  TextButton(
                                                    onPressed: () {
                                                      // Perform action on cancel
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: redColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(12.0),
                                                        child: Center(
                                                          child: CustomText(
                                                            text: "Yes",
                                                            fontSize: 15.sp,
                                                            color: whiteColor,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  VerticalSizedBox(
                                                      vertical: 20.h),
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Center(
                                                        child: CustomText(
                                                          text: "CANCEL",
                                                          fontSize: 13.sp,
                                                          color: Color(
                                                                  0xff35414F)
                                                              .withOpacity(0.7),
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  VerticalSizedBox(
                                                      vertical: 20.h),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                        color: redColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5.sp),
                                        child: Center(
                                          child: CustomText(
                                            text: "Block User",
                                            fontSize: 12.sp,
                                            color: whiteColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      VerticalSizedBox(vertical: 10.h),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
