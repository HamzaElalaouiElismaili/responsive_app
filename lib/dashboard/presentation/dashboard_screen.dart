import 'package:flutter/material.dart';
import '../../core/presentation/utils/responsive_layout.dart';
import 'landscape/dashboard_landscape.dart';
import 'portrait/dashboard_portrait.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context,) {

    return ResponsiveLayout(
      landscape: DashboardLandscape(),
      portrait: const DashboardPortrait(),
    );
  }
}
