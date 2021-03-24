import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/controllers/pokemon_controllers.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/views/details/details_view.dart';

import 'components/pokemon_block_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PokemonControllers pokemonControllers = GetIt.I<PokemonControllers>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return pokemonControllers.listPokemons.length == 0
            ? Center(child: CircularProgressIndicator())
            : GridView.builder(
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: pokemonControllers.listPokemons.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 3,
                  maxCrossAxisExtent: 240,
                  mainAxisExtent: 200,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 2,
                ),
                itemBuilder: (_, index) {
                  final Pokemon pokemon =
                      pokemonControllers.listPokemons[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: GestureDetector(
                      child: PokemonBlockView(
                        name: pokemon.name,
                        color: pokemon.details.color,
                        imgUrl: pokemon.details.imgUrl,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsView(pokemon: pokemon)));
                      },
                    ),
                  );
                },
              );
      },
    );
  }
}

/*
*
*
* */
