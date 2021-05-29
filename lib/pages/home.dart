import 'package:flutter/material.dart';
import 'pokemon/pokemon_view.dart';
import '../shared/components/background_component.dart';
import '../shared/components/card_component.dart';

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
