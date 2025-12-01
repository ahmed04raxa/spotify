import 'package:flutter/material.dart';
import 'package:spotifyuiclone/domain/app_colors.dart';
import 'package:spotifyuiclone/domain/ui_helper.dart';

class ChooseArtistScreen extends StatefulWidget {
  const ChooseArtistScreen({super.key});

  @override
  State<ChooseArtistScreen> createState() => _ChooseArtistScreenState();
}

class _ChooseArtistScreenState extends State<ChooseArtistScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose 3 or more artists you like.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                  fontFamily: "bold",
                  fontSize: 34
                ),
              ),
              mSpacer(),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: getSearchTextField(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
