import 'package:ecommer_store/utils/constants/colors.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/device/device_utility.dart';
import 'package:ecommer_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Positioned(
        left: AppSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        child: SmoothPageIndicator(
          controller: PageController(),
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: isDark ? AppColors.white : AppColors.dark,
              dotHeight: 6),
        ));
  }
}
