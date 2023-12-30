import 'package:ecommer_store/features/authentication/screens/login/login.dart';
import 'package:ecommer_store/utils/constants/image_strings.dart';
import 'package:ecommer_store/utils/constants/sizes.dart';
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
              // title and subtitle

              // buttons
            ],
          ),
        ),
      ),
    );
  }
}
