import 'package:flutter/material.dart';
import 'package:spotifyuiclone/domain/app_colors.dart';
import 'package:spotifyuiclone/domain/ui_helper.dart';
import 'package:spotifyuiclone/ui/custom_widgets/my_custom_rounded_btn.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset("assets/images/Screenshot 2025-11-30 193131.png"),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.blackColor.withOpacity(0.3),
                    AppColors.blackColor,
                  ],
                ),
              ),
            ),
            bottomUiLogin(),
          ],
        ),
      ),
    );
  }

  Widget bottomUiLogin() => Container(
    padding: EdgeInsets.only(bottom: 34),
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/Logo.png", width: 50, height: 50),
        mSpace(),
        Text(
          "Millions of Songs.\nFree on Spotify.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        mSpace(),
        MyCustomRoundedBtn(
          bgColor: AppColors.primaryColor,
          onTap: () {},
          text: "Sign up free",
        ),
        mSpace(),
        MyCustomRoundedBtn(
          isOutlined: true,
          mIconPath: "assets/svg/google.svg",
          bgColor: AppColors.secondryColor,
          textColor: Colors.white,
          onTap: () {},
          text: "Continue with Google",
        ),
        mSpace(),
        MyCustomRoundedBtn(
          isOutlined: true,
          mIconPath: "assets/svg/facebook.svg",
          bgColor: AppColors.secondryColor,
          textColor: Colors.white,
          onTap: () {},
          text: "Continue with Facebook",
        ),
        mSpace(),
        MyCustomRoundedBtn(
          isOutlined: true,
          mIconPath: "assets/svg/Vector.svg",
          bgColor: AppColors.secondryColor,
          textColor: Colors.white,
          onTap: () {},
          text: "Continue with Apple",
        ),
        mSpace(),
        TextButton(
          onPressed: () {},
          child: Text(
            "Log In",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
