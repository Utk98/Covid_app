import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_app/utils/constants.dart';

class GridCard extends StatelessWidget {
  final Color color;
  final String hedText;
  final String subHed;
  final IconData icon;
  final Function function;

  const GridCard({
    Key? key, required this.color, required this.hedText, required this.subHed, required this.icon,  required this.function
  }) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxDecorationShadow,
      child: InkWell(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            color: color,
            width: MediaQuery.of(context).size.width / 2.6,
            height: MediaQuery.of(context).size.height / 5.5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    size: 30.0,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    hedText,
                    style: kTextStyleMainHeading
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    subHed,
                    style: kTextStyleSmall
                  ),
                ],
              ),
            ),
          ),
        ),
        onTap: () => function(),
      ),
    );
  }
}
