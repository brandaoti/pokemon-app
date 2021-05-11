import 'package:flutter/material.dart';
import 'package:pokemon_app/app/pages/pokemon/pokemon_controller.dart';
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
      appBar: AppBar(
        title: Text('Cubos Academy - Pokemon app'),
      ),
      body: SafeArea(
        child: Container(
          width: _size.width,
          color: Colors.green,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Carregando dados...',
                                  textScaleFactor: 1.5,
                                ),
                                CircularProgressIndicator(
                                  backgroundColor: Colors.red,
                                ),
                              ],
                            ),
                          );
                        }
                      // break;

                      default:
                        if (snapshot.hasError) {
                          return Text('Erro ao carregar pokemon!');
                        }
                        //
                        else {
                          return Container(
                            color: Colors.orange,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  snapshot.data.sprite,
                                  // width: 200,
                                  // height: 200,
                                  // fit: BoxFit.cover,
                                ),
                                Text(snapshot.data.name),
                              ],
                            ),
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
