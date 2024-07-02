class Report {
  final int id;
  final String title;
  final String description;
  final String location;
  final String image;
  final String status;
  final String createdAt;
  final int views;
  final double latitude;
  final double longitude;

  Report({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.image,
    required this.status,
    required this.createdAt,
    required this.views,
    required this.latitude,
    required this.longitude,
  });

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      location: json['location'],
      image: json['image'],
      status: json['status'],
      createdAt: json['created_at'],
      views: json['views'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}
