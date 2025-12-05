import 'package:flutter/material.dart';

class MyRoundedImageCard extends StatelessWidget {
  double mWidth;
  double mHeight;
  String imgPath;
  bool isSelected;
  MyRoundedImageCard({
    super.key,
    this.mWidth = 100,
    this.mHeight = 100,
    required this.imgPath,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth,
      height: mHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: BoxBorder.all(
          strokeAlign: BorderSide.strokeAlignOutside,
          color: isSelected ? Colors.white : Colors.transparent,
          width: isSelected ? 2 : 0,
        ),
        
        image: DecorationImage(image: AssetImage(imgPath)),
      ),
      child: isSelected
          ? Center(
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.4),
                radius: mWidth / 2,
                child: Icon(Icons.done, color: Colors.white),
              ),
            )
          : Container(),
    );
  }
}
