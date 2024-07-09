class GetReportModel {
    bool success;
    String message;
    List<Report> report;

    GetReportModel({
        required this.success,
        required this.message,
        required this.report,
    });

    factory GetReportModel.fromJson(Map<String, dynamic> json) => GetReportModel(
        success: json["success"],
        message: json["message"],
        report: List<Report>.from(json["report"].map((x) => Report.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "report": List<dynamic>.from(report.map((x) => x.toJson())),
    };
}

class Report {
    String id;
    String title;
    String description;
    String location;
    String image;
    DateTime createdAt;
    String views;
    String latitude;
    String longitude;
    String status;

    Report({
        required this.id,
        required this.title,
        required this.description,
        required this.location,
        required this.image,
        required this.createdAt,
        required this.views,
        required this.latitude,
        required this.longitude,
        required this.status,
    });

    factory Report.fromJson(Map<String, dynamic> json) => Report(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        location: json["location"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        views: json["views"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "location": location,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "views": views,
        "latitude": latitude,
        "longitude": longitude,
        "status": status,
    };
}