import 'package:e_book/ui/features/home/models/volume_info.dart';

class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  late VolumeInfo volumeInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
  });

  BookModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = kind;
    data['id'] = id;
    data['etag'] = etag;
    data['selfLink'] = selfLink;
    data['volumeInfo'] = volumeInfo.toJson();

    return data;
  }
}
