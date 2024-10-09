// ignore_for_file: library_private_types_in_public_api

import 'package:doctor_hunt/features/home/ui/screens/on_boarding_screen.dart';
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

    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const OnboardingScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SvgPicture.asset(
          assetName,
          width: widget.width,
          height: widget.height,
        ),
      ),
    );
  }
}
