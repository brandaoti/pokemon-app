import 'package:flutter/material.dart';
import 'package:pokemon_app/app/pages/pokemon/pokemon_controller.dart';

class PokemonView extends StatefulWidget {
  PokemonView({Key key}) : super(key: key);

  @override
  _PokemonViewState createState() => _PokemonViewState();
}

class _PokemonViewState extends State<PokemonView> {
  final controller = PokemonController();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
