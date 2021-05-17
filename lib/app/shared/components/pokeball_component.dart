import 'package:flutter/material.dart';

class PokeballComponent extends StatelessWidget {
  final Widget child;

  const PokeballComponent({Key key, @required this.child}) : super(key: key);

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
                height: 100.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.8),
                  border: Border.all(color: Colors.redAccent),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100.0),
                    topLeft: Radius.circular(100.0),
                  ),
                )),
            SizedBox(height: 10.0),

            // Bottom
            Container(
              height: 100.0,
              width: 200.0,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.8),
                border: Border.all(color: Colors.grey[50]),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100.0),
                  bottomLeft: Radius.circular(100.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    offset: Offset(0, 10.0),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ],
        ),

        // * Para chamar o Sprite dentro da pokeball
        // * Passando um filho como componente
        child,
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
