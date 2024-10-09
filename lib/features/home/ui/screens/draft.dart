// import 'package:doctor_hunt/features/home/data/models/on_boarding_model.dart';
// import 'package:flutter/material.dart';

// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({super.key, required this.onBoardingModel});
//   final OnBoardingModel onBoardingModel;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Image.asset(onBoardingModel.image),
//           Text(onBoardingModel.title),
//           Text(onBoardingModel.description),
//         ],
//       ),
//     );
//   }
// }


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