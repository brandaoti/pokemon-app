import '../../shared/data/models/pokemon.dart';
import '../../shared/data/repository/pokemon_repository.dart';

// OBS, aqui vamos fazer a coleta dos dados do REPOSITORY

class PokemonModel {
  final _repositoryAPI = PokemonRepository();

  Future<Pokemon> getPokemonRepository(int id) {
    return _repositoryAPI.fetchPokemon(id);
  }
}
