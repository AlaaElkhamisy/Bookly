import 'package:equatable/equatable.dart';

class Imagelinkes extends Equatable {
  final String smallThumbnail;
  final String thumbnail;
  Imagelinkes({required this.smallThumbnail, required this.thumbnail});

  factory Imagelinkes.fromJson(Map<String, dynamic> json) => Imagelinkes(
      smallThumbnail: json["smallThumbnail"] as String,
      thumbnail: json["thumbnail"] as String);

  Map<String, dynamic> toJson() =>
      {"smallThumbnail": smallThumbnail, "thumbnail": thumbnail};

  @override
  // TODO: implement props
  List<Object?> get props => [smallThumbnail, thumbnail];
}
