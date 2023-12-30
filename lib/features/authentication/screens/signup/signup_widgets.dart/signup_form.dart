import 'package:ecommer_store/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'terms_and_conditions.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              // first and last name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TAppTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: TAppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TAppTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: TAppSizes.spaceBtwInputFields),

          // username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TAppTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),

          const SizedBox(height: TAppSizes.spaceBtwInputFields),

          // email
          TextFormField(
            decoration: const InputDecoration(
                labelText: TAppTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: TAppSizes.spaceBtwInputFields),

          // phone number
          TextFormField(
            decoration: const InputDecoration(
                labelText: TAppTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: TAppSizes.spaceBtwInputFields),

          // password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TAppTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TAppSizes.spaceBtwInputFields),

          // Terms and condition checkbox
          const TermsAndCondition(),
          const SizedBox(height: TAppSizes.spaceBtwSections),

          // sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(TAppTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
