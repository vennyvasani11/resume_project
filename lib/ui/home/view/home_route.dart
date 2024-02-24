import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resume_project/app_utils/app_utils.dart';
import 'package:resume_project/config/app_theme.dart';
import 'package:resume_project/routes/app_router.dart';
import 'package:resume_project/sqflite/sqflitemodel.dart';
import 'package:resume_project/ui/home/state/home_controller.dart';

class HomeRoute extends GetView<HomeController> {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume"),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppRouter.createResume(SqlResume(), "");
        },
        backgroundColor: AppTheme.primary,
        child: Icon(
          Icons.add,
          color: AppTheme.white,
        ),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.getResumeList.length,
          itemBuilder: (context, index) {
            final item = controller.getResumeList[index];
            return InkWell(
              onTap: () {
                AppRouter.displayResume(item);
              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  width: AppUtils.width(),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.primary),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                    title: Text("${item.fullName ?? ''}"),
                    subtitle: Text(" ${item.designation ?? ''}"),
                    trailing: Wrap(
                      children: [
                        InkWell(
                            onTap: () {
                              AppRouter.createResume(item, "edit");
                            },
                            child: Icon(Icons.update)),
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                            onTap: () {
                              controller.deleteData(item.resumeId ?? 0);
                            },
                            child: Icon(Icons.delete))
                      ],
                    ),
                  )),
            );
          },
        );
      }),
    );
  }
}
