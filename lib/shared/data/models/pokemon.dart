import 'package:flutter/material.dart';

class Pokemon {
  final String pokemonName;
  final String pokemonSprite;
  final List<Ability> pokemonAbilities;

  Pokemon({
    @required this.pokemonName,
    @required this.pokemonSprite,
    this.pokemonAbilities,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    //
    var listOfAbilities = json['abilities'] as List;

    var pokemonAbilities = listOfAbilities.map((item) {
      return Ability.fromJson(item['ability']);
    }).toList();

    return Pokemon(
      pokemonName: json['name'],
      pokemonSprite: json['sprites']['front_default'],
      pokemonAbilities: pokemonAbilities,
    );
  }
}

// Class Ability
class Ability {
  final String abilityName;
  final String abilityUrl;

  Ability({this.abilityName, this.abilityUrl});

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(
      abilityName: json['name'],
      abilityUrl: json['url'],
    );
  }
}
