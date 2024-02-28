import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:literature_app_admin/models/post_data_model.dart';
import 'package:literature_app_admin/view/mian_screen/main_header_all_sections.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlockedUserSection extends StatefulWidget {
  const BlockedUserSection({super.key});

  @override
  State<BlockedUserSection> createState() => _BlockedUserSectionState();
}

class _BlockedUserSectionState extends State<BlockedUserSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Column(
        children: [
          CustomHeaderForAllSections(title: "Blocked Users"),
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
                  width: 100.w,
                  child: CustomText(
                    text: "Phone",
                    textAlign: TextAlign.start,
                    fontSize: 15.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 100.w,
                  child: CustomText(
                    text: "Logged In Via",
                    textAlign: TextAlign.start,
                    fontSize: 15.sp,
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 100.w,
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
                      Container(
                        decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: Color(0xffDFDFDF)),
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
                                width: 100.w,
                                child: CustomText(
                                  text: posts[index].phone.toString(),
                                  textAlign: TextAlign.start,
                                  fontSize: 13.sp,
                                  color: blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 100.w,
                                child: Image.asset(
                                  posts[index].device == google
                                      ? google
                                      : apple,
                                  height: 30.h,
                                  width: 30.w,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: 5.sp, right: 30),
                                child: Container(
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 5.w,
                                        right: 10.w,
                                        top: 5.h,
                                        bottom: 5.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.close,
                                          color: whiteColor,
                                        ),
                                        HorizontalSizedBox(
                                          horizontalSpace: 10.w,
                                        ),
                                        const CustomText(
                                          text: "Unblock",
                                          fontSize: 12,
                                          color: whiteColor,
                                          fontWeight: FontWeight.w300,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
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
