import 'package:flutter/material.dart';
import 'package:pokemon_app/app/pages/pokemon/pokemon_view.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon app',
      home: PokemonView(),
    );
  }
}
