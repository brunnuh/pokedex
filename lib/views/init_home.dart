import 'package:flutter/material.dart';
import 'package:pokedex/views/home/home_view.dart';

class InitHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
        centerTitle: true,
        backgroundColor: Color(0xffC04E45),
      ),
      body: Container(
        color: Color(0xff222222),
        child: HomeView(),
      ),
    );
  }
}
