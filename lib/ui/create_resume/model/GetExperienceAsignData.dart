

class GetExperienceAsignData {
    final String? companyName;
    final String? designation;
    final String? startDate;
    final String? endDate;

    GetExperienceAsignData({
        this.companyName,
        this.designation,
        this.startDate,
        this.endDate,
    });

    GetExperienceAsignData copyWith({
        String? companyName,
        String? designation,
        String? startDate,
        String? endDate,
    }) => 
        GetExperienceAsignData(
            companyName: companyName ?? this.companyName,
            designation: designation ?? this.designation,
            startDate: startDate ?? this.startDate,
            endDate: endDate ?? this.endDate,
        );

    factory GetExperienceAsignData.fromJson(Map<String, dynamic> json) => GetExperienceAsignData(
        companyName: json["company_name"],
        designation: json["designation "],
        startDate: json["start_date"],
        endDate: json["end_date"],
    );

    Map<String, dynamic> toJson() => {
        "company_name": companyName,
        "designation ": designation,
        "start_date": startDate,
        "end_date": endDate,
    };
}
