// Column(
//       children: [
//         VerticalSizedBox(vertical: 15.h),
//         CustomText(
//           text: "Reported By",
//           fontSize: 15.sp,
//           color: blackColor,
//           fontWeight: FontWeight.bold,
//         ),
//         Container(
//           height: 400.h,
//           width: 300.w,
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 VerticalSizedBox(vertical: 15.h),
//                 SizedBox(
//                   // height: 300.h,
//                   child: ListView.builder(
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: posts.length,
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       return Column(
//                         children: [
//                           const VerticalSizedBox(vertical: 5),
//                           Row(
//                             children: [
//                               HorizontalSizedBox(horizontalSpace: 15.w),
//                               Image.asset(
//                                 posts[index].imageUrl,
//                                 height: 40.h,
//                                 width: 40.w,
//                               ),
//                               HorizontalSizedBox(horizontalSpace: 15.w),
//                               CustomText(
//                                 text: posts[index].name,
//                                 fontSize: 14.sp,
//                                 color: blackColor.withOpacity(0.8),
//                                 fontWeight: FontWeight.w400,
//                               )
//                             ],
//                           ),
//                           const VerticalSizedBox(vertical: 10),
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 10.sp),
//                             child: const Divider(),
//                           ),
//                           const VerticalSizedBox(vertical: 5),
//                         ],
//                       );
//                     },
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),