import 'package:flutter/material.dart';
import 'package:pokemon_app/app/pages/home.dart';
import 'package:pokemon_app/app/pages/pokemon/pokemon_view.dart';
import 'package:pokemon_app/app/pages/pokemon_details/pokemon_detail.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokemon app',
      home: PokemonDetail(),
    );
  }
}
