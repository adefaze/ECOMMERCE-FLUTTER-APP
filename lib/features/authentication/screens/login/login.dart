import 'package:ecommer_store/common/widgets/form_divider.dart';
import 'package:ecommer_store/common/widgets/social_icons.dart';
import 'package:ecommer_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommer_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:ecommer_store/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              LoginHeader(dark: dark),
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
