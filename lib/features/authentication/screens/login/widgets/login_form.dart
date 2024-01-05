import 'package:ecommer_store/features/authentication/screens/passpord_configurations/forgot_password.dart';
import 'package:ecommer_store/features/authentication/screens/signup/signup.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: TAppSizes.spaceBtwSections),
        child: Column(
          children: [
            // email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TAppTexts.email,
              ),
            ),
            const SizedBox(height: TAppSizes.spaceBtwInputFields),
            // password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: TAppTexts.password,
              ),
            ),
            const SizedBox(height: TAppSizes.spaceBtwInputFields / 2),
            // Remember me & password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TAppTexts.rememberMe),
                  ],
                ),
                // Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgotPasswordScreen()),
                    child: const Text(TAppTexts.forgetPassword))
              ],
            ),
            const SizedBox(height: TAppSizes.spaceBtwSections),
            // sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(TAppTexts.signIn)),
            ),
            const SizedBox(height: TAppSizes.spaceBtwItems),
            // create account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => const SignupScreen());
                  },
                  child: const Text(TAppTexts.createAccount)),
            )
          ],
        ),
      ),
    );
  }
}
