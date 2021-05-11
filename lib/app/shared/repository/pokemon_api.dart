import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokemon_app/app/shared/models/pokemon.dart';

class PokemonApi {
  //
  final String _authority = "pokeapi.co";
  final String _path = "/api/v2/pokemon/1";

  // Metodo para fazer a requisição da api
  Future<Pokemon> fetchPokemon() async {
    final _response = await http.get(Uri.https(_authority, _path));

    print('Request OK');

    if (_response.statusCode == 200) {
      final pokemon = Pokemon.fromJson(jsonDecode(_response.body));

      return pokemon;
    } else {}
  }
}
