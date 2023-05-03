import 'package:ecommerce_app/res/color.dart';
import 'package:ecommerce_app/view/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  List<PageViewModel> listPagesViewModal = [
    PageViewModel(
      title: "Find home service hear you",
      body:
          "Choose from a range of services such as makeup, hair, heena and nails",
      image: Image.asset(
        "assets/images/intro_image.png",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 623,
      ),
      decoration: PageDecoration(
        imageFlex: 5,
        titleTextStyle: TextStyle(
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        bodyTextStyle: TextStyle(color: AppColors.blackColor),
      ),
    ),
    PageViewModel(
      title: "Book through the App",
      body:
          "Book a time slot for the service you require, make any payment where applicable and you are ready to go!",
      image: Image.asset(
        "assets/images/intro_image2.png",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 623,
      ),
      decoration: PageDecoration(
        imageFlex: 5,
        titleTextStyle: TextStyle(
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        bodyTextStyle: TextStyle(color: AppColors.blackColor),
      ),
    ),
    PageViewModel(
      title: "Title of blue page",
      body:
          "Welcome to the app! This is a description on a page with a blue background.",
      image: Image.asset(
        "assets/images/intro_image3.png",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 623,
      ),
      decoration: PageDecoration(
        imageFlex: 5,
        titleTextStyle: TextStyle(
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        bodyTextStyle: TextStyle(color: AppColors.blackColor),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: AppColors.introTextColor,
        // color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
      pages: listPagesViewModal,
      done: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 11),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: AppColors.introTextColor),
        child: Text(
          "Get Started",
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ),
      showBackButton: false,
      showNextButton: false,
      onDone: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      },
    );

  }
}
