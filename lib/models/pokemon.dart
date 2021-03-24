import 'package:pokedex/models/details.dart';

class Pokemon {
  String name;
  String url;
  Details details;

  Pokemon({this.name, this.url, this.details});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'pokemon{name: $name, url: $url, details: $details}';
  }
}
