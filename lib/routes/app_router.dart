import 'package:get/get.dart';
import 'package:resume_project/sqflite/sqflitemodel.dart';

import 'app_page.dart';

class AppRouter {
  static home() {
    Get.toNamed(Routes.HOME);
  }

  static createResume(SqlResume? item, String flag) {
    Get.toNamed(Routes.CREATE_RESUME, arguments: {"item": item, "flag": flag});
  }

  static displayResume(SqlResume item) {
    Get.toNamed(Routes.DISPLAY_RESUME, arguments: {"item": item});
  }
}
