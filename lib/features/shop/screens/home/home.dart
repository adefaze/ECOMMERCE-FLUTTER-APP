import 'package:ecommer_store/common/widgets/custom_shapes/container/circle_container.dart';
import 'package:ecommer_store/common/widgets/custom_shapes/custom_edges/curved_edges.dart';
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
            ClipPath(
              clipper: TCustomCurvedEdges(),
              child: Container(
                color: TAppColors.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -150,
                        right: -250,
                        child: TCirlcularContainer(
                            backgroundColor:
                                TAppColors.textWhite.withOpacity(0.1)),
                      ),
                      Positioned(
                        top: 100,
                        right: -300,
                        child: TCirlcularContainer(
                            backgroundColor:
                                TAppColors.textWhite.withOpacity(0.1)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
