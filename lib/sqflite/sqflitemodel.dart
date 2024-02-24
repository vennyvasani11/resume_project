import 'dart:convert';

//---------------------- Home --------------------------

SqlResume sqlresumeFromJson(String str) {
  final jsonData = json.decode(str);
  return SqlResume.fromMap(jsonData);
}

String sqlresumeToJson(SqlResume data) {
  final dm = data.toMap();
  return json.encode(dm);
}

class SqlResume {
  int? resumeId;
  String? fullName;
  String? designation;
  String? mobile;
  String? email;
  String? dob;
  String? linkdinProfile;
  String? githubProfile;
  String? description;
  String? address;
  String? skill;
  String? companyName;
  String? companydesignation;
  String? startdate;
  String? endDate;

  static final columns = [
    "resumeId",
    "fullName",
    "designation",
    "mobile",
    "email",
    "dob",
    "linkdinProfile",
    "githubProfile",
    "description",
    "address",
    "skill",
    "companyName",
    "companydesignation",
    "startdate",
    "endDate",
  ];

  SqlResume({
    this.resumeId,
    this.fullName,
    this.designation,
    this.mobile,
    this.email,
    this.dob,
    this.linkdinProfile,
    this.githubProfile,
    this.description,
    this.address,
    this.skill,
    this.companyName,
    this.companydesignation,
    this.startdate,
    this.endDate,
  });

  factory SqlResume.fromMap(Map<dynamic, dynamic> json) => SqlResume(
        resumeId: json["resumeId"],
        fullName: json["fullName"],
        designation: json["designation"],
        mobile: json["mobile"],
        email: json["email"],
        dob: json["dob"],
        linkdinProfile: json["linkdinProfile"],
        githubProfile: json["githubProfile"],
        description: json["description"],
        address: json["address"],
        skill: json["skill"],
        companyName: json["companyName"],
        companydesignation: json["companydesignation"],
        startdate: json["startdate"],
        endDate: json["endDate"],
      );

  Map<String, dynamic> toMap() => {
        "resumeId": resumeId,
        "fullName": fullName,
        "designation": designation,
        "mobile": mobile,
        "email": email,
        "dob": dob,
        "linkdinProfile": linkdinProfile,
        "githubProfile": githubProfile,
        "description": description,
        "address": address,
        "skill": skill,
        "companyName": companyName,
        "companydesignation": companydesignation,
        "startdate": startdate,
        "endDate": endDate,
      };
}
