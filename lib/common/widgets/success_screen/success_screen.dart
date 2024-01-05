import 'package:ecommer_store/common/styles/spacing_styles.dart';
import 'package:ecommer_store/features/authentication/screens/login/login.dart';
import 'package:ecommer_store/utils/constants/image_strings.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:ecommer_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyles.paddingWithAppbarHeights * 2,
        child: Column(
          children: [
            // image
            Image(
                image: const AssetImage(TAppImages.staticSuccessIllustration),
                width: THelperFunctions.screenWidth() * 0.6),

            const SizedBox(height: TAppSizes.spaceBtwSections),

            // title
            Text(TAppTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),

            const SizedBox(height: TAppSizes.spaceBtwItems),

            // Description
            Text(TAppTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),

            // button
            SizedBox(
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: const Text(TAppTexts.tContinue))),
          ],
        ),
      ),
    );
  }
}
