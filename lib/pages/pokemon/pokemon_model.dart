import '../../shared/models/pokemon.dart';
import '../../shared/repository/pokemon_api.dart';

// OBS, aqui vamos fazer a coleta dos dados do REPOSITORY

class PokemonModel {
  final _repositoryAPI = PokemonApi();

  Future<Pokemon> carregarPokemon(int id) {
    return _repositoryAPI.fetchPokemon(id);
  }
}
