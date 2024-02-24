

import 'package:get/get.dart';
import 'package:resume_project/ui/display_resume/state/display_resume_controller.dart';
import 'package:resume_project/ui/home/state/home_controller.dart';


class DisplayResmueBinding extends Bindings{
  @override
  void dependencies() {
        Get.put<DisplayResumeController>(DisplayResumeController());     
  }

}