import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreenHero extends StatelessWidget {
  final String imageUrl;

  const FullScreenHero({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: InkWell(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Hero(
              tag: 'HeroImg',
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          onTap: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
