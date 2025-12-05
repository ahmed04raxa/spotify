import 'package:flutter/widgets.dart';
import 'package:spotifyuiclone/ui/create_account/create_account_screen.dart';
import 'package:spotifyuiclone/ui/intro/choose_artist_screen.dart';
import 'package:spotifyuiclone/ui/intro/choose_podcast_screen.dart';
import 'package:spotifyuiclone/ui/intro/intro_screen.dart';
import 'package:spotifyuiclone/ui/splash/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String introScreen = "/intro";
  static const String createAccountScreen = "/createAccount";
  static const String chooseArtistScreen = "/chooseArtist";
  static const String choosePodcastScreen = "/choosePodcast";

  static Map<String, Widget Function(BuildContext)> getRoutes() => {
    splashScreen: (context) => SplashScreen(),
    introScreen: (context) => IntroScreen(),
    createAccountScreen: (context) => CreateAccountScreen(),
    chooseArtistScreen: (context) => ChooseArtistScreen(),
    choosePodcastScreen: (context) => ChoosePodcastScreen(),
  };
}
