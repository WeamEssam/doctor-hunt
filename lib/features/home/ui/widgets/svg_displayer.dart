// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class SvgDisplayer extends StatelessWidget {
//   final String assetName = 'assets/images/Logo.svg';
//   final double? heigth;
//   final double? width;

//   // final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');

//   const SvgDisplayer({super.key, this.heigth, this.width});

//   @override
//   Widget build(BuildContext context) {
//     return SvgPicture.asset(
//       assetName,
//       height: heigth,
//       width: width,
//     );
//   }
// }

import 'package:doctor_hunt/features/home/ui/screens/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

class SvgDisplayer extends StatefulWidget {
  final double? width;
  final double? height;

  const SvgDisplayer({super.key, required this.width, required this.height});

  @override
  _SvgDisplayerState createState() => _SvgDisplayerState();
}

class _SvgDisplayerState extends State<SvgDisplayer> {
  final String assetName = 'assets/svgs/Frame.svg';
  @override
  void initState() {
    super.initState();
    // تأخير الشاشة لمدة 3 ثوانٍ قبل الانتقال للشاشة الرئيسية
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const OnboardingScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // لون الخلفية
      body: Center(
        child: SvgPicture.asset(
          assetName, // هنا بناخد اسم الـ SVG من الـ constructor
          width: widget.width, // العرض الممرر للكونستركتور
          height: widget.height, // الطول الممرر للكونستركتور
        ),
      ),
    );
  }
}
