import 'package:ecommer_store/common/widgets/appbar/appbar.dart';
import 'package:ecommer_store/common/widgets/custom_shapes/container/primary_header_container_widget.dart';
import 'package:ecommer_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommer_store/utils/constants/colors.dart';
import 'package:ecommer_store/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderCointainer(
              child: Column(
                children: [
                  TAppbar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TAppTexts.homeAppbarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TAppColors.grey),
                        ),
                        Text(
                          TAppTexts.homeAppbarSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: Colors.white),
                        )
                      ],
                    ),
                    actions: [
                      TCartIconWidget(
                        iconColor: TAppColors.white,
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


