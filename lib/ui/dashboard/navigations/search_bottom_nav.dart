import 'package:flutter/material.dart';
import 'package:spotifyuiclone/domain/app_colors.dart';
import 'package:spotifyuiclone/domain/ui_helper.dart';
import 'package:spotifyuiclone/ui/custom_widgets/album_row_widget.dart';

class SearchBottomNav extends StatefulWidget {
  const SearchBottomNav({super.key});

  @override
  State<SearchBottomNav> createState() => _SearchBottomNavState();
}

class _SearchBottomNavState extends State<SearchBottomNav> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              mSpacer(),
              titleUi(),
              mSpacer(mHeight: 14),
              searchBarUi(),
              mSpacer(mHeight: 14),
              topGenres(),
              mSpacer(mHeight: 14),
              popularPodcasts(),
              mSpacer(mHeight: 14),
              browseAll(),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleUi() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11),
      child: Row(
        children: [
          Text(
            "Search",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30),
        ],
      ),
    );
  }

  Widget searchBarUi() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 11),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11),
        ),
        child: TextField(
          cursorColor: AppColors.primaryColor,
          autofocus: false,
          decoration: InputDecoration(
            hintText: "Artists, songs, or podcasts",
            hintStyle: TextStyle(color: Colors.black),
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.search, color: Colors.black),
            ),
            prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget topGenres() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top genres",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          mSpacer(),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return AlbumRowWidget(
                  thumbnailPath:
                      "assets/images/Screen Shot 2021-12-08 at 14.33 1.png",
                  albumName: "Indie",
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget popularPodcasts() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular podcast categories",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          mSpacer(),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return AlbumRowWidget(
                  thumbnailPath:
                      "assets/images/Screen Shot 2021-12-08 at 14.33 1.png",
                  albumName: "Comedy",
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget browseAll() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Browse all",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          mSpacer(),
          GridView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 16 / 9,
              mainAxisSpacing: 11,
            ),
            itemBuilder: (_, index) {
              return AlbumRowWidget(
                thumbnailPath:
                    "assets/images/Screen Shot 2021-12-08 at 14.33 1.png",
                albumName: "Podcasts",
              );
            },
          ),
        ],
      ),
    );
  }
}
