import 'package:get/get.dart';
import 'package:resume_project/ui/create_resume/binding/create_resume_binding.dart';
import 'package:resume_project/ui/create_resume/view/create_resume_route.dart';
import 'package:resume_project/ui/display_resume/binding/display_resume_binding.dart';
import 'package:resume_project/ui/display_resume/view/resume_display_route.dart';
import 'package:resume_project/ui/home/binding/home_binding.dart';
import 'package:resume_project/ui/home/view/home_route.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static initial() {
    return Routes.HOME;
  }

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      transition: Transition.circularReveal,
      transitionDuration: Duration(seconds: 1),
      page: () => const HomeRoute(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_RESUME,
      transition: Transition.circularReveal,
      transitionDuration: Duration(seconds: 1),
      page: () => const CreateResumeRoute(),
      binding: CreateResumeBinding(),
    ),
      GetPage(
      name: _Paths.DISPLAY_RESUME,
      transition: Transition.circularReveal,
      transitionDuration: Duration(seconds: 1),
      page: () => const DisplayResumeRoute(),
      binding: DisplayResmueBinding(),
    ),
  ];
}
