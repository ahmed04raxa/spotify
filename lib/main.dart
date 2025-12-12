import 'package:flutter/material.dart';
import 'package:spotifyuiclone/domain/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        fontFamily: "regular",
      ),
      routes: AppRoutes.getRoutes(),
      initialRoute: AppRoutes.splashScreen,
    );
  }
}
