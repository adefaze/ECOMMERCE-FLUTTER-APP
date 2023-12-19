import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingCirlcleButton extends StatelessWidget {
  const OnBoardingCirlcleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          onPressed: () {},
          child: const Icon(Iconsax.arrow_right_3)),
    );
  }
}