

import 'package:ecommer_store/utils/constants/colors.dart';
import 'package:ecommer_store/utils/constants/image_strings.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TAppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon:  const Image(
                height: TAppSizes.iconMd,
                width: TAppSizes.iconMd,
                image: AssetImage(TAppImages.google),
              )),
        ),
        const SizedBox(width: TAppSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TAppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                height: TAppSizes.iconMd,
                width: TAppSizes.iconMd,
                image: AssetImage(TAppImages.facebook),
              )),
        ),
      ],
    );
  }
}