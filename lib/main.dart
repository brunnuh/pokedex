import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/controllers/pokemon_controllers.dart';
import 'package:pokedex/views/init_home.dart';

void main() async {
  setLocators();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: InitHome(),
    );
  }
}

void setLocators() {
  GetIt.I.registerSingleton(PokemonControllers());
}
