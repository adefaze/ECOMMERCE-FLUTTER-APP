
import 'package:ecommer_store/utils/constants/colors.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';
import 'package:ecommer_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
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
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TAppColors.white : TAppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? TAppColors.white : TAppColors.primary,
                  ),
            ),
            TextSpan(
                text: '${TAppTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text: '${TAppTexts.termsOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TAppColors.white : TAppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? TAppColors.white : TAppColors.primary,
                  ),
            ),
          ])),
        )
      ],
    );
  }
}