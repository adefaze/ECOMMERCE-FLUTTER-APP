import 'package:ecommer_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: TAppColors.primary,
              padding: const EdgeInsets.all(0),
            ),
          ],
        ),
      ),
    );
  }
}
