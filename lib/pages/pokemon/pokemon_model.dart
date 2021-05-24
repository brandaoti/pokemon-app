import '../../shared/data/models/pokemon.dart';
import '../../shared/data/repository/pokemon_repository.dart';

// OBS, aqui vamos fazer a coleta dos dados do REPOSITORY

class PokemonModel {
  final PokemonRepository repositoryAPI;

  Future<Pokemon> pokemon;

  PokemonModel({this.repositoryAPI = const PokemonRepository()});

  Future<Pokemon> getPokemonRepository(int id) {
    return pokemon = repositoryAPI.fetchPokemon(id);
  }
}
