import 'package:flutter/material.dart';

class Pokemon {
  String pokemonName;
  String pokemonSprite;
  List<Ability> pokemonAbilities;
  Pokemon({
    @required this.pokemonName,
    @required this.pokemonSprite,
    this.pokemonAbilities,
  });

  Pokemon.fromJson(Map<String, dynamic> json) {
    pokemonName = json["name"];
    pokemonSprite = json["sprites"]["front_default"];

    var arryAbilities = json['abilities'] as List;

    pokemonAbilities = arryAbilities.map((item) {
      return Ability.fromJson(item['ability']);
    }).toList();
  }
}

// Classe abilities
class Ability {
  final String abilityName;
  final String abilityUrl;

  Ability({@required this.abilityName, @required this.abilityUrl});

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(
      abilityName: json['name'],
      abilityUrl: json['url'],
    );
  }
}
