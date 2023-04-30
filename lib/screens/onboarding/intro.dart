import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_covid_app/screens/screens.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xfffaf9f9), Color(0xffe0d9d9)],
          ),
        ),
        child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: const <Widget>[
              Image(
                image: AssetImage('assets/vector/intro.png'),
                alignment: Alignment.center,
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xff74a55e),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const OnBoardingScreen(),
            ),
          );
        },
        label: const Text(
          'Get started',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
