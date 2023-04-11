import 'package:flutter/material.dart';
import '../core/presentation/utils/responsive_layout.dart';
import 'presentation/landscape/alert_landscape.dart';
import 'presentation/portrait/alert_portrait.dart';


class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context,) {

    return WillPopScope(
      onWillPop: () async
      {
        return Future(() => true);
      },
      child: ResponsiveLayout(
        landscape: AlertLandscape(),
        portrait: const AlertPortrait(),
      ),
    );
  }
}
