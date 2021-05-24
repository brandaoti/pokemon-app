import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/pokemon.dart';

class PokemonRepository {
  final String _authority = "pokeapi.co";
  // final String _path = "/api/v2/pokemon/1";

  const PokemonRepository();

  // Metodo para fazer a requisição da api
  Future<Pokemon> fetchPokemon(int idPokemon) async {
    final _response = await http.get(Uri.https(_authority, '/api/v2/pokemon/$idPokemon'));

    print('Request OK');

    if (_response.statusCode == 200) {
      final pokemon = Pokemon.fromJson(jsonDecode(_response.body));

      print(idPokemon);
      return pokemon;
    } else {
      return throw 'Error no retorno da api';
    }
  }
}
