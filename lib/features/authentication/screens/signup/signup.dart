import 'package:ecommer_store/common/widgets/form_divider.dart';
import 'package:ecommer_store/common/widgets/social_icons.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup_widgets.dart/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TAppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                TAppTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: TAppSizes.spaceBtwSections),

              // form
              const SignupForm(),
              const SizedBox(height: TAppSizes.spaceBtwSections),

              // divider
              FormDivider(dividerText: TAppTexts.orSignUpWith.capitalize!),

              const SizedBox(height: TAppSizes.spaceBtwItems),

              // footer
              const SocialIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
