import 'dart:convert';

Qoute qouteFromJson(String str) => Qoute.fromJson(json.decode(str));

String qouteToJson(Qoute data) => json.encode(data.toJson());

class Qoute {
  Qoute({
    required this.id,
    required this.author,
    required this.en,
  });

  String id;
  String author;
  String en;

  factory Qoute.fromJson(Map<String, dynamic> json) => Qoute(
        id: json["id"],
        author: json["author"],
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "author": author,
        "en": en,
      };
}
