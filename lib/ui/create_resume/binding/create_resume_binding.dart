import 'package:get/get.dart';
import 'package:resume_project/ui/create_resume/state/create_resume_controller.dart';
import 'package:resume_project/ui/home/state/home_controller.dart';

class CreateResumeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateResumeController>(() => CreateResumeController(),
        fenix: true);
  }
}
