import 'package:flutter/material.dart';

class Pokemon {
  final String name;
  final String sprite;

  Pokemon({@required this.name, this.sprite});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json["name"],
      sprite: json["sprites"]["front_default"],
    );
  }
}
