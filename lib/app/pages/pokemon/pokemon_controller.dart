import 'package:pokemon_app/app/pages/pokemon/pokemon_model.dart';

class PokemonController {
  final _pokemonModel = PokemonModel();

  // Método para pegar os dados do model
  Future loadPokemon() {
    return _pokemonModel.getPokemon();
  }
}
