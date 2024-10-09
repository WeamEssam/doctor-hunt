import 'package:doctor_hunt/core/constants/constant_colors.dart';
import 'package:doctor_hunt/core/constants/constants_image.dart';
import 'package:doctor_hunt/core/helper/on_boarding_list.dart';
import 'package:doctor_hunt/features/home/ui/screens/sign_in_screen.dart';
import 'package:doctor_hunt/features/home/ui/screens/sign_up_screen.dart';
import 'package:doctor_hunt/features/home/ui/widgets/custome_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                kPrimaryBackground,
              ),
              fit: BoxFit.cover),
        ),
        child: PageView.builder(
          controller: pageController,
          onPageChanged: (value) => setState(
            () {
              currentPage = value;
            },
          ),
          itemCount: onBoardigList.length,
          itemBuilder: (context, index) {
            return Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(onBoardigList[index].image),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  onBoardigList[index].title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    onBoardigList[index].description,
                    style: const TextStyle(
                      color: Color(0xff677294),
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    if (currentPage == 2) {
                      Navigator.pushNamed(context, SignInScreen.id);
                    } else {
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.linear);
                    }
                  },
                  child: const CustomButton(
                    title: 'Get Started',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    if (currentPage == 2) {
                      Navigator.pushNamed(context, SignUpScreen.id);
                    } else {
                      pageController.jumpToPage(currentPage = 2);
                    }
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 14,
                      color: kGrey,
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
