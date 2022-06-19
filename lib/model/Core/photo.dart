import 'dart:convert';

class Photo {
  final String id;
  final String url;
  final int width;
  final int height;

  const Photo({
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'url': url,
      'width': width,
      'height': height,
    };
  }

  static Photo fromMap(Map<String, dynamic> map) {
    return Photo(
      id: map['id'],
      url: map['url'],
      width: map['width'],
      height: map['height'],
    );
  }

  String toJson() => json.encode(toMap());

  static Photo fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Photo(id: $id, url: $url, width: $width, height: $height)';
  }
}
