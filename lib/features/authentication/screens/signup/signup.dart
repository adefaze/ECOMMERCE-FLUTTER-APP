import 'package:ecommer_store/utils/constants/colors.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:ecommer_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TAppSizes.defaultSpace),
          child: Column(
            children: [
              // title
              Text(
                TAppTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: TAppSizes.spaceBtwSections),

              // form
              Form(
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
                        labelText: TAppTexts.email,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  const SizedBox(height: TAppSizes.spaceBtwInputFields),

                  // phone number
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: TAppTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call)),
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
                  Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Checkbox(value: true, onChanged: (value) {}),
                      ),
                      const SizedBox(width: TAppSizes.spaceBtwItems),
                      Flexible(
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: '${TAppTexts.iAgreeTo} ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                            text: '${TAppTexts.privacyPolicy} ',
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: dark
                                          ? TAppColors.white
                                          : TAppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TAppColors.white
                                          : TAppColors.primary,
                                    ),
                          ),
                          TextSpan(
                              text: '${TAppTexts.and} ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                            text: '${TAppTexts.termsOfUse} ',
                            style:
                                Theme.of(context).textTheme.bodyMedium!.apply(
                                      color: dark
                                          ? TAppColors.white
                                          : TAppColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark
                                          ? TAppColors.white
                                          : TAppColors.primary,
                                    ),
                          ),
                        ])),
                      )
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
