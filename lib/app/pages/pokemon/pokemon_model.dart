import 'dart:ffi';

import 'package:pokemon_app/app/shared/models/pokemon.dart';
import 'package:pokemon_app/app/shared/repository/pokemon_api.dart';

class PokemonModel {
  // instancia da APi
  final _pokemonApi = PokemonApi();

  // variavel para guardar o pokemon da API
  Future<Pokemon> _pokemon;
  int _pokemonID = 1; // * trocar o pokemon

  // getter para ter acesso a variavel _pokemon e acessá-la do controller
  Future<Pokemon> get getPokemon => _pokemon;

  int get getPokemonID => _pokemonID;

  // para poder atribuir um ID aleatorio no controller
  set setPokemonID(int id) {
    _pokemonID = id;
  }

  // Método para receber os dados da API
  Future<Pokemon> requestPokemonApi(int id) {
    return _pokemon = _pokemonApi.fetchPokemon(id);
  }

  // ! (Verificar) Função closure
  // Future<Pokemon> _randomPokemonID(Function(int id) onFunction) {
  //   print('Não sei pq cheguei');
  //   return _pokemonID = onFunction(_pokemonID);
  // }

  // ! para acessar a função closure no controller
  // Function get getFunction => _randomPokemonID;
}
