import 'package:doctor_hunt/features/home/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<OnBoardingModel> onBoardigList = const [
    OnBoardingModel(
        image: 'assets/images/doctor1.png',
        title: 'Find Trusted Doctors',
        description:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'),
    OnBoardingModel(
        image: 'assets/images/doctor2.png',
        title: 'Choose Best Doctors',
        description:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'),
    OnBoardingModel(
        image: 'assets/images/doctor3.png',
        title: 'Easy Appointments',
        description:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'),
  ];
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) => setState(
          () {
            _currentPage = value;
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
                height: 15,
              ),

              // OnBoardingScreen(onBoardingModel: onBoardigList[index]),
            ],
          );
        },
      ),
    );
  }
}
