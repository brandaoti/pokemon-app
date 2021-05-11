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
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cubos Academy - Pokemon app'),
      ),
      body: SafeArea(
        child: Container(
          width: _size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Exibir nome do pokemon'),
              ElevatedButton(
                child: Text('Buscar Pokemon'),
                onPressed: () {
                  setState(() {
                    controller.loadPokemon();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
