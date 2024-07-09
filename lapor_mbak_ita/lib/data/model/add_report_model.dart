class AddReportModel {
  String status;
  String message;

  AddReportModel({
    required this.status,
    required this.message,
  });

  factory AddReportModel.fromJson(Map<String, dynamic> json) => AddReportModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
