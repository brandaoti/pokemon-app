import 'package:flutter/material.dart';

class BackgroundComponent extends StatelessWidget {
  const BackgroundComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.srgbToLinearGamma(),
        ),
      ),
    );
  }
}
