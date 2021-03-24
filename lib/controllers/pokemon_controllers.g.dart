// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_controllers.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonControllers on _PokemonControllers, Store {
  final _$listPokemonsAtom = Atom(name: '_PokemonControllers.listPokemons');

  @override
  ObservableList<Pokemon> get listPokemons {
    _$listPokemonsAtom.reportRead();
    return super.listPokemons;
  }

  @override
  set listPokemons(ObservableList<Pokemon> value) {
    _$listPokemonsAtom.reportWrite(value, super.listPokemons, () {
      super.listPokemons = value;
    });
  }

  @override
  String toString() {
    return '''
listPokemons: ${listPokemons}
    ''';
  }
}
