//------------------------ login --------------------------

import 'package:resume_project/sqflite/sqflitemodel.dart';
import 'package:resume_project/sqflite/sqflitetable.dart';

final resumeList = <SqlResume>[];

logindata(String gmail) async {
  final db = await initdatabase;
  List<Map> alldata = await db!.rawQuery("select * from createResume");
  resumeList.clear();
  for (var data in alldata) {
    SqlResume finaldata = SqlResume.fromMap(data);
    resumeList.add(finaldata);

    print(resumeList);
  }
}
