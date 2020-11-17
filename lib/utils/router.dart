import 'package:inap/views/pages/auth.dart';
import 'package:inap/views/pages/splash.dart';
import 'package:inap/views/pages/home.dart';
import 'package:inap/views/pages/onboarding.dart';

Object appRoutes = {
  '/splash': (context) => SplashScreenPage(),
  '/home': (context) => HomePage(),
  '/onboarding': (context) => OnBoardingPage(),
  '/auth': (context) => AuthPage(),
};
