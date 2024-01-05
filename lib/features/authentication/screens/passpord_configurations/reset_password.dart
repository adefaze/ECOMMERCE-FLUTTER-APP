import 'package:ecommer_store/utils/constants/image_strings.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TAppSizes.defaultSpace),
          child: Column(
            children: [
              // image
              Image(
                  image:
                      const AssetImage(TAppImages.deliveredEmailIllustration),
                  width: THelperFunctions.screenWidth() * 0.6),

              const SizedBox(height: TAppSizes.spaceBtwSections),

              // title
              Text(TAppTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),

              const SizedBox(height: TAppSizes.spaceBtwItems),

              // Description
              Text(TAppTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),

              const SizedBox(height: TAppSizes.spaceBtwSections),

              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(TAppTexts.done)),
              ),

              const SizedBox(height: TAppSizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TAppTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
