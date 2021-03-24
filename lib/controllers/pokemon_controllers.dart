import 'package:mobx/mobx.dart';
import 'package:pokedex/models/details.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/repository/poke_repository.dart';

part 'pokemon_controllers.g.dart';

class PokemonControllers = _PokemonControllers with _$PokemonControllers;

abstract class _PokemonControllers with Store {
  _PokemonControllers() {
    getPokemons();
  }

  // Observers
  @observable
  ObservableList<Pokemon> listPokemons = ObservableList<Pokemon>();

  // Action

  Future<void> getPokemons() async {
    listPokemons.clear();
    List<Pokemon> pokemons = await PokeRepository().getPokemons();

    pokemons.forEach((Pokemon element) async {
      final Details details = await PokeRepository().getDetails(element.name);
      element.details = details;
      listPokemons.add(element);
    });
  }

  //Computed

}
