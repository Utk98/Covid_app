import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_covid_app/screens/screens.dart';
import 'package:flutter_covid_app/utils/utils.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  final _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void nextPage() {
    if (currentIndex == items.length - 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }
    _controller.nextPage(
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 150, 20, 20),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: _controller,
                  itemCount: items.length,
                  onPageChanged: onChanged,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Lottie.asset(items[index].url,
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: MediaQuery.of(context).size.height / 6),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          items[index].title,
                          style: kTextStyleLarge,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          items[index].content,
                          style: kTextStyleSmall.copyWith(
                              fontSize: 20.0, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                items.length,
                (index) => Container(
                  height: 10.0,
                  width: currentIndex == index ? 25 : 10,
                  margin: const EdgeInsets.only(right: 5.0, bottom: 40.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffded8bd),
                  ),
                ),
              ),
            ),
            Container(
                height: 50.0,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 40.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff74a55e),
                    ),
                    child: Text(
                      currentIndex == items.length - 1 ? 'Continue' : 'Next',
                      style: const TextStyle(fontSize: 22.0),
                    ),
                    onPressed: () => nextPage()))
          ],
        ),
      ),
    );
  }
}
