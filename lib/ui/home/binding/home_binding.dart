

import 'package:get/get.dart';
import 'package:resume_project/ui/home/state/home_controller.dart';


class HomeBinding extends Bindings{
  @override
  void dependencies() {
        Get.put<HomeController>(HomeController());     
  }

}