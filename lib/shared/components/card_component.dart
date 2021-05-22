import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: _size.height / 7),
        Container(
          height: _size.height / 2.3,
          width: _size.width - 30.0,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.8),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
              // bottom: Radius.circular(20.0),
            ),
          ),
        ),
      ],
    );
  }
}
