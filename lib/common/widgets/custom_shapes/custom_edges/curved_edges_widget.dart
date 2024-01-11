import 'package:ecommer_store/common/widgets/custom_shapes/custom_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class TCurvedWidget extends StatelessWidget {
  const TCurvedWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
