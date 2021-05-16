import 'package:flutter/material.dart';
import 'package:pokemon_app/app/pages/pokemon/pokemon_view.dart';
import 'package:pokemon_app/app/shared/components/background_component.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cubos Academy - Pokémon app',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          BackgroundComponent(),
          PokemonView(),
        ],
      ),
    );
  }
}
