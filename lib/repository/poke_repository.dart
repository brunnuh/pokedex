import 'package:dio/dio.dart';
import 'package:pokedex/models/details.dart';
import 'package:pokedex/models/pokemon.dart';

class PokeRepository {
  Dio dio = Dio();
  final String url = 'https:pokeapi.co/api/v2/pokemon';

  Future<List<Pokemon>> getPokemons() async {
    try {
      List<Pokemon> pokemons = [];

      final Response response = await dio.get(url + '?limit=5');

      response.data['results'].forEach((e) {
        pokemons.add(Pokemon.fromJson(e));
      });

      return pokemons;
    } on DioError {
      return Future.error('Falha ao buscar pokemons');
    }
  }

  Future<Details> getDetails(String name) async {
    try {
      final Response response = await dio.get(url + '/$name');

      return Details.fromJson(response.data);
    } on DioError {
      return Future.error('Falha ao buscar detalhes do pokemon');
    }
  }
}
