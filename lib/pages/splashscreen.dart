import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lifeandget_trainer/contantstring/colors.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors().splashscreenbacground,
      body: Center(
        child: Container(
          width: 50.w,
          height: 20.h,

          child: Image.asset('assets/images/logo.png',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}