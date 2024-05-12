import 'package:flutter/material.dart';
import 'dimensions.dart';

class Responsivesetup extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;

  const Responsivesetup({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileLayout;
        } else {
          return tabletLayout;
        }
      },
    );
  }
}
