import 'dart:ui';

import 'package:flutter/material.dart';

import '../../shared/components/loading_component.dart';
import '../../shared/components/pokeball_component.dart';
import '../../shared/components/pokemon_sprite_component.dart';
import '../../shared/data/models/pokemon.dart';
import '../pokemon_details/pokemon_detail.dart';
import 'pokemon_view_model.dart';

class PokemonView extends StatefulWidget {
  PokemonView({Key key}) : super(key: key);

  @override
  _PokemonViewState createState() => _PokemonViewState();
}

class _PokemonViewState extends State<PokemonView> {
  final controller = PokemonViewModel();

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        // color: Colors.green,
        width: _size.width,
        height: _size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<Pokemon>(
              stream: controller.stream,
              builder: (_, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:

                  case ConnectionState.waiting:
                    return LoadingCircularIndicator();

                  // break;

                  default:
                    if (snapshot.hasError) {
                      return LoadingErrorComponent();
                    }
                    //
                    else {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PokemonDetail(pokemon: snapshot.data),
                            ),
                          );
                        },
                        child: Container(
                          // color: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              PokeballComponent(
                                child: PokemonSpriteComponent(
                                  pokemonSprite: snapshot.data.pokemonSprite,
                                ),
                              ),
                              SizedBox(height: 20),
                              Card(
                                color: Colors.red.withOpacity(.3),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 2.0,
                                  ),
                                  child: Text(
                                    snapshot.data.pokemonName.toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                }
              },
            ),
          ],
        ),
      ),
      // * Bot??o para buscar novos pokemon
      floatingActionButton: Container(
        width: _size.width - 30.0,
        height: _size.height * .1,
        // color: Colors.white,
        child: Center(
          child: ElevatedButton(
            child: Text('Buscar Pokemon'),
            onPressed: () {
              controller.loadPokemon();
            },
          ),
        ),
      ),
    );
  }
}
