import 'package:flutter/material.dart';

class LoadingCircularIndicator extends StatelessWidget {
  const LoadingCircularIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.red,
      height: _size.height / 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
              Text('Carregando Pokémon...',
                  style: TextStyle(
                    fontSize: 24.0,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 5
                      ..color = Colors.blue[900],
                  )),
              Text('Carregando Pokémon...',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.yellow,
                  )),
            ],
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}

class LoadingErrorComponent extends StatelessWidget {
  const LoadingErrorComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.01),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Pokémon',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.red[800],
                  ),
                ),
                TextSpan(text: ' não'),
                TextSpan(text: ' encontrado!'),
              ],
              style: TextStyle(
                fontSize: 24.0,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.blue[900],
              ),
            ),
          ),
          Text('Pokémon não encontrado!',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.yellow,
              )),
        ],
      ),
    );
  }
}
