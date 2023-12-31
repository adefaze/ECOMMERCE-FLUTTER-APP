import 'package:ecommer_store/common/widgets/login_signup/form_divider.dart';
import 'package:ecommer_store/common/widgets/login_signup/social_icons.dart';
import 'package:ecommer_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommer_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppbarHeights,
          child: Column(
            children: [
              // Header
              const LoginHeader(),
              // const SizedBox(height: TAppSizes.spaceBtwSections),
              // Form
              const LoginForm(),

              //Divider
              FormDivider(
                dividerText: TAppTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TAppSizes.spaceBtwItems,
              ),
              // Footer
              const SocialIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
