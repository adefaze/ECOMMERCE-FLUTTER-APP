import 'package:ecommer_store/utils/constants/image_strings.dart';

import 'package:ecommer_store/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/onboarding_controller.dart';
import 'widgets/onboarding_cricle_button.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updateIndicatorIndex,
            children: const [
              OnBoardingPage(
                image: TAppImages.onBoardingImage1,
                title: TAppTexts.onBoardingTitle1,
                subTitle: TAppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TAppImages.onBoardingImage2,
                title: TAppTexts.onBoardingTitle2,
                subTitle: TAppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TAppImages.onBoardingImage3,
                title: TAppTexts.onBoardingTitle3,
                subTitle: TAppTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip button
          const OnBoardingSkip(),

          // Dot Navigation, SmoothPageNavigator
          const OnBoardingDotNavigation(),

          // Circle button
          const OnBoardingCirlcleButton()
        ],
      ),
    );
  }
}
