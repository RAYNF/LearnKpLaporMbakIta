class AddNewsModel {
  String status;
  String message;

  AddNewsModel({
    required this.status,
    required this.message,
  });

  factory AddNewsModel.fromJson(Map<String, dynamic> json) => AddNewsModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
