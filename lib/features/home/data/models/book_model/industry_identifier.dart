import 'package:equatable/equatable.dart';

class IndustryIdentifier extends Equatable {
  final String? type;
  final String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      IndustryIdentifier(
          type: json["type"] as String,
          identifier: json["identifier"] as String);

  Map<String, dynamic> toJson() => {"type": type, "identifier": identifier};
  @override
  // TODO: implement props
  List<Object?> get props => [type, identifier];
}
