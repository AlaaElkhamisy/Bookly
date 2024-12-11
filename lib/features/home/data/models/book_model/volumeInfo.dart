import 'package:bookly/features/home/data/models/book_model/imageLinkes.dart';
import 'package:bookly/features/home/data/models/book_model/industry_identifier.dart';
import 'package:bookly/features/home/data/models/book_model/panelization_summary.dart';
import 'package:bookly/features/home/data/models/book_model/reading_modes.dart';
import 'package:equatable/equatable.dart';

class Volume_Info extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final String? printType;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final int? pageCount;
  final List<String>? categories;
  final num? averageRating;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;
  final Imagelinkes? imagelinkes;
  final Panelization_Summary? panelizationSummary;
  final ReadingModes? readingModes;
  final List<IndustryIdentifier>? industryIdentifiers;
  Volume_Info(
      {this.authors,
      this.publisher,
      this.publishedDate,
      this.description,
      this.printType,
      this.maturityRating,
      this.allowAnonLogging,
      this.contentVersion,
      this.pageCount,
      this.categories,
      this.averageRating,
      this.language,
      this.previewLink,
      this.infoLink,
      this.canonicalVolumeLink,
      this.imagelinkes,
      this.panelizationSummary,
      this.readingModes,
      this.industryIdentifiers,
      this.title});

  factory Volume_Info.fromJson(Map<String, dynamic> json) => Volume_Info(
      title: json["title"] as String?,
      authors: (json["authors"] as List<dynamic>?)?.cast<String>(),
      publisher: json["publisher"] as String?,
      publishedDate: json["publishedDate"] as String?,
      description: json["description"] as String?,
      industryIdentifiers: (json["industryIdentifiers"] as List<dynamic>?)
          ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      readingModes: json["readingModes"] == null
          ? null
          : ReadingModes.fromJson(json["readingModes"] as Map<String, dynamic>),
      pageCount: json["pageCount"] as int?,
      printType: json["printType"] as String?,
      categories: (json["categories"] as List<dynamic>?)?.cast<String>(),
      averageRating: json["averageRating"],
      maturityRating: json["maturityRating"] as String?,
      allowAnonLogging: json["allowAnonLogging"] as bool?,
      contentVersion: json["contentVersion"] as String?,
      panelizationSummary: json["panelizationSummary"] == null
          ? null
          : Panelization_Summary.fromJson(
              json["panelizationSummary"] as Map<String, dynamic>),
      imagelinkes: json["imageLinks"] == null
          ? null
          : Imagelinkes.fromJson(json["imageLinks"] as Map<String, dynamic>),
      language: json["language"] as String?,
      previewLink: json["previewLink"] as String?,
      infoLink: json["infoLink"] as String?,
      canonicalVolumeLink: json["canonicalVolumeLink"] as String?);

  Map<String, dynamic> toJson() => {
        "title": title,
        "authors": authors,
        "publisher": publisher,
        "publishedDate": publishedDate,
        "description": description,
        "industryIdentifiers":
            industryIdentifiers?.map((e) => e.toJson()).toList(),
        "readingModes": readingModes?.toJson(),
        "pageCount": pageCount,
        "printType": printType,
        "categories": categories,
        "averageRating": averageRating,
        "maturityRating": maturityRating,
        "allowAnonLogging": allowAnonLogging,
        "contentVersion": contentVersion,
        "panelizationSummary": panelizationSummary?.toJson(),
        "imageLinks": imagelinkes?.toJson(),
        "language": language,
        "previewLink": previewLink,
        "infoLink": infoLink,
        "canonicalVolumeLink": canonicalVolumeLink,
      };
  @override
  // TODO: implement props
  List<Object?> get props => [
        title,
        authors,
        publisher,
        publishedDate,
        description,
        industryIdentifiers,
        readingModes,
        pageCount,
        printType,
        categories,
        averageRating,
        maturityRating,
        allowAnonLogging,
        contentVersion,
        panelizationSummary,
        imagelinkes,
        language,
        previewLink,
        infoLink,
        canonicalVolumeLink
      ];
}
