import 'package:pokemon_app/app/shared/models/pokemon.dart';
import 'package:pokemon_app/app/shared/repository/pokemon_api.dart';

class PokemonModel {
  // instancia da APi
  final _pokemonApi = PokemonApi();

  // variavel para guardar o pokemon da API
  Future<Pokemon> _pokemon;

  // getter para ter acesso a variavel _pokemon e acessá-la do controller
  Future<Pokemon> get getPokemon {
    return _pokemon;
  }

  // Método para receber os dados da API
  Future<Pokemon> requestPokemonApi() {
    return _pokemon = _pokemonApi.fetchPokemon();
  }
}
