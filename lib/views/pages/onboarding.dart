import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:inap/utils/styles.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  static const bodyTextStyle = TextStyle(fontSize: 19.0, color: Colors.white);
  static const titleStyle = TextStyle(
      fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.white);
  static const accentStyle = TextStyle(color: Styles.accentGreen);
  static const pageDecoration = const PageDecoration(
    boxDecoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/onboarding/bg.png"),
        fit: BoxFit.cover,
      ),
    ),
    imagePadding: EdgeInsets.zero,
    imageFlex: 1,
  );

  Widget _buildImage(String assetName) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(left: 32), // Haxz
        child: Image.asset(
          'assets/images/onboarding/$assetName.png',
        ),
      ),
      alignment: Alignment.bottomLeft,
    );
  }

  Widget _buildBody(String bodyText) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Text(bodyText, style: bodyTextStyle),
    );
  }

  Widget _buildTitle(String titleText) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(titleText, textAlign: TextAlign.left, style: titleStyle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          titleWidget: _buildTitle("Sesuaikan dengan Goals Mu"),
          bodyWidget: _buildBody(
              "Kamu ingin mengurangi berat badan? Ingin punya mood lebih bagus? Ingin lebih sehat? Pilih goals yang kamu, biar kami sesuaikan waktunya."),
          image: _buildImage('img1'),
          decoration: pageDecoration,
          // decoration:
        ),
        PageViewModel(
          titleWidget: _buildTitle("Tanpa Perlu Input"),
          bodyWidget: _buildBody(
              "Inap dengan pintar mengetahui kapan dirimu tertidur dan terbangun. Jadi, kamu tidak perlu repot mengisi jurnal tidurmu."),
          image: _buildImage('img2'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: _buildTitle("Memastikan Kualitas Tidur terbaik"),
          bodyWidget: _buildBody(
              "Inap membantumu untuk memastikan bahwa tidur yang akan kamu dapatkan adalah tidur terbaikmu."),
          image: _buildImage('img3'),
          decoration: pageDecoration,
        )
      ],
      onDone: () => {Navigator.of(context).pushNamed("/auth")},
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      globalBackgroundColor: Colors.transparent,
      skip: const Text('Lewati', style: accentStyle),
      next: const Text('Selanjutnya', style: accentStyle),
      done: const Text('Selanjutnya', style: accentStyle),
      dotsDecorator: const DotsDecorator(
        activeColor: Styles.accentGreen,
        activeShape: CircleBorder(),
      ),
    );
  }
}
