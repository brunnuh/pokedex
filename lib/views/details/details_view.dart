import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/views/details/components/abilities_view.dart';
import 'package:pokedex/views/details/components/button_details.dart';
import 'package:pokedex/views/details/components/type_view.dart';

class DetailsView extends StatelessWidget {
  Pokemon pokemon;

  DetailsView({this.pokemon});

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
        backgroundColor: pokemon.details.color,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xff222222),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: pokemon.name,
              child: Container(
                decoration: BoxDecoration(
                  color: pokemon.details.color,
                  image: DecorationImage(
                    scale: 2,
                    image: NetworkImage(pokemon.details.imgUrl),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: ButtonDetails(
                    title: 'Habilidades',
                    color: Colors.green.shade700,
                  ),
                  onTap: () => _pageController.jumpToPage(0),
                ),
                GestureDetector(
                  child: ButtonDetails(
                    title: 'Tipo',
                    color: Colors.orange,
                  ),
                  onTap: () => _pageController.jumpToPage(1),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.395,
              child: PageView(
                controller: _pageController,
                children: [
                  AbilitiesView(
                    abilities: pokemon.details.abilities,
                  ),
                  TypeView(
                    name: pokemon.name,
                    type: pokemon.details.type,
                    color: pokemon.details.color,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
