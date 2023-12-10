import 'images_links.dart';

class VolumeInfo {
  String? title;
  String? subtitle;
  List<dynamic>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  int? pageCount;
  String? printType;
  List<dynamic>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  late ImageLinks imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo(
      {this.title,
      this.subtitle,
      this.authors,
      this.publisher,
      this.publishedDate,
      this.description,
      this.pageCount,
      this.printType,
      this.categories,
      this.maturityRating,
      this.allowAnonLogging,
      this.contentVersion,
      required this.imageLinks,
      this.language,
      this.previewLink,
      this.infoLink,
      this.canonicalVolumeLink});

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    authors = (json['authors'] as List<dynamic>?)?.cast<String>();
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];

    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = (json['categories'] as List<dynamic>?)?.cast<String>();
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];

    imageLinks = ImageLinks.fromJson(json['imageLinks']);
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['authors'] = authors;
    data['publisher'] = publisher;
    data['publishedDate'] = publishedDate;
    data['description'] = description;

    data['pageCount'] = pageCount;
    data['printType'] = printType;
    data['categories'] = categories;
    data['maturityRating'] = maturityRating;
    data['allowAnonLogging'] = allowAnonLogging;
    data['contentVersion'] = contentVersion;

    data['imageLinks'] = imageLinks.toJson();

    data['language'] = language;
    data['previewLink'] = previewLink;
    data['infoLink'] = infoLink;
    data['canonicalVolumeLink'] = canonicalVolumeLink;
    return data;
  }
}
