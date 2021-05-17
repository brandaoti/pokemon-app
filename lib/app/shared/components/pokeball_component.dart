import 'package:flutter/material.dart';

class PokemonCardComponent extends StatelessWidget {
  final String pokemonSprite;

  const PokemonCardComponent({Key key, this.pokemonSprite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top
            Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.8),
                  border: Border.all(width: 2.0),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150.0),
                    topLeft: Radius.circular(150.0),
                  ),
                )),
            SizedBox(height: 5.0),

            // Bottom
            Container(
                height: 150.0,
                width: 300.0,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                  border: Border.all(width: 2.0),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150.0),
                    bottomLeft: Radius.circular(150.0),
                  ),
                )),

            //
          ],
        ),
      ],
    );
  }
}

// Center(
//           child: Container(
//             height: 100.0,
//             width: 100.0,
//             padding: EdgeInsets.all(10.0),
//             decoration: BoxDecoration(
//               color: Colors.white38,
//               border: Border.all(
//                 width: 5.0,
//                 color: Colors.white54,
//               ),
//               shape: BoxShape.circle,
//             ),
//             child: Center(
//               child: Container(
//                 height: 100.0,
//                 width: 100.0,
//                 padding: EdgeInsets.all(10.0),
//                 decoration: BoxDecoration(
//                   color: Colors.white54,
//                   // border: Border.all(),
//                   shape: BoxShape.circle,
//                 ),
//               ),
//             ),
//           ),
//         ),
