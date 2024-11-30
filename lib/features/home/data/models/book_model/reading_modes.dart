import 'package:equatable/equatable.dart';

class ReadingModes extends Equatable {
  final bool? text;
  final bool? image;

  ReadingModes({this.text, this.image});

  factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      ReadingModes(text: json["text"] as bool?, image: json["image"] as bool?);

  Map<String, dynamic> toJson() => {"text": text, "image": image};

  @override
  // TODO: implement props
  List<Object?> get props => [text, image];
}
