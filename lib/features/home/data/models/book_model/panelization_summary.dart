import 'package:equatable/equatable.dart';

class Panelization_Summary extends Equatable {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;
  Panelization_Summary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory Panelization_Summary.fromJson(Map<String, dynamic> json) =>
      Panelization_Summary(
          containsImageBubbles: json["containsImageBubbles"] as bool?,
          containsEpubBubbles: json["containsEpubBubbles"] as bool?);

  Map<String, dynamic> toJson() => {
        "containsEpubBubbles": containsEpubBubbles,
        "containsImageBubbles": containsImageBubbles
      };

  @override
  // TODO: implement props
  List<Object?> get props => [containsEpubBubbles, containsImageBubbles];
}
