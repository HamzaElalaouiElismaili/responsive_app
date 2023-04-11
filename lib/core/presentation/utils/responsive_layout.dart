import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget portrait;
  final Widget landscape;
  const ResponsiveLayout({
    super.key,
    required this.portrait,
    required this.landscape,
  });

  void _setPortrait() {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
  }

  void _setLandscape() {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.shortestSide <= 480) {
      _setPortrait();
      return portrait;
    } else {
      _setLandscape();
      return landscape;
    }
  }
}
