import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resume_project/app_utils/app_utils.dart';
import 'package:resume_project/config/app_theme.dart';
import 'package:resume_project/ui/create_resume/state/create_resume_controller.dart';
import 'package:resume_project/widget/app_text_field.dart';

class CreateResumeRoute extends GetView<CreateResumeController> {
  const CreateResumeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Resume"),
          centerTitle: true,
          backgroundColor: AppTheme.primary,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextField(
                  controller: controller.nameController,
                  hint: "Enter Full Name",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.designationController,
                  hint: "Enter Designation",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.mobileController,
                  keyboardType: TextInputType.number,
                  hint: "Enter Mobile Number",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  hint: "Enter Email",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.addresscontroller,
                  keyboardType: TextInputType.streetAddress,
                  hint: "Enter Full Address",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.dobcontroller,
                  keyboardType: TextInputType.datetime,
                  hint: "Enter Date Of Birth",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.linkdincontroller,
                  keyboardType: TextInputType.url,
                  hint: "Enter LinkdIn Link",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.githubcontroller,
                  keyboardType: TextInputType.url,
                  hint: "Enter Github Link",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.describecontroller,
                  keyboardType: TextInputType.text,
                  hint: "Enter Describe Your Profile",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.technicalSkillcontroller,
                  keyboardType: TextInputType.text,
                  hint: "Enter Technical Skill",
                ),
                Text(
                  "(Coma seperated)",
                  style: AppUtils.textblackRobotoRegular10,
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.companyNamecontroller,
                  keyboardType: TextInputType.text,
                  hint: "Enter Experience Company Name ",
                ),
                SizedBox(
                  height: 10.h,
                ),
                AppTextField(
                  controller: controller.comdesignationcontroller,
                  keyboardType: TextInputType.text,
                  hint: "Enter Company Designation ",
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AppTextField(
                        controller: controller.startDatecontroller,
                        keyboardType: TextInputType.datetime,
                        hint: "Enter Start Date ",
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: AppTextField(
                        controller: controller.endDatacontroller,
                        keyboardType: TextInputType.datetime,
                        hint: "Enter End Date ",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppTheme.primary),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Text("Cancel"),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          if (controller.flag == "edit") {
                            controller.updateResume();
                          } else {
                            controller.saveResume();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.h),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppTheme.primary,
                              border: Border.all(color: AppTheme.primary),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Text("Save"),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
