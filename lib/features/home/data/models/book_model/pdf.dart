import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;

  const Pdf({this.isAvailable});

  factory Pdf.fromJson(Map<String, dynamic> json) =>
      Pdf(isAvailable: json["isAvailable"] as bool?);

  Map<String, dynamic> toJson() => {"isAvailable": isAvailable};
  @override
  // TODO: implement props
  List<Object?> get props => [isAvailable];
}
