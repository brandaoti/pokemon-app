import 'package:flutter/material.dart';
import 'package:pokemon_app/app/pages/pokemon/pokemon_view.dart';
import 'package:pokemon_app/app/shared/components/background_component.dart';
import 'package:pokemon_app/app/shared/components/card_component.dart';
import 'package:pokemon_app/app/shared/components/pokeball_component.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cubos Academy - Pokémon app',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BackgroundComponent(),
          Positioned(bottom: 0.0, child: CardComponent()),
          PokemonView(),
        ],
      ),
    );
  }
}
