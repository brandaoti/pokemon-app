import 'dart:async';
import 'dart:math';

import 'package:pokemon_app/shared/data/models/pokemon.dart';

import 'pokemon_model.dart';

// OBS,aqui vamos fazer o fluxo para a view
class PokemonViewModel {
  final _pokemonModel = PokemonModel();

  // Stream
  StreamController<Pokemon> _streamController = StreamController();

  get stream => _streamController.stream;

  loadPokemon() {
    // Pegar IDs aleatorio do pokémon
    final id = Random();
    final pokemonID = id.nextInt(999);

    _pokemonModel.getPokemonRepository(pokemonID).then((value) {
      _streamController.add(value);
    });
  }
}
