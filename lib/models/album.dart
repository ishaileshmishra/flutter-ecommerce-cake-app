import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchAlbums() async {
  String url = 'https://api.pexels.com/v1/search?query=cake';
  String token = '563492ad6f91700001000001d823a46fa27543d99343990fe281a219';
  final response = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    HttpHeaders.authorizationHeader: token
  });
  print(response);

  if (response.statusCode == 200) {
    Map<dynamic, dynamic> body = jsonDecode(response.body);
    List themesList = body['photos'];
    List<Album> album = [];
    for (var themeMap in themesList) {
      album.add(Album.fromJson(themeMap));
    }
    return album;
  } else {
    throw Exception('Failed to load themes');
  }
}

class Album {
  final int photoId;
  final int width;
  final int height;
  final String url;
  final String photographer;
  final String photographerUrl;
  final int photographerId;
  final Photo photos;

  Album(
      {this.photoId,
      this.width,
      this.height,
      this.url,
      this.photographer,
      this.photographerUrl,
      this.photographerId,
      this.photos});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        photoId: json['id'],
        width: json['width'],
        height: json['height'],
        url: json['url'],
        photographer: json['photographer'],
        photographerUrl: json['photographer_url'],
        photographerId: json['photographer_id'],
        photos: Photo.fromJson(json['src'])); //json['src']);
  }
}

class Photo {
  final String original;
  final String large2x;
  final String large;
  final String medium;
  final String small;
  final String portrait;
  final String landscape;
  final String tiny;

  Photo(
      {this.original,
      this.large2x,
      this.large,
      this.medium,
      this.small,
      this.portrait,
      this.landscape,
      this.tiny});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      original: json['original'] as String,
      large2x: json['large2x'] as String,
      large: json['large'] as String,
      medium: json['medium'] as String,
      small: json['small'] as String,
      portrait: json['portrait'] as String,
      landscape: json['landscape'] as String,
      tiny: json['tiny'] as String,
    );
  }
}
