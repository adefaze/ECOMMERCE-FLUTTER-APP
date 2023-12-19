import 'package:ecommer_store/features/authentication/screens/onboarding/onboarding_view.dart';
import 'package:ecommer_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnboardingScreens(),
    );
  }
}


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightnessValue == Brightness.dark;
    return Scaffold(
      body: Container(
        color: isDarkMode
            ? Colors.black
            : Colors.white, // Set background color based on mode
        child: Center(
          child: Image.asset(
            isDarkMode ? AppImages.lightAppLogo : AppImages.darkAppLogo,
            fit: BoxFit.cover,
          ), // Set image based on mode
        ),
      ),
    );
  }
}
