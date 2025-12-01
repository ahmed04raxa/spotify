import 'package:flutter/widgets.dart';
import 'package:spotifyuiclone/ui/create_account/create_account_screen.dart';
import 'package:spotifyuiclone/ui/intro/intro_screen.dart';
import 'package:spotifyuiclone/ui/splash/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String introScreen = "/intro";
  static const String createAccountScreen = "/createAccount";

  static Map<String, Widget Function(BuildContext)> getRoutes() => {
    splashScreen: (context) => SplashScreen(),
    introScreen: (context) => IntroScreen(),
    createAccountScreen: (context) => CreateAccountScreen(),
  };
}
