import 'dart:math';

import 'package:pokemon_app/app/pages/pokemon/pokemon_model.dart';
import 'package:pokemon_app/app/shared/models/pokemon.dart';

class PokemonController {
  final _pokemonModel = PokemonModel();

  // Pegar os dados do pokemon
  // Usa no parametro future
  Future<Pokemon> get getPokemon => _pokemonModel.getPokemon;

  // Pegar o valor do ID do model
  // pokemonID inicia com  1
  int get _pokemonID => _pokemonModel.getPokemonID;

  // Método para pegar os dados do model
  Future<Pokemon> loadPokemon() {
    final randomID = Random();

    _pokemonModel.setPokemonID = randomID.nextInt(897);
    return _pokemonModel.requestPokemonApi(_pokemonID);
  }

  // ! Acessa a função closure e faz o controle para chamada da view
  // Future<Pokemon> loadingPokemon() async {
  //   Future<Pokemon> pokemon = await _pokemonModel.getFunction(loadPokemon());
  //   return pokemon;
  // }
}
