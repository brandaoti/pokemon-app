import 'package:pokemon_app/app/pages/pokemon/pokemon_model.dart';
import 'package:pokemon_app/app/shared/models/pokemon.dart';

class PokemonController {
  final _pokemonModel = PokemonModel();

  Future<Pokemon> get getPokemon => _pokemonModel.getPokemon;

  // Método para pegar os dados do model
  Future loadPokemon() {
    return _pokemonModel.requestPokemonApi();
  }
}
