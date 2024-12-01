import 'package:bookly/features/home/data/models/book_model/epub.dart';
import 'package:bookly/features/home/data/models/book_model/pdf.dart';
import 'package:equatable/equatable.dart';

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReadLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  AccessInfo(
      {this.viewability,
      this.embeddable,
      this.publicDomain,
      this.textToSpeechPermission,
      this.epub,
      this.pdf,
      this.webReadLink,
      this.accessViewStatus,
      this.quoteSharingAllowed,
      this.country});

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
      country: json["country"] as String?,
      viewability: json["viewability"] as String?,
      embeddable: json["embeddable"] as bool?,
      publicDomain: json["publicDomain"] as bool?,
      textToSpeechPermission: json["textToSpeechPermission"] as String?,
      epub: json["epub"] == null
          ? null
          : Epub.fromJson(json["epub"] as Map<String, dynamic>),
      pdf: json["pdf"] == null
          ? null
          : Pdf.fromJson(json["pdf"] as Map<String, dynamic>),
      webReadLink: json["webReaderLink"] as String?,
      accessViewStatus: json["accessViewStatus"] as String?,
      quoteSharingAllowed: json["quoteSharingAllowed"] as bool?);

  Map<String, dynamic> toJson() => {
        "country": country,
        "viewability": viewability,
        "embeddable": embeddable,
        "publicDomain": publicDomain,
        "textToSpeechPermission": textToSpeechPermission,
        "epub": epub,
        "pdf": pdf,
        "webReaderLink": webReadLink,
        "accessViewStatus": accessViewStatus,
        "quoteSharingAllowed": quoteSharingAllowed,
      };

  @override
  // TODO: implement props
  List<Object?> get props => [
        country,
        viewability,
        embeddable,
        publicDomain,
        textToSpeechPermission,
        epub,
        pdf,
        webReadLink,
        accessViewStatus,
        quoteSharingAllowed
      ];
}
