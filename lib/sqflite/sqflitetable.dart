import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
}

// ignore: non_constant_identifier_names
Database? ResumeDB;

Future<Database?> get initdatabase async {
  if (ResumeDB != null) {
    return ResumeDB;
  }

  ResumeDB = await initDB();
  return ResumeDB;
}

initDB() async {
  Directory documentsDirectory = await getApplicationDocumentsDirectory();

  String path = "${documentsDirectory.path}/rentalhome.db";

  return await openDatabase(path, version: 1, onOpen: (db) {},
      onCreate: (Database db, int version) async {
    await db.execute("CREATE TABLE createResume("
        "resumeId INTEGER PRIMARY KEY AUTOINCREMENT,"
        "fullName TEXT,"
        "designation TEXT,"
        "mobile TEXT,"
        "email TEXT,"
        "dob TEXT,"
        "linkdinProfile TEXT,"
        "githubProfile TEXT,"
        "address TEXT,"
        "description TEXT,"
        "skill TEXT,"
        "companyName TEXT,"
        "companydesignation TEXT,"
        "startdate TEXT,"
        "endDate TEXT"
        ")");
  });
}
