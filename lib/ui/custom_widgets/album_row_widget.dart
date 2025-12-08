import 'dart:math';

import 'package:flutter/material.dart';

class AlbumRowWidget extends StatelessWidget {
  String thumbnailPath;
  String albumName;

  AlbumRowWidget({
    super.key,
    required this.thumbnailPath,
    required this.albumName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 11),
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.primaries[Random().nextInt(Colors.primaries.length - 1)],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -20,
            bottom: -7,
            child: Transform.rotate(
              angle: 20 * pi / 180,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 11,
                    ),
                  ],
                  image: DecorationImage(image: AssetImage(thumbnailPath)),
                ),
              ),
            ),
          ),
          Positioned(top: 11, left: 11, child: Text(albumName)),
        ],
      ),
    );
  }
}
