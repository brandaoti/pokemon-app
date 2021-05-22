import 'package:flutter/material.dart';

class PokemonSpriteComponent extends StatelessWidget {
  final String pokemonSprite;

  const PokemonSpriteComponent({
    Key key,
    @required this.pokemonSprite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      width: 240.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        // color: Colors.green.withOpacity(.5),
        image: DecorationImage(
          image: NetworkImage(pokemonSprite),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
