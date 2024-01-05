import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'reset_password.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TAppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headings
            Text(TAppTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TAppSizes.spaceBtwItems),
            Text(TAppTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),

            const SizedBox(height: TAppSizes.spaceBtwSections * 2),

            // textfield
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TAppTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),

            const SizedBox(height: TAppSizes.spaceBtwSections),

            //buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(()=> const ResetPasswordScreen()), child: const Text(TAppTexts.submit)),
            )
          ],
        ),
      ),
    );
  }
}
