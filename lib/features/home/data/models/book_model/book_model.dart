import 'package:bookly/features/home/data/models/book_model/access_info.dart';
import 'package:bookly/features/home/data/models/book_model/sale_info.dart';
import 'package:bookly/features/home/data/models/book_model/search_info.dart';
import 'package:bookly/features/home/data/models/book_model/volumeInfo.dart';
import 'package:equatable/equatable.dart';

class BookModel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final Volume_Info volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  const BookModel(
      {this.id,
      this.etag,
      this.selfLink,
      required this.volumeInfo,
      this.saleInfo,
      this.accessInfo,
      this.searchInfo,
      this.kind});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
      kind: json["kind"] as String?,
      id: json["id"] as String?,
      etag: json["etag"] as String?,
      selfLink: json["selfLink"] as String?,
      // we write the volume info as this because it won't be nullable value
      volumeInfo:
          Volume_Info.fromJson(json["volumeInfo"] as Map<String, dynamic>),
      saleInfo: json["saleInfo"] == null
          ? null
          : SaleInfo.fromJson(json["saleInfo"] as Map<String, dynamic>),
      accessInfo: json["accessInfo"] == null
          ? null
          : AccessInfo.fromJson(json["accessInfo"] as Map<String, dynamic>),
      searchInfo: json["searchInfo"] == null
          ? null
          : SearchInfo.fromJson(json["searchInfo"] as Map<String, dynamic>));

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo.toJson(),
        "saleInfo": saleInfo?.toJson(),
        "accessInfo": accessInfo?.toJson(),
        "searchInfo": searchInfo?.toJson()
      };
  @override
  List<Object?> get props =>
      [kind, id, etag, selfLink, volumeInfo, saleInfo, accessInfo, searchInfo];
}
