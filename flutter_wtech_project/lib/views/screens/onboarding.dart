import 'package:flutter/material.dart';
import 'package:flutter_wtech_project/views/screens/home_screen.dart';

import 'package:flutter_wtech_project/views/widgets/animated_image.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    List<String> onboardingTitle = [
      'İnsan ruhunun bir parçası hayvan sevgisini tadana kadar uyanmaz',
      ' Bir milletin büyüklüğü ve ahlaki gelişimi, hayvanlara olan davranış biçimi ile değerlendirilir.',
      'İnsanoğlu, hayvanlara hükmetmeye kalkışma, onlar günahsızdır; oysa sen, büyüklüğüne rağmen yaşadığın yeryüzü toprağını çürütüyor, arkada sadece bu çürümenin izlerini bırakıyorsun.'
    ];
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: '',
            bodyWidget: Center(
              child: Text(
                onboardingTitle[0],
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            image: const Center(child: AnimatedImage()),
          ),
          PageViewModel(
            title: '',
            bodyWidget: Center(
              child: Text(
                onboardingTitle[1],
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            image: const Center(child: AnimatedImage()),
          ),
          PageViewModel(
            title: '',
            bodyWidget: Center(
              child: Text(
                onboardingTitle[2],
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            image: const Center(child: AnimatedImage()),
          )
        ],
        done: const Icon(
          Icons.arrow_forward,
          size: 30,
          color: Colors.black,
        ),
        onDone: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        showDoneButton: true,
        showNextButton: false,
        showSkipButton: false,
        globalBackgroundColor: Colors.green.shade200,
        skipColor: Colors.black,
        nextColor: Colors.black,
      ),
    );
  }
}
