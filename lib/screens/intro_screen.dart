

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget{
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>{

  @override
  Widget build(BuildContext context){
    PageDecoration pageDecoration = PageDecoration(
      imagePadding: const EdgeInsets.all(0),
      contentMargin: EdgeInsets.only(
        top: Get.height * 0.1256,
      ),
      imageAlignment: Alignment.center,
      bodyTextStyle: Theme.of(context).textTheme.labelLarge!.copyWith(),
      titleTextStyle: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(fontWeight: FontWeight.w700),
    );
    return IntroductionScreen(
      globalBackgroundColor: const Color(0xffFFFDFD),
      dotsDecorator: const DotsDecorator(activeColor: Colors.black),
      isTopSafeArea: true,
      isBottomSafeArea: true,
      pages: [
        PageViewModel(
          title: "Hiring",
          body: "Hire Pre-Screened Freelance Developers & Designers",
          image: SvgPicture.asset(
            "assets/images/intro_screen_1.svg",
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "homeDelivery".tr,
          body: "orderAndRelax".tr,
          image: SvgPicture.asset(
            "assets/images/intro_screen_1.svg",
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "knowYourMedicines".tr,
          body: "readMedicineInfo".tr,
          image: SvgPicture.asset(
            "assets/images/intro_screen_1.svg",
          ),
          decoration: pageDecoration,
        ),
      ],
      overrideSkip: InkWell(
        onTap: () {
          //Get.offAll(() => const Home());
        },
        child: Row(
          children: [
            Text("Skip", style: Theme.of(context).textTheme.titleMedium),
            const Icon(
              Icons.navigate_next,
            )
          ],
        ),
      ),
      overrideNext: Container(),
      overrideDone: InkWell(
        onTap: () {
          //Get.offAll(() => const Home());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Next",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Icon(
              Icons.navigate_next,
            )
          ],
        ),
      ),
      showSkipButton: true,
    );
  }
}