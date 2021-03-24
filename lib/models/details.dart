import 'package:flutter/material.dart';
import 'package:pokedex/colors_pokemon.dart';

class Details {
  String type;
  Color color;
  String imgUrl;
  List<String> abilities;

  Details({this.type, this.imgUrl, this.color, this.abilities});

  factory Details.fromJson(Map<String, dynamic> json) {
    Details details = Details(
      type: json['types'][0]['type']['name'],
      color: colors[json['types'][0]['type']['name']] ?? Colors.grey,
      imgUrl: json['sprites']['other']['official-artwork']['front_default'],
      abilities: [],
    );
    if (json['abilities'] != null) {
      json['abilities'].forEach((a) {
        details.abilities.add(a['ability']['name']);
      });
    }
    return details;
  }

  @override
  String toString() {
    return 'Details{type: $type, imgUrl: $imgUrl}';
  }
}
