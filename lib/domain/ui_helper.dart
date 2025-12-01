import 'package:flutter/material.dart';
import 'package:spotifyuiclone/domain/app_colors.dart';

Widget mSpacer({double mWidth = 11, double mHeight = 11}) =>
    SizedBox(width: mWidth, height: mHeight);

InputDecoration getCreateAccountTextField() => InputDecoration(
  filled: true,
  fillColor: AppColors.greyColor,
  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(color: AppColors.primaryColor),
  ),
);
