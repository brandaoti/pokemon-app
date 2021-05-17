import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pokemon_app/app/pages/pokemon/pokemon_controller.dart';
import 'package:pokemon_app/app/shared/components/pokeball_component.dart';
import 'package:pokemon_app/app/shared/models/pokemon.dart';

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
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: _size.width,
          // color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<Pokemon>(
                  future: controller.getPokemon,
                  builder: (_, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:

                      case ConnectionState.waiting:
                        {
                          return Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Carregando Pokémon...',
                                  textScaleFactor: 1.5,
                                ),
                                SizedBox(height: 10.0),
                                CircularProgressIndicator(),
                              ],
                            ),
                          );
                        }
                      // break;

                      default:
                        if (snapshot.hasError) {
                          return Text('Pokemon não encontrado!');
                        }
                        //
                        else {
                          return Column(
                            children: [
                              PokemonCardComponent(
                                pokemonSprite: snapshot.data.pokemonSprite,
                              ),
                              // Container(
                              //   height: 100,
                              //   width: 100,
                              //   child: ListView.builder(
                              //     itemCount: snapshot.data.pokemonAbilities.length,
                              //     itemBuilder: (context, index) {
                              //       var pokemon = snapshot.data.pokemonAbilities[index];
                              //       return Text(
                              //         pokemon.abilityName,
                              //       );
                              //     },
                              //   ),
                              // ),
                            ],
                          );
                        }
                    }
                  }),
            ],
          ),
        ),
      ),
      // * Botão para buscar novos pokemon
      bottomNavigationBar: Container(
        width: _size.width,
        height: _size.height * .1,
        child: Center(
          child: ElevatedButton(
            child: Text('Buscar Pokemon'),
            onPressed: () {
              setState(() {
                controller.loadPokemon();
              });
            },
          ),
        ),
      ),
    );
  }
}
