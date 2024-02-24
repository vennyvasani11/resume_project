import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resume_project/app_utils/app_utils.dart';
import 'package:resume_project/config/app_theme.dart';
import 'package:resume_project/routes/app_router.dart';
import 'package:resume_project/ui/display_resume/state/display_resume_controller.dart';
import 'package:resume_project/ui/home/state/home_controller.dart';
import 'package:resume_project/widget/listtile_widget.dart';

class DisplayResumeRoute extends GetView<DisplayResumeController> {
  const DisplayResumeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(controller.resumeItem.fullName ?? ''),
          centerTitle: true,
          backgroundColor: AppTheme.primary,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              children: [
                ListTileWidget(
                  title: "Full Name",
                  value: controller.resumeItem.fullName ?? '',
                ),
                ListTileWidget(
                  title: "Designation",
                  value: controller.resumeItem.designation ?? '',
                ),
                ListTileWidget(
                  title: "Mobile Number",
                  value: controller.resumeItem.mobile ?? '',
                ),
                ListTileWidget(
                  title: "Email",
                  value: controller.resumeItem.email ?? '',
                ),
                ListTileWidget(
                  title: "Address",
                  value: controller.resumeItem.address ?? '',
                ),
                ListTileWidget(
                  title: "Date Of Birth",
                  value: controller.resumeItem.dob ?? '',
                ),
                ListTileWidget(
                  title: "Linkdin Profile Link",
                  value: controller.resumeItem.linkdinProfile ?? '',
                ),
                ListTileWidget(
                  title: "Github Profile Link",
                  value: controller.resumeItem.githubProfile ?? '',
                ),
                ListTileWidget(
                  title: "Describe",
                  value: controller.resumeItem.description ?? '',
                ),
                ListTileWidget(
                  title: "Technical Skill",
                  value: controller.resumeItem.skill ?? '',
                ),
                ListTileWidget(
                  title: "Experience Company",
                  value: controller.resumeItem.companyName ?? '',
                ),
                ListTileWidget(
                  title: "Experience Company Desig.",
                  value: controller.resumeItem.companydesignation ?? '',
                ),
                ListTileWidget(
                  title: "Experience Company Start Date",
                  value: controller.resumeItem.startdate ?? '',
                ),
                ListTileWidget(
                  title: "Experience Company End Date",
                  value: controller.resumeItem.endDate ?? '',
                ),
              ],
            ),
          ),
        ));
  }
}
