import 'package:flutter/material.dart';
import 'package:spotifyuiclone/domain/app_colors.dart';
import 'package:spotifyuiclone/domain/ui_helper.dart';
import 'package:spotifyuiclone/ui/custom_widgets/my_rounded_image_card.dart';

class ChoosePodcastScreen extends StatefulWidget {
  const ChoosePodcastScreen({super.key});

  @override
  State<ChoosePodcastScreen> createState() => _ChoosePodcastScreenState();
}

class _ChoosePodcastScreenState extends State<ChoosePodcastScreen> {
  List<int> selectedPodcast = [];


  List<List<Map<String, dynamic>>> mPodcast = [

    [
      {"imgPath": "assets/images/Bryce Vine.png", "name": "Bryce Vine"},
      {"imgPath": "assets/images/Members.png", "name": "Members"},
    ],
    
    [
      {"imgPath": "assets/images/Members.png", "name": "Members"},
      {"imgPath": "assets/images/Afterburner.png", "name": "After Burner"},
    ],
    [
      {
        "imgPath": "assets/images/Anthem of the Peaceful Army.png",
        "name": "Peaceful Army",
      },
      {"imgPath": "assets/images/Bryce Vine.png", "name": "Bryce Vine"},
    ],
    [
      {"imgPath": "assets/images/Members.png", "name": "Members"},
      {"imgPath": "assets/images/Afterburner.png", "name": "After Burner"},
    ],
    [
      {
        "imgPath": "assets/images/Anthem of the Peaceful Army.png",
        "name": "Peaceful Army",
      },
      {"imgPath": "assets/images/Bryce Vine.png", "name": "Bryce Vine"},
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Now choose some podcasts.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                  fontFamily: "bold",
                  fontSize: 34,
                ),
              ),
              mSpacer(),
              SizedBox(
                height: 50,
                child: TextField(decoration: getSearchTextField()),
              ),
              mSpacer(mHeight: 21),
              Expanded(
                child: Stack(
                  children: [
                    ListView.builder(
                      itemCount: mPodcast.length,
                      itemBuilder: (_, index) {
                        return SizedBox(
                          height: 150,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: mPodcast[index].length,
                            itemBuilder: (_, childIndex) {
                              return Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: Column(
                                  children: [
                                    MyRoundedImageCard(
                                      imgPath:
                                          mPodcast[index][childIndex]['imgPath'],
                                    ),
                                    mSpacer(),
                                    Text(
                                      mPodcast[index][childIndex]['name'],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
