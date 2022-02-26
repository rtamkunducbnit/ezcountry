class Countrys {
  String code;
  String name;
  String? emoji;
  List<Language>? languages;

  Countrys.fromJson(Map<String, dynamic> json)
      : code = json["code"],
        name = json["name"],
        emoji = json["emoji"],
        languages = List<Language>.from(json["languages"].map((x) => Language.fromJson(x)));
}

class Language {
  Language({
    required this.code,
    required this.name,
  });

  String code;
  String name;

  factory Language.fromJson(Map<String, dynamic> json) => Language(
    code: json["code"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
  };
}
