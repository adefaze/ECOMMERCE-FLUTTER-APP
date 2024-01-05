import 'package:ecommer_store/common/styles/spacing_styles.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:ecommer_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyles.paddingWithAppbarHeights * 2,
        child: Column(
          children: [
            // image
            Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.6),

            const SizedBox(height: TAppSizes.spaceBtwSections),

            // title
            Text(title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),

            const SizedBox(height: TAppSizes.spaceBtwItems),

            // Description
            Text(subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),

            const SizedBox(height: TAppSizes.spaceBtwSections),

            // button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => onPressed,
                    child: const Text(TAppTexts.tContinue))),
          ],
        ),
      ),
    );
  }
}
