import 'package:flutter/material.dart';
import 'package:spotifyuiclone/domain/app_colors.dart';
import 'package:spotifyuiclone/ui/custom_widgets/my_compact_music_player_widget.dart';
import 'package:spotifyuiclone/ui/dashboard/navigations/home_bottom_nav.dart';
import 'package:spotifyuiclone/ui/dashboard/navigations/library_bottom_nav.dart';
import 'package:spotifyuiclone/ui/dashboard/navigations/search_bottom_nav.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget> mBottomNavPages = [
    HomeBottomNav(),
    SearchBottomNav(),
    LibraryBottomNav(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 65),
            child: mBottomNavPages[selectedIndex],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: MyCompactMusicPlayerWidget(
              isBluetooth: true,
              bluetoothName: "BEATSPILL+",
              songTitle: "From Me to You - Mono / Remastered",
              albumTitle: "The Beatles",
              bgColor: Color(0XFF550A1C),
              thumbnailPath:
                  "assets/images/Screen Shot 2021-12-08 at 13.39 1.png",
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.blackColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.secondryColor,
        elevation: 11,
        currentIndex: selectedIndex,
        iconSize: 11,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: AppColors.whiteColor),
        unselectedLabelStyle: TextStyle(color: AppColors.greyColor),
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Vector-3.png",
              width: 20,
              height: 20,
              color: Colors.grey,
            ),
            label: "Home",
            activeIcon: Image.asset(
              "assets/images/Vector.png",
              width: 20,
              height: 20,
              color: AppColors.whiteColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Vector-1.png",
              width: 20,
              height: 20,
              color: Colors.grey,
            ),
            label: "Search",
            activeIcon: Image.asset(
              "assets/images/Vector-1.png",
              width: 20,
              height: 20,
              color: AppColors.whiteColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/Vector-2.png",
              width: 20,
              height: 20,
              color: Colors.grey,
            ),
            label: "Library",
            activeIcon: Image.asset(
              "assets/images/Vector-2.png",
              width: 20,
              height: 20,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
