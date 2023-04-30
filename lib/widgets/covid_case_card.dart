import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_app/utils/constants.dart';

class CovidCaseCard extends StatefulWidget {
  final String text;
  final String numbers;

  const CovidCaseCard({Key? key, required this.text, required this.numbers})
      : super(key: key);

  @override
  State<CovidCaseCard> createState() => _CovidCaseCardState();
}

class _CovidCaseCardState extends State<CovidCaseCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        decoration: kBoxDecorationShadow,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            color: const Color(0xffeee8e7),
            width: MediaQuery.of(context).size.width / 2.6,
            height: MediaQuery.of(context).size.height / 5.5,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.coronavirus, color: Color(0xffFC7753)),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(widget.numbers, style: kTextStyleNumbers),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(widget.text,
                      style: kTextStyleSmall.copyWith(
                          color: Colors.grey.shade600, fontSize: 18.0),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
