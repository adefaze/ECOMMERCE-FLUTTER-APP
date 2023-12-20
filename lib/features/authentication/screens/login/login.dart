import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:ecommer_store/utils/helpers/helper_functions.dart';
import 'package:ecommer_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppbarHeights,
          child: Column(
            children: [
              // Header
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(dark
                        ? TAppImages.lightAppLogo
                        : TAppImages.darkAppLogo),
                    height: 150,
                  ),
                  Text(
                    TAppTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TAppSizes.sm),
                  Text(
                    TAppTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              // const SizedBox(height: TAppSizes.spaceBtwSections),
              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: TAppSizes.spaceBtwSections),
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
                              onPressed: () {},
                              child: const Text(TAppTexts.forgetPassword))
                        ],
                      ),
                      const SizedBox(height: TAppSizes.spaceBtwSections),
                      // sign in button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(TAppTexts.signIn)),
                      ),
                      const SizedBox(height: TAppSizes.spaceBtwItems),
                      // create account
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(TAppTexts.createAccount)),
                      )
                    ],
                  ),
                ),
              ),

              //Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? TAppColors.darkGrey : TAppColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    TAppTexts.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? TAppColors.darkGrey : TAppColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: TAppSizes.spaceBtwItems,
              ),
              // Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
