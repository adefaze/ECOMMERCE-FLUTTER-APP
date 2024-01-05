import 'package:ecommer_store/common/widgets/success_screen/success_screen.dart';
import 'package:ecommer_store/features/authentication/screens/login/login.dart';
import 'package:ecommer_store/utils/constants/image_strings.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:ecommer_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TAppSizes.defaultSpace),
          child: Column(
            children: [
              // image
              Image(
                image: const AssetImage(TAppImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TAppSizes.spaceBtwSections),

              // title and subtitle
              Text(
                TAppTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TAppSizes.spaceBtwItems),
              Text(
                "adefaze@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TAppSizes.spaceBtwItems),

              Text(
                TAppTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TAppSizes.spaceBtwSections),

              // buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(SuccessScreen(
                          image: TAppImages.staticSuccessIllustration,
                          title: TAppTexts.yourAccountCreatedTitle,
                          subtitle: TAppTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(const LoginScreen()),
                        )),
                    child: const Text(TAppTexts.confirmEmail)),
              ),
              const SizedBox(height: TAppSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: Text(TAppTexts.resendEmail,
                        style: Theme.of(context).textTheme.bodyMedium)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
