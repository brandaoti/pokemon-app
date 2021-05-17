import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(height: _size.height / 8),
        Container(
          height: _size.height / 2.0,
          width: _size.width - 30.0,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.8),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0),
            ),
          ),
        ),
      ],
    );
  }
}
