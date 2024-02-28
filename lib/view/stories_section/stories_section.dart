import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:literature_app_admin/models/post_data_model.dart';

import 'package:literature_app_admin/view/mian_screen/main_header_all_sections.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:literature_app_admin/view/stories_section/reported_story_item.dart';
import 'package:literature_app_admin/view/stories_section/storyitem.dart';

class StoriesSection extends StatefulWidget {
  const StoriesSection({super.key});

  @override
  State<StoriesSection> createState() => _StoriesSectionState();
}

class _StoriesSectionState extends State<StoriesSection> {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            CustomHeaderForAllSections(title: "Stories"),
            VerticalSizedBox(vertical: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 80.h,
                // width: 0.7.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  color: whiteColor,
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 4,
                  labelColor: baseColor,
                  indicatorColor: baseColor,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 50.sp),
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  tabs: [
                    Tab(
                      icon: Text(
                        "Stories",
                        style: TextStyle(
                          // color: greyColor,
                          fontSize: 27.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Tab(
                      icon: Text(
                        "Reported Stories",
                        style: TextStyle(
                          // color: greyColor,
                          fontSize: 27.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 0.75.sh,
              // color: blackColor,
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.sp),
                    child: ListView.builder(
                      itemCount: posts.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return StoryItemWidget(
                          index: index,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.sp),
                    child: ListView.builder(
                      itemCount: posts.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ReportedStoryItemWidget(
                          index: index,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
