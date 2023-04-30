import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clipper_widget.dart';

class AppHeader extends StatelessWidget {
  final String image;
  const AppHeader({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 260.0,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xff75a275), Color(0xffdd5858)],
          ),
          image: DecorationImage(image: AssetImage(image)),
        ),
      ),
    );
  }
}
