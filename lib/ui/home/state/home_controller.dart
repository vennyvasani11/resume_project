import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:resume_project/app_utils/app_utils.dart';
import 'package:resume_project/sqflite/sqflitecontroller.dart';
import 'package:resume_project/sqflite/sqflitemodel.dart';
import 'package:resume_project/sqflite/sqflitetable.dart';

class HomeController extends GetxController {
  TextEditingController controller = TextEditingController();


  var _getResumeList = RxList<SqlResume>();

  List<SqlResume> get getResumeList => _getResumeList.value;

  @override
  void onInit() {
    resumeData();
    super.onInit();
  }

  resumeData() async {
    final db = await initdatabase;
    List<Map> alldata = await db!.rawQuery("select * from createResume");
    _getResumeList.clear();
    for (var data in alldata) {
      SqlResume finaldata = SqlResume.fromMap(data);
      _getResumeList.add(finaldata);
    }
    print(_getResumeList);
  }

  deleteData(int id) async {
    final db = await initdatabase;
    await db!.rawDelete("delete from createResume where resumeId=${id}");

    for (var i = 0; i < _getResumeList.length; i++) {
      if (_getResumeList[i].resumeId == id) {
        _getResumeList.removeAt(i);
        break;
      }

      _getResumeList.refresh();
    }
    AppUtils.toastMessage("Resume Delete Successfully");

    print(_getResumeList.length);
  }
}
