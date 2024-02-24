import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:resume_project/sqflite/sqflitecontroller.dart';
import 'package:resume_project/sqflite/sqflitemodel.dart';
import 'package:resume_project/sqflite/sqflitetable.dart';

class DisplayResumeController extends GetxController {
  TextEditingController controller = TextEditingController();
  var _selectCircle = 0.obs;
  int get selectCircle => _selectCircle.value;

  final _resumeItem = SqlResume().obs;
  SqlResume get resumeItem => _resumeItem.value;
  dynamic argumentData = Get.arguments;

  @override
  void onInit() {
    _resumeItem.value = argumentData["item"];

    super.onInit();
  }

  // resumeData() async {
  //   final db = await initdatabase;
  //   List<Map> alldata = await db!.rawQuery("select * from createResume");
  //   _getResumeList.clear();
  //   for (var data in alldata) {
  //     SqlResume finaldata = SqlResume.fromMap(data);
  //     _getResumeList.add(finaldata);
  //   }
  //   print(_getResumeList.length);
  // }
}
