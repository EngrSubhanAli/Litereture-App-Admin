import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/Components/text_widget2.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:literature_app_admin/models/post_data_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryItemWidget extends StatefulWidget {
  int index;
  StoryItemWidget({
    super.key,
    required this.index,
  });

  @override
  State<StoryItemWidget> createState() => _StoryItemWidgetState();
}

class _StoryItemWidgetState extends State<StoryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Container(
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(30.sp),
              border: Border.all(width: 1, color: lightGrey),
            ),
            child: Padding(
              padding: EdgeInsets.all(15.sp),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        posts[widget.index].imageUrl,
                        height: 40.h,
                        width: 40.w,
                      ),
                      HorizontalSizedBox(horizontalSpace: 10.w),
                      CustomText(
                        text: posts[widget.index].name,
                        fontSize: 12.sp,
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      CustomText(
                        text: posts[widget.index].time,
                        fontSize: 10.sp,
                        color: greyColor,
                        fontWeight: FontWeight.w400,
                      ),
                      HorizontalSizedBox(horizontalSpace: 20.w),
                    ],
                  ),
                  VerticalSizedBox(vertical: 10.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HorizontalSizedBox(horizontalSpace: 5.w),
                      CustomText(
                        text: posts[widget.index].title,
                        fontSize: 14.sp,
                        color: blackColor,
                        fontWeight: FontWeight.w700,
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.sp),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  surfaceTintColor: whiteColor,
                                  backgroundColor: whiteColor,
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        VerticalSizedBox(vertical: 5.h),
                                        Image.asset(
                                          deletestory,
                                          width: 143.w,
                                          height: 143.h,
                                        ),
                                        VerticalSizedBox(vertical: 10.h),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.w),
                                          child: CustomText(
                                            textAlign: TextAlign.center,
                                            text:
                                                "Are you sure you wanna delete this story?",
                                            fontSize: 15.sp,
                                            color: blackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        VerticalSizedBox(vertical: 20.h),
                                        TextButton(
                                          onPressed: () {
                                            // Perform action on cancel
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: redColor,
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Center(
                                                child: CustomText(
                                                  text: "Yes",
                                                  fontSize: 15.sp,
                                                  color: whiteColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        VerticalSizedBox(vertical: 20.h),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Center(
                                              child: CustomText(
                                                text: "CANCEL",
                                                fontSize: 13.sp,
                                                color: Color(0xff35414F)
                                                    .withOpacity(0.7),
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        VerticalSizedBox(vertical: 20.h),
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
                              padding: EdgeInsets.symmetric(vertical: 5.sp),
                              child: Center(
                                child: CustomText(
                                  text: "Delete Story",
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
                  VerticalSizedBox(vertical: 10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 20.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText2(
                        text: posts[widget.index].description,
                        fontSize: 11.sp,
                        color: blackColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),

                  ///
                ],
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              HorizontalSizedBox(horizontalSpace: 10.sp),
              CustomText(
                text: "Likes: ",
                fontSize: 17.sp,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: posts[widget.index].likes.toString(),
                fontSize: 17.sp,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
              HorizontalSizedBox(horizontalSpace: 20.sp),
              CustomText(
                text: "Dislikes: ",
                fontSize: 17.sp,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: posts[widget.index].dislikes.toString(),
                fontSize: 17.sp,
                color: blackColor,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          VerticalSizedBox(vertical: 8.h),
        ],
      ),
    );
  }
}
