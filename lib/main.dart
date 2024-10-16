import 'package:doctor_hunt/features/home/ui/screens/sign_in_screen.dart';
import 'package:doctor_hunt/features/home/ui/screens/sign_up_screen.dart';
import 'package:doctor_hunt/features/home/ui/widgets/svg_displayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const DoctorHunt()); // Wrap your app
}

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          routes: {
            SignUpScreen.id: (context) => const SignUpScreen(),
            SignInScreen.id: (context) => const SignInScreen(),
          },
        );
      },
      child: const SvgDisplayer(
        width: 90,
        height: 90,
      ),
    );
  }
}
