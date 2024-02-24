import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:resume_project/app_utils/app_utils.dart';
import 'package:resume_project/sqflite/sqflitemodel.dart';
import 'package:resume_project/sqflite/sqflitetable.dart';
import 'package:resume_project/ui/create_resume/model/GetExperienceAsignData.dart';
import 'package:resume_project/ui/home/state/home_controller.dart';

class CreateResumeController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController linkdincontroller = TextEditingController();
  TextEditingController githubcontroller = TextEditingController();
  TextEditingController controller = TextEditingController();
  TextEditingController describecontroller = TextEditingController();
  TextEditingController technicalSkillcontroller = TextEditingController();
  TextEditingController companyNamecontroller = TextEditingController();
  TextEditingController comdesignationcontroller = TextEditingController();
  TextEditingController startDatecontroller = TextEditingController();
  TextEditingController endDatacontroller = TextEditingController();
  final HomeController homeController = Get.find();

  final _resumeItem = SqlResume().obs;
  SqlResume get resumeItem => _resumeItem.value;
  dynamic argumentData = Get.arguments;

  var _flag = "".obs;
  String get flag => _flag.value;
  @override
  void onInit() {
    _resumeItem.value = argumentData["item"];

    _flag.value = argumentData["flag"];

    nameController.text = _resumeItem.value.fullName ?? '';
    designationController.text = _resumeItem.value.designation ?? '';
    mobileController.text = _resumeItem.value.mobile ?? '';
    emailcontroller.text = _resumeItem.value.email ?? '';
    addresscontroller.text = _resumeItem.value.address ?? '';
    dobcontroller.text = _resumeItem.value.dob ?? '';
    linkdincontroller.text = _resumeItem.value.linkdinProfile ?? '';
    githubcontroller.text = _resumeItem.value.githubProfile ?? '';
    describecontroller.text = _resumeItem.value.description ?? '';
    technicalSkillcontroller.text = _resumeItem.value.skill ?? '';
    companyNamecontroller.text = _resumeItem.value.companyName ?? '';
    comdesignationcontroller.text = _resumeItem.value.companydesignation ?? '';
    startDatecontroller.text = _resumeItem.value.startdate ?? '';
    endDatacontroller.text = _resumeItem.value.endDate ?? '';

    super.onInit();
  }

  void updateResume() async {
    if (nameController.text.isNotEmpty &&
        designationController.text.isNotEmpty &&
        mobileController.text.isNotEmpty &&
        emailcontroller.text.isNotEmpty &&
        addresscontroller.text.isNotEmpty &&
        dobcontroller.text.isNotEmpty &&
        linkdincontroller.text.isNotEmpty &&
        githubcontroller.text.isNotEmpty &&
        describecontroller.text.isNotEmpty &&
        technicalSkillcontroller.text.isNotEmpty &&
        companyNamecontroller.text.isNotEmpty &&
        comdesignationcontroller.text.isNotEmpty &&
        startDatecontroller.text.isNotEmpty &&
        endDatacontroller.text.isNotEmpty) {
      final db = await initdatabase;
      await db!.rawUpdate(
          "update createResume set fullName='${nameController.text}', designation='${designationController.text}', mobile='${mobileController.text}', email='${emailcontroller.text}', address='${addresscontroller.text}', dob='${dobcontroller.text}', linkdinProfile='${linkdincontroller.text}', githubProfile='${githubcontroller.text}', description='${describecontroller.text}', skill='${technicalSkillcontroller.text}', companyName='${companyNamecontroller.text}', companydesignation='${comdesignationcontroller.text}', startdate='${startDatecontroller.text}', endDate='${endDatacontroller.text}'");

      AppUtils.toastMessage("Resume Saved Successfully");
      print("add succesfully");
      nameController.clear();
      designationController.clear();
      mobileController.clear();
      emailcontroller.clear();
      addresscontroller.clear();
      dobcontroller.clear();
      linkdincontroller.clear();
      githubcontroller.clear();
      describecontroller.clear();
      technicalSkillcontroller.clear();
      companyNamecontroller.clear();
      comdesignationcontroller.clear();
      endDatacontroller.clear();
      startDatecontroller.clear();

      homeController.resumeData();

      AppUtils.goBack();
    } else {
      AppUtils.toastMessage("All Field is Required");
    }

    //   "resumeId",
    // "fullName",
    // "designation",
    // "mobile",
    // "email",
    // "dob",
    // "linkdinProfile",
    // "githubProfile",
    // "description",
    // "skill"
  }

  void saveResume() async {
    if (nameController.text.isNotEmpty &&
        designationController.text.isNotEmpty &&
        mobileController.text.isNotEmpty &&
        emailcontroller.text.isNotEmpty &&
        addresscontroller.text.isNotEmpty &&
        dobcontroller.text.isNotEmpty &&
        linkdincontroller.text.isNotEmpty &&
        githubcontroller.text.isNotEmpty &&
        describecontroller.text.isNotEmpty &&
        technicalSkillcontroller.text.isNotEmpty &&
        companyNamecontroller.text.isNotEmpty &&
        comdesignationcontroller.text.isNotEmpty &&
        startDatecontroller.text.isNotEmpty &&
        endDatacontroller.text.isNotEmpty) {
      final db = await initdatabase;
      await db!.rawInsert(
          "insert into createResume(fullName, designation, mobile, email,address, dob, linkdinProfile, githubProfile, description, skill,companyName, companydesignation, startdate, endDate)  values('${nameController.text}','${designationController.text}','${mobileController.text}','${emailcontroller.text}','${addresscontroller.text}','${dobcontroller.text}','${linkdincontroller.text}','${githubcontroller.text}','${describecontroller.text}','${technicalSkillcontroller.text}','${companyNamecontroller.text}','${comdesignationcontroller.text}','${startDatecontroller.text}','${endDatacontroller.text}')");

      AppUtils.toastMessage("Resume Saved Successfully");
      print("add succesfully");
      nameController.clear();
      designationController.clear();
      mobileController.clear();
      emailcontroller.clear();
      addresscontroller.clear();
      dobcontroller.clear();
      linkdincontroller.clear();
      githubcontroller.clear();
      describecontroller.clear();
      technicalSkillcontroller.clear();
      companyNamecontroller.clear();
      comdesignationcontroller.clear();
      endDatacontroller.clear();
      startDatecontroller.clear();

      homeController.resumeData();

      AppUtils.goBack();
    } else {
      AppUtils.toastMessage("All Field is Required");
    }
  }
}
