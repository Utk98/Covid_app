import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_app/utils/utils.dart';
import 'package:flutter_covid_app/widgets/app_bar_custom.dart';
import 'package:flutter_covid_app/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class SanitizerScreen extends StatefulWidget {
  const SanitizerScreen({Key? key}) : super(key: key);

  @override
  State<SanitizerScreen> createState() => _SanitizerScreenState();
}

class _SanitizerScreenState extends State<SanitizerScreen> {
  List covidImages = [
    'assets/sanitize1.png',
    'assets/sanitize2.png',
    'assets/sanitize3.png',
    'assets/sanitize4.png',
  ];

  @override
  Widget build(BuildContext context) {
    void _launchURL() async {
      const _url =
          'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public';
      await canLaunch(_url)
          ? await launch(_url)
          : throw 'Could not launch $_url';
    }

    return Scaffold(
      appBar: const AppBarCustom(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Sanitizing and hygiene',
                        style: kTextStyleMainHeading),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                        'WHO recommends cleaning your hands with soap and water whenever possible, as often as possible. Hand sanitizer can be used in addition to this or when washing isn\'t an option.',
                        style: kTextStyleMainText),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('Use sanitizer when...',
                            style: kTextStyleMainSubHeading),
                        SizedBox(
                          height: 5.0,
                        ),
                        RichTextReusable(
                          textOne: ' No access to water and soap',
                          textTwo: ' Before and after eating',
                          textThree: ' For extra protection',
                        ),
                      ],
                    ),
                    Divider(
                        color: Theme.of(context).dividerTheme.color,
                        thickness: 1.0),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Column(
                      children: [
                        ViewMoreRowBtn(
                          text: 'Advice from WHO',
                          function: () => _launchURL(),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SanitizerImages(covidImages: covidImages)
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
