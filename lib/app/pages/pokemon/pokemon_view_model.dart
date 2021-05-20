import 'dart:async';
import 'dart:math';

import 'package:pokemon_app/app/pages/pokemon/pokemon_model.dart';
import 'package:pokemon_app/app/shared/models/pokemon.dart';

class PokemonViewModel {
  final _pokemonModel = PokemonModel();

  // Stream
  StreamController<Pokemon> _streamController = StreamController();

  get stream => _streamController.stream;
  // Pegar os dados do pokemon
  // Usa no parametro future
  // Future<Pokemon> get getPokemon => _pokemonModel.getPokemon;

  // Método para pegar os dados do model
  loadPokemon() {
    final randomID = Random();
    var pokemonID = randomID.nextInt(897);

    // var value = await _pokemonModel.requestPokemonApi(pokemonID);

    _pokemonModel.requestPokemonApi(pokemonID).then((value) {
      _streamController.add(value);
    });
  }
}
