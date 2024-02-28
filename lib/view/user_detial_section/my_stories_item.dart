import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/Components/text_widget2.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:literature_app_admin/models/post_data_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyStoriesItem extends StatefulWidget {
  int index;
  MyStoriesItem({
    super.key,
    required this.index,
  });

  @override
  State<MyStoriesItem> createState() => _MyStoriesItemState();
}

class _MyStoriesItemState extends State<MyStoriesItem> {
  @override
  Widget build(BuildContext context) {
    // final postprovider = Provider.of<PostItems>(context, listen: true);

    return SizedBox(
      // height: 300.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Container(
              decoration: BoxDecoration(
                color: posts[widget.index].reports!.isEmpty
                    ? whiteColor
                    : redColor.withOpacity(0.07),
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
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.sp),
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
            SizedBox(
              width: 0.75.sw,
              height: 50.h,
              child: Row(
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
                  const Spacer(),
                  posts[widget.index].reports!.isEmpty
                      ? const SizedBox()
                      : SizedBox(
                          child: Row(
                            children: [
                              Icon(
                                Icons.report,
                                color: redColor,
                                size: 25.sp,
                              ),
                              HorizontalSizedBox(horizontalSpace: 5.w),
                              CustomText(
                                text: "Reported By",
                                fontSize: 17.sp,
                                color: redColor,
                                fontWeight: FontWeight.bold,
                              ),
                              HorizontalSizedBox(horizontalSpace: 15.w),
                              SizedBox(
                                height: 30.h,
                                child: const ReportPostButton(),
                              ),
                              HorizontalSizedBox(horizontalSpace: 30.w),
                            ],
                          ),
                        )
                ],
              ),
            ),
            VerticalSizedBox(vertical: 8.h),
          ],
        ),
      ),
    );
  }
}

//Report post
class ReportPostButton extends StatelessWidget {
  const ReportPostButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: whiteColor,
      constraints: BoxConstraints(maxHeight: 300.h, maxWidth: 300.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.sp)),
      surfaceTintColor: whiteColor,
      elevation: 5,
      position: PopupMenuPosition.over,
      offset: Offset(0.sp, 300.sp),
      padding: EdgeInsets.zero,
      icon: const ReportUsersButtom(),
      itemBuilder: (BuildContext context) => popupMenuItems,
      onSelected: (String value) {
        // Handle reporting logic here
      },
    );
  }
}

//report button
class ReportUsersButtom extends StatelessWidget {
  const ReportUsersButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Stack(
        children: [
          Image.asset(
            posts[0].imageUrl,
            height: 30.h,
            width: 30.w,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Image.asset(
              posts[1].imageUrl,
              height: 30.h,
              width: 30.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Image.asset(
              posts[2].imageUrl,
              height: 30.h,
              width: 30.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.w),
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: const BoxDecoration(
                color: Color(0xffE4E4E4),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "+${posts.length.toString()}",
                  selectionColor: greyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//report button item
List<PopupMenuEntry<String>> popupMenuItems = [
  PopupMenuItem(
    enabled: false,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: "Reported By",
          fontSize: 15.sp,
          color: blackColor,
          fontWeight: FontWeight.bold,
        ),
      ],
    ), // This makes the title unselectable
  ),
  ...posts.map((model) {
    return PopupMenuItem<String>(
      height: 25.h,
      value: model.name,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // height: 400.h,
          width: 300.w,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    model.imageUrl,
                    height: 40.h,
                    width: 40.w,
                  ),
                  HorizontalSizedBox(horizontalSpace: 5.sp),
                  CustomText(
                    text: model.name,
                    fontSize: 14.sp,
                    color: blackColor,
                    fontWeight: FontWeight.w300,
                  )
                ],
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }).toList(),
];

// List<PopupMenuEntry<String>> popupMenuItems = posts.map((model) {
//   return PopupMenuItem<String>(
//     height: 25.h,
//     value: model.name,
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         // height: 400.h,
//         width: 300.w,
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Image.asset(
//                   model.imageUrl,
//                   height: 40.h,
//                   width: 40.w,
//                 ),
//                 HorizontalSizedBox(horizontalSpace: 5.sp),
//                 CustomText(
//                   text: model.name,
//                   fontSize: 14.sp,
//                   color: blackColor,
//                   fontWeight: FontWeight.w300,
//                 )
//               ],
//             ),
//             const Divider(),
//           ],
//         ),
//       ),
//     ),
//   );
// }).toList();
