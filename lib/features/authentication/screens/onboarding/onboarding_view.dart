import 'package:ecommer_store/utils/constants/image_strings.dart';

import 'package:ecommer_store/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            children: const [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
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
