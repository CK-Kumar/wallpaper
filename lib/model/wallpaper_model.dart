class WallpaperModel {
  String photographer;
  String photographer_url;
  int photographer_id;
  ScrModel src;
  WallpaperModel(
      {required this.photographer,
      required this.photographer_url,
      required this.photographer_id,
      required this.src});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
        photographer: jsonData["photographer"],
        photographer_url: jsonData["photographer_url"],
        photographer_id: jsonData["photographer_id"],
        src: ScrModel.fromMap(jsonData["src"]));
  }
}

class ScrModel {
  String orginal;
  String small;
  String portrait;
  ScrModel(
      {required this.orginal, required this.small, required this.portrait});
  factory ScrModel.fromMap(Map<String, dynamic> jsonData) {
    return ScrModel(
        orginal: jsonData["orginal"],
        small: jsonData["small"],
        portrait: jsonData["portrait"]);
  }
}
