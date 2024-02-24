import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resume_project/routes/app_page.dart';
import 'package:resume_project/routes/app_router.dart';
import 'package:resume_project/ui/home/state/home_controller.dart';
import 'package:resume_project/ui/home/view/home_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: false,
      child: GetMaterialApp(
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeRoute(),
        initialBinding: BindingsBuilder(() {
          Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
        }),
      ),
    );
  }
}
