import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_app/pages/pokemon/pokemon_model.dart';
import 'package:pokemon_app/shared/data/repository/pokemon_repository.dart';

// Integração de teste
void main() {
  test('FetchPokemon deve preencher a variavel ID', () {
    final model = PokemonModel();

    expect(model.getPokemonRepository(1), completion(isNotNull));

    model.pokemon.then((pokemon) {
      expect(pokemon.pokemonName, 'bulbasaur');
    });
  });
}
