class GetNewsModel {
    bool success;
    String message;
    List<News> news;

    GetNewsModel({
        required this.success,
        required this.message,
        required this.news,
    });

    factory GetNewsModel.fromJson(Map<String, dynamic> json) => GetNewsModel(
        success: json["success"],
        message: json["message"],
        news: List<News>.from(json["news"].map((x) => News.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "news": List<dynamic>.from(news.map((x) => x.toJson())),
    };
}

class News {
    String id;
    String title;
    String description;
    String image;
    DateTime createdAt;
    String views;
    String status;

    News({
        required this.id,
        required this.title,
        required this.description,
        required this.image,
        required this.createdAt,
        required this.views,
        required this.status,
    });

    factory News.fromJson(Map<String, dynamic> json) => News(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        views: json["views"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "views": views,
        "status": status,
    };
}


// class GetNewsModel {
//   bool success;
//   String message;
//   List<News> news;

//   GetNewsModel({
//     required this.success,
//     required this.message,
//     required this.news,
//   });

//   factory GetNewsModel.fromJson(Map<String, dynamic> json) {
//     return GetNewsModel(
//       success: json["success"] ?? false,
//       message: json["message"] ?? '',
//       news: json["news"] != null
//           ? List<News>.from(json["news"].map((x) => News.fromJson(x)))
//           : [],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "success": success,
//         "message": message,
//         "news": List<dynamic>.from(news.map((x) => x.toJson())),
//       };
// }

// class News {
//   String id;
//   String title;
//   String description;
//   String location;
//   String image;
//   DateTime createdAt;
//   String views;
//   String latitude;
//   String longitude;
//   String status;

//   News({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.location,
//     required this.image,
//     required this.createdAt,
//     required this.views,
//     required this.latitude,
//     required this.longitude,
//     required this.status,
//   });

//   factory News.fromJson(Map<String, dynamic> json) => News(
//         id: json["id"] ?? '',
//         title: json["title"] ?? '',
//         description: json["description"] ?? '',
//         location: json["location"] ?? '',
//         image: json["image"] ?? '',
//         createdAt: json["created_at"] != null
//             ? DateTime.parse(json["created_at"])
//             : DateTime.now(),
//         views: json["views"] ?? '',
//         latitude: json["latitude"] ?? '',
//         longitude: json["longitude"] ?? '',
//         status: json["status"] ?? '',
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "description": description,
//         "location": location,
//         "image": image,
//         "created_at": createdAt.toIso8601String(),
//         "views": views,
//         "latitude": latitude,
//         "longitude": longitude,
//         "status": status,
//       };
// }


